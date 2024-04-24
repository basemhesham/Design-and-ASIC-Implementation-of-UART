set CTS_NDR_MIN_ROUTING_LAYER	"M4"
set CTS_NDR_MAX_ROUTING_LAYER	"M5"
set CTS_LEAF_NDR_MIN_ROUTING_LAYER	"M1"
set CTS_LEAF_NDR_MAX_ROUTING_LAYER	"M5"
set CTS_NDR_RULE_NAME 		"cts_w2_s2_vlg"
set CTS_LEAF_NDR_RULE_NAME	"cts_w1_s2"


	create_routing_rule $CTS_NDR_RULE_NAME \
		-default_reference_rule \
		-widths { M1 0.1 M2 0.11 M3 0.11 M4 0.11 M5 0.11 } \
		-spacings { M2 0.16 M3 0.45 M4 0.45 M5 1.1 } \
		-spacing_length_thresholds {M2 3.0 M3 3.0 M4 4.0 M5 4.0} \
		-taper_distance 0.4 \
		-driver_taper_distance 0.4 \
		-cuts { \
			{ VIA1 {V1LG 1} } \
			{ VIA2 {V2LG 1} } \
			{ VIA3 {V3LG 1} } \
			{ VIA4 {V4LG 1} } \
			{ VIA5 {V5LG 1} } \
		}

	set_clock_routing_rules -rules $CTS_NDR_RULE_NAME \
		-min_routing_layer $CTS_NDR_MIN_ROUTING_LAYER \
		-max_routing_layer $CTS_NDR_MAX_ROUTING_LAYER




	create_routing_rule $CTS_LEAF_NDR_RULE_NAME \
		-default_reference_rule \
		-spacings { M2 0.16 M3 0.45 M4 0.45 M5 1.1 }

	set_clock_routing_rules -net_type sink -rules $CTS_LEAF_NDR_RULE_NAME \
		-min_routing_layer $CTS_LEAF_NDR_MIN_ROUTING_LAYER \
		-max_routing_layer $CTS_LEAF_NDR_MAX_ROUTING_LAYER

