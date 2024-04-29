### connect pg
connect_pg_net -automatic

### remove before create
remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -ring -stripe -lib_cell_pin_connect > /dev/null

################################################################################
# Application options
################################################################################

#To enable the compile_pg, create_pg_strap and create_pg_vias commands to validate the DRC correctness of power straps and vias with respect to signal routes
set_app_options -name plan.pgroute.honor_signal_route_drc -value true

#  command merges overlapping shapes for via connection. By default, the tool does not merge the overlapping shapes
set_app_options -name plan.pgroute.merge_shapes_for_via_creation -value true  


connect_pg_net -net VDD [get_pins -physical_context *VDD]
connect_pg_net -net VSS [get_pins -physical_context *VSS]

################################################################################
# Build the main power mesh and ring.  
################################################################################

create_pg_ring_pattern ring_pattern -horizontal_layer @hlayer \
   -horizontal_width {@hwidth} -horizontal_spacing {@hspace} \
   -vertical_layer @vlayer -vertical_width {@vwidth} \
   -vertical_spacing {@vspace} -corner_bridge @cbridge \
   -parameters {hlayer hwidth hspace vlayer vwidth vspace cbridge}

# Set the ring strategy to apply the ring_pattern pattern to the core area and set the width and spacing parameters
set_pg_strategy ring_strat -core \
   -pattern {{name: ring_pattern} {nets: {VDD VSS}} 
   {offset: {1 1}} {parameters: {M9 1 0.4 M8 1 0.4 true}}} \
   -extension {{stop: design_boundary_and_generate_pin}}

# Create the ring in the design
compile_pg -strategies {ring_strat}

# Define a new via rule, VIA_3x3, for the power mesh
set_pg_via_master_rule VIA_3x3 -via_array_dimension {3 3}

# Create the power and ground mesh pattern
create_pg_mesh_pattern mesh_pattern -layers {
   {{vertical_layer: M8  } {width: 0.8} {spacing: interleaving} {pitch: 10}} \
   {{horizontal_layer: M9} {width: 0.8} {spacing: interleaving} {pitch: 10}}} \
  -via_rule {{{layers: M8} {layers: M9} {via_master: VIA_3x3}}}

# Set the mesh strategy to apply the mesh_pattern pattern to the core area. Extend the mesh to the outermost ring
set_pg_strategy mesh_strat -core -pattern {{pattern: mesh_pattern} {nets: {VDD VSS}}} -extension {{stop: outermost_ring}}

# Create the mesh in the design
compile_pg -strategies {mesh_strat}

################################################################################
# Build the standard cell rails
################################################################################
                                            
# Create a new 1x2 via
set_pg_via_master_rule via1x2 -via_array_dimension {1 2}

# Create the power and ground rail pattern
create_pg_std_cell_conn_pattern rail_pattern -layers {M1}

# Set the power and ground rail strategy to apply the rail_pattern pattern to the core area
set_pg_strategy rail_strat \
	-core \
	-pattern {{pattern: rail_pattern}{nets: {VSS VDD}}} 

# Define a via strategy to insert via1x2 vias between existing straps and the new power rails specified by rail_strat strategy on the M8 layer
set_pg_strategy_via_rule rail_rule -via_rule {
     {{{existing: strap} {layers: M8}} {strategies: rail_strat} {via_master: via1x2}}
     {{intersection: undefined} {via_master: nil}}}

# Insert the new rails
compile_pg -strategies rail_strat -via_rule rail_rule



