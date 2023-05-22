function rotation_matrix = PQW2ECI(arg_prg,inc_angle,RAAN)
R_RAAN=[cos(RAAN) sin(RAAN) 0; -sin(RAAN) cos(RAAN) 0; 0 0 1];
R_inc_angle=[1 0 0; 0 cos(inc_angle) sin(inc_angle); 0 -sin(inc_angle) cos(inc_angle)];
R_arg_prg=[cos(arg_prg) sin(arg_prg) 0; -sin(arg_prg) cos(arg_prg) 0; 1 0 0];
R=R_RAAN*R_inc_angle*R_arg_prg;
rotation_matrix=transpose(R);
end