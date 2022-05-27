global.particleSystem01 = part_system_create();

#region walk particle 
global.walkParticle = part_type_create();
var walkPart =  global.walkParticle;
part_type_shape(walkPart,pt_shape_smoke)
part_type_size(walkPart,.01,.2,.0001,0)
part_type_color2(walkPart,c_dkgrey,c_white)
part_type_alpha2(walkPart,1,0)
part_type_life(walkPart,5,10)
#endregion

#region grass particle
global.grassParticle = part_type_create();
var grassPart = global.grassParticle;
part_type_shape(grassPart,pt_shape_line);
part_type_size(grassPart,.01,.01,.1,0);
part_type_color1(grassPart,c_green);
part_type_alpha2(grassPart,1,0);
part_type_direction(grassPart,180,360,2,10);
part_type_life(grassPart,5,10);

#endregion
