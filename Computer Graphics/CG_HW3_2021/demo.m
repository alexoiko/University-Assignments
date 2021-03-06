clear;
load('hw3.mat');

%% Gouraud shader
shader = 1;

%% Ambient
Ka = ka;
Kd = 0*kd;
Ks = 0*ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);
lights = PointLight(point_light_pos', point_light_intensity);
%% render_object (gouraud)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');
figure(1);
imshow(Y);
imwrite(Y, 'gouraud_ambient.jpg');

%% Difussion 
Ka = 0*ka;
Kd = kd;
Ks = 0*ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);


%% render_object (gouraud)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(2);
imshow(Y);
imwrite(Y, 'gouraud_diffusion.jpg');

%% Specular 
Ka = 0*ka;
Kd = 0*kd;
Ks = ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);


%% render_object (gouraud)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(3);
imshow(Y);
imwrite(Y, 'gouraud_specular.jpg');

%% All together 
Ka = ka;
Kd = kd;
Ks = ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);
%% render_object (gouraud)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(4);
imshow(Y);
imwrite(Y, 'gouraud_all.jpg');

%% Phong shader
shader = 2;

%% Ambient
Ka = ka;
Kd = 0*kd;
Ks = 0*ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);


%% render_object (phong)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');
figure(5);
imshow(Y);
imwrite(Y, 'phong_ambient.jpg');

%% Difussion 
Ka = 0*ka;
Kd = kd;
Ks = 0*ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);
%% render_object (phong)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(6);
imshow(Y);
imwrite(Y, 'phong_diffusion.jpg');

%% Specular 
Ka = 0*ka;
Kd = 0*kd;
Ks = ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);
%% render_object (phong)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(7);
imshow(Y);
imwrite(Y, 'phong_specular.jpg');

%% All together 
Ka = ka;
Kd = kd;
Ks = ks;
mat = PhongMaterial(Ka, Kd, Ks, n_phong);


%% render_object (phong)
Y = render_object(shader, focal, eye, lookat, up, bg_color, M, N, H, W, verts, vert_colors', face_indices', mat, lights, Ia');

figure(8);
imshow(Y);
imwrite(Y, 'phong_all.jpg');
