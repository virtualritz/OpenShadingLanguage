rm *.tif *.oso

# float - float includes masking
oslc test_u_float_sub_u_float.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_u_float_sub_u_float.tif test_u_float_sub_u_float
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_u_float_sub_u_float.tif test_u_float_sub_u_float
idiff sout_u_float_sub_u_float.tif bout_u_float_sub_u_float.tif

oslc test_u_float_sub_v_float.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_u_float_sub_v_float.tif test_u_float_sub_v_float
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_u_float_sub_v_float.tif test_u_float_sub_v_float
idiff sout_u_float_sub_v_float.tif bout_u_float_sub_v_float.tif

oslc test_v_float_sub_u_float.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_v_float_sub_u_float.tif test_v_float_sub_u_float
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_float_sub_u_float.tif test_v_float_sub_u_float
idiff sout_v_float_sub_u_float.tif bout_v_float_sub_u_float.tif

oslc test_v_float_sub_v_float.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_v_float_sub_v_float.tif test_v_float_sub_v_float
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_float_sub_v_float.tif test_v_float_sub_v_float
idiff sout_v_float_sub_v_float.tif bout_v_float_sub_v_float.tif



# Derivs includes masking
oslc test_v_dfloat_sub_v_dfloat.osl
testshade --vary_udxdy --vary_udxdy -t 1 -g 64 64 -od uint8 -o Cout sout_v_dfloat_sub_v_dfloat.tif test_v_dfloat_sub_v_dfloat
testshade --vary_udxdy --vary_udxdy -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_dfloat_sub_v_dfloat.tif test_v_dfloat_sub_v_dfloat
idiff sout_v_dfloat_sub_v_dfloat.tif bout_v_dfloat_sub_v_dfloat.tif

