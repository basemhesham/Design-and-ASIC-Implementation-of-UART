### connect pg
connect_pg_net -automatic

### remove before create
remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -ring -stripe -lib_cell_pin_connect > /dev/null

set_pg_via_master_rule pgvia_2x3 -via_array_dimension {2 3}

################################################################################
# Build the main power mesh and ring.  
################################################################################

#define region for pg 
create_pg_region r -core

create_pg_mesh_pattern mesh \
	-layers { \
		{ {horizontal_layer: M7} {width: 0.5}   {spacing: interleaving} {pitch: 8} {offset: 1} } \
		{ {vertical_layer: M8}   {width: 0.5}   {spacing: interleaving} {pitch: 8} {offset: 1} } \
		} \
	-via_rule { {intersection: adjacent} {via_master : pgvia_2x3} }

set_pg_strategy s_mesh \
	-pg_regions {r} \
	-pattern   { {name: mesh} {nets:{VSS VDD}}} 


 compile_pg -strategies {s_mesh} 

################################################################################
# Build the standard cell rails
################################################################################

# rail pattern
create_pg_std_cell_conn_pattern -layers M1 P_std_cell_rail

set_pg_strategy S_std_cell_rail \
	-core \
	-pattern {{pattern: P_std_cell_rail}{nets: {VSS VDD}}} 

set_pg_strategy_via_rule S_via_stdcellrail \
        -via_rule {{intersection: adjacent}{via_master: default}}

compile_pg -strategies {S_std_cell_rail} -via_rule {S_via_stdcellrail}
