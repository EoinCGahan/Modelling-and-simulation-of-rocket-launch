function[]=rocketvisual(t,s,angle)
%FrameNumber = 50;
%VideoObject = VideoWriter('rocketvisual.avi');
%open(VideoObject);

%for t=0:h:t
    %handlefig = figure(); 
   
  
view(3)
axis('equal')





 x=4.5*sin(angle);
%visual
face_matrix_of_beam=[1 2 3 4;1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8; 5 6 7 8 ];
verticesbodybot=[4.5 0 0+s;9 0 0+s;9 9 0+s;4.5 9 0+s];
verticesbodytop=[4.5 0 26+s;9 0 26+s;9 9 26+s;4.5 9 26+s];
vertex_body1=[verticesbodybot;verticesbodytop];
verticesbodycabbot=[4.5 0 26+s;9 0 26+s;9 9 26+s;4.5 9 26+s];
verticesbodycabtop=[4.5 2.5 34+s;9 2.5 34+s;9 6.5 34+s;4.5 6.5 34+s];
vertex_cab=[verticesbodycabbot;verticesbodycabtop];


theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(20,1)];
 vertices_top = [4.5*cos(theta) 4.5*sin(theta) ones(20,1)];
 vertices_top20 = vertices_top + (ones(20,1)*[4.5 4.5 25+s]);
 vertices_bottom20= verticespoo + (ones(20,1)*[4.5 4.5 34+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 1 1],'LineStyle','none');
patch('Vertices',vertex_cab,'Faces',face_matrix_of_beam,'FaceColor',[0 0 0 ],'LineStyle','none');
 patch('Vertices',vertex_body1,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');

theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [4.5*cos(theta) 4.5*sin(theta) zeros(20,1)];
 vertices_top = [4.5*cos(theta) 4.5*sin(theta) ones(20,1)];
 vertices_top10 = vertices_top + (ones(20,1)*[4.5 4.5 -1+s]);
 vertices_bottom10= verticespoo + (ones(20,1)*[4.5 4.5 26+s]);
 vertex_matrix_link10 = [vertices_bottom10; vertices_top10];
 face_matrix_link10 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link10, 'Faces',face_matrix_link10, 'FaceColor',[1 1 1],'LineStyle','none');
patch('Vertices',vertex_cab,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');
 patch('Vertices',vertex_body1,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');

 verticeswing1bot=[9 0 24+s;9 -2 13+s;9 -11 5.5+s;9 0 5.5+s];
verticeswing1top=[8 0 24+s;8 -2 13+s;8 -11 5.5+s;8 0 5.5+s];
vertex_body2=[verticeswing1bot;verticeswing1top];
patch('Vertices',vertex_body2,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');
 
 verticeswingbot=[9 0 5.5+s;9 -11 5.5+s;9 -11.5 1.5+s;9 0 0+s];
verticeswingtop=[8 0 5.5+s;8 -11 5.5+s;8 -11.5 1.5+s;8 0 0+s];
vertex_body87=[verticeswingbot;verticeswingtop];
patch('Vertices',vertex_body87,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');





verticeswing1bot=[9 9 24+s;9 11 13+s;9 21 5.5+s;9 9 5.5+s];
verticeswing1top=[8 9 24+s;8 11 13+s;8 21 5.5+s;8 9 5.5+s];
vertex_body3=[verticeswing1bot;verticeswing1top];
patch('Vertices',vertex_body3,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1],'LineStyle','none');

 verticeswingbotleft=[9 9 5.5+s;9 21 5.5+s;9 21.5 1.5+s;9 9 0+s];
verticeswingtopleft=[8 9 5.5+s;8 21 5.5+s;8 21.5 1.5+s;8 9 0+s];
vertex_body97=[verticeswingbotleft;verticeswingtopleft];
patch('Vertices',vertex_body97,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');





 verticesfinbot=[0 4 0+s;0 4 10+s;0 5 10+s;0 5 0+s];
verticesfintop=[-8 4 -3+s;-8 4 0+s;-8 5 0+s;-8 5 -3+s];
vertex_body5=[verticesfinbot;verticesfintop];
patch('Vertices',vertex_body5,'Faces',face_matrix_of_beam,'FaceColor',[1 1 1 ],'LineStyle','none');
%external tank
if t <=125
 %srbs

theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top2 = verticespoo2 + (ones(20,1)*[15 -4 35+s]);
 vertices_bottom2= verticespoo2 + (ones(20,1)*[15 -4 -5+s]);
 vertex_matrix_link2 = [vertices_bottom2; vertices_top2];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
 
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [3.2*cos(theta) 3.2*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top2 = vertices_top2 + (ones(20,1)*[15 -4 -7+s]);
 vertices_bottom2= verticespoo2 + (ones(20,1)*[15 -4 -7.5+s]);
 vertex_matrix_link2 = [vertices_bottom2; vertices_top2];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none');
 
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top69 = verticespoo2 + (ones(20,1)*[15 13 35+s]);
 vertices_bottom69= verticespoo2 + (ones(20,1)*[15 13 -5+s]);
 vertex_matrix_link2 = [vertices_bottom69; vertices_top69];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
 
 
 
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo52 = [3.2*cos(theta) 3.2*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top52 = vertices_top2 + (ones(20,1)*[15 13 -7+s]);
 vertices_bottom52= verticespoo52 + (ones(20,1)*[15 13 -7.5+s]);
 vertex_matrix_link52 = [vertices_bottom52; vertices_top52];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link52, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none');
%srbcones
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [0.1*cos(theta) 0.1*sin(theta) 0.1*ones(20,1)];
 vertices_top6 = vertices_top2 + (ones(20,1)*[15 -4 41+s]);
 vertices_bottom6= verticespoo2 + (ones(20,1)*[15 -4 35+s]);
 vertex_matrix_link6 = [vertices_bottom6; vertices_top6];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link6, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
%number2
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [0.1*cos(theta) 0.1*sin(theta) 0.1*ones(20,1)];
 vertices_top7 = vertices_top2 + (ones(20,1)*[15 13 41+s]);
 vertices_bottom7= verticespoo2 + (ones(20,1)*[15 13 35+s]);
 vertex_matrix_link7 = [vertices_bottom7; vertices_top7];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link7, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
%fuel arrows of thrust
theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [1*cos(theta) 1*sin(theta) zeros(8,1)];
 vertices_top = [1*cos(theta) 1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[15 -4 -5+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[15 -4 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 
 
 theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [1*cos(theta) 1*sin(theta) zeros(8,1)];
 vertices_top = [1*cos(theta) 1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[15 13 -5+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[15 13 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');

 theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[15 13 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[15 13 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');

 
  theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[15 -4 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[15 -4 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');

theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[15 -4 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[15 -4 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
     
end
if 125<t && t<140
    theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo52 = [3.2*cos(theta) 3.2*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top52 = vertices_top2 + (ones(20,1)*[15 13+1.5*(t-125) -7+s]);
 vertices_bottom52= verticespoo52 + (ones(20,1)*[15 13+1.5*(t-125) -7.5+s]);
 vertex_matrix_link52 = [vertices_bottom52; vertices_top52];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link52, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none');
    
  theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [3.2*cos(theta) 3.2*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top2 = vertices_top2 + (ones(20,1)*[15 -4-1.5*(t-125) -7+s]);
 vertices_bottom2= verticespoo2 + (ones(20,1)*[15 -4-1.5*(t-125) -7.5+s]);
 vertex_matrix_link2 = [vertices_bottom2; vertices_top2];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none');
 
    
    
    
    theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [0.1*cos(theta) 0.1*sin(theta) 0.1*ones(20,1)];
 vertices_top7 = vertices_top2 + (ones(20,1)*[15 13+1.5*(t-125) 40+s]);
 vertices_bottom7= verticespoo2 + (ones(20,1)*[15 13+1.5*(t-125) 35+s]);
 vertex_matrix_link7 = [vertices_bottom7; vertices_top7];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link7, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
    theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top3 = verticespoo2 + (ones(20,1)*[15 13+1.5*(t-125) 35+s]);
 vertices_bottom3= verticespoo2 + (ones(20,1)*[15 13+1.5*(t-125) -5+s]);
 vertex_matrix_link3 = [vertices_bottom3; vertices_top3];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link3, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
    theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.5*cos(theta) 2.5*sin(theta) 2.5*ones(20,1)];
 vertices_top2 = verticespoo2 + (ones(20,1)*[15 -4-1.5*(t-125) 35+s]);
 vertices_bottom2= verticespoo2 + (ones(20,1)*[15 -4-1.5*(t-125) -5+s]);
 vertex_matrix_link2 = [vertices_bottom2; vertices_top2];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
 

%srbcones
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.5*cos(theta) 2.5*sin(theta) zeros(20,1)];
 vertices_top2 = [0.1*cos(theta) 0.1*sin(theta) 0.1*ones(20,1)];
 vertices_top6 = vertices_top2 + (ones(20,1)*[15 -4-1.5*(t-125) 40+s]);
 vertices_bottom6= verticespoo2 + (ones(20,1)*[15 -4-1.5*(t-125) 35+s]);
 vertex_matrix_link6 = [vertices_bottom6; vertices_top6];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link6, 'Faces',face_matrix_link2, 'FaceColor',[1 1 1],'LineStyle','none','FaceAlpha','0.45');
 

end
%engine cone
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [1.5*cos(theta) 1.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.2*cos(theta) 2.2*sin(theta) 2.2*ones(20,1)];
 vertices_top4 = verticespoo2 + (ones(20,1)*[2 4.5 0+s]);
 vertices_bottom4= vertices_top2 + (ones(20,1)*[2 4.5 -5+s]);
 vertex_matrix_link4 = [vertices_bottom4; vertices_top4];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link4, 'Faces',face_matrix_link2, 'FaceColor',[0.1 0.1 0.1],'LineStyle','none');
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';

 
 
 %arrows from engine
 theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [1*cos(theta) 1*sin(theta) zeros(8,1)];
 vertices_top = [1*cos(theta) 1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[2 4.5 -4+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[2-x 4.5 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 %cones for thrust
theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[2-1.3*x 4.5 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[2-x 4.5 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 
 
 %number 2
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [1.5*cos(theta) 1.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.2*cos(theta) 2.2*sin(theta) 2.2*ones(20,1)];
 vertices_top4 = verticespoo2 + (ones(20,1)*[6 7 0+s]);
 vertices_bottom4= vertices_top2 + (ones(20,1)*[6 7 -5+s]);
 vertex_matrix_link4 = [vertices_bottom4; vertices_top4];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link4, 'Faces',face_matrix_link2, 'FaceColor',[0.1 0.1 0.1],'LineStyle','none');
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';

 
 
 %arrows from engine
 theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [1*cos(theta) 1*sin(theta) zeros(8,1)];
 vertices_top = [1*cos(theta) 1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[6 7 -4+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[6-x 7 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 %cones for thrust
theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[6-1.3*x 7 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[6-x 7 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 
 %number 3
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [1.5*cos(theta) 1.5*sin(theta) zeros(20,1)];
 vertices_top2 = [2.2*cos(theta) 2.2*sin(theta) 2.2*ones(20,1)];
 vertices_top4 = verticespoo2 + (ones(20,1)*[6 2 0+s]);
 vertices_bottom4= vertices_top2 + (ones(20,1)*[6 2 -5+s]);
 vertex_matrix_link4 = [vertices_bottom4; vertices_top4];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link4, 'Faces',face_matrix_link2, 'FaceColor',[0.1 0.1 0.1],'LineStyle','none');
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';

 
 
 %arrows from engine
 theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [1*cos(theta) 1*sin(theta) zeros(8,1)];
 vertices_top = [1*cos(theta) 1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[6 2 -4+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[6-x 2 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 %cones for thrust
theta = [0:2*pi/8:(2*pi)-(2*pi/8)]';
 verticespoo = [2*cos(theta) 2*sin(theta) zeros(8,1)];
 vertices_top = [0.1*cos(theta) 0.1*sin(theta) ones(8,1)];
 vertices_top20 = vertices_top + (ones(8,1)*[6-1.3*x 2 -20+s]);
 vertices_bottom20= verticespoo + (ones(8,1)*[6-x 2 -15+s]);
 vertex_matrix_link20 = [vertices_bottom20; vertices_top20];
 face_matrix_link20 = [[1:8];[1:8]' [[2:8] 1]' [(8+[2:8]) 9]' ((8+[1:8])')*ones(1,8-3);8+[1:8]];
 patch('Vertices',vertex_matrix_link20, 'Faces',face_matrix_link20, 'FaceColor',[1 0 0],'LineStyle','none');
 

%fueltankleveldraining
if t<=125
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.4*cos(theta) 2.4*sin(theta) zeros(20,1)];
 vertices_top2 = [2.4*cos(theta) 2.4*sin(theta) 2.4*ones(20,1)];
 vertices_top2 = verticespoo2 + (ones(20,1)*[15 -4 (s+35)-(40/125)*t]);
 vertices_bottom2= verticespoo2 + (ones(20,1)*[15 -4 -5+s]);
 vertex_matrix_link2 = [vertices_bottom2; vertices_top2];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link2, 'Faces',face_matrix_link2, 'FaceColor',[0.4 0.3 1],'LineStyle','none');
 
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [2.4*cos(theta) 2.4*sin(theta) zeros(20,1)];
 vertices_top2 = [2.4*cos(theta) 2.4*sin(theta) 2.5*ones(20,1)];
 vertices_top3 = verticespoo2 + (ones(20,1)*[15 13 (35+s)-(40/125)*t]);
 vertices_bottom3= verticespoo2 + (ones(20,1)*[15 13 -5+s]);
 vertex_matrix_link3 = [vertices_bottom3; vertices_top3];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link3, 'Faces',face_matrix_link2, 'FaceColor',[.4 .3 1],'LineStyle','none');
end
if t<=511

 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [6.1*cos(theta) 6.1*sin(theta) zeros(20,1)];
 vertices_top2 = [5*cos(theta) 5*sin(theta) 5*ones(20,1)];
 vertices_top14 = vertices_top2 + (ones(20,1)*[15 4.5 38+s]);
 vertices_bottom14= verticespoo2 + (ones(20,1)*[15 4.5 36+s]);
 vertex_matrix_link14 = [vertices_bottom14; vertices_top14];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link14, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [6.1*cos(theta) 6.1*sin(theta) zeros(20,1)];
 vertices_top = [6.1*cos(theta) 6.1*sin(theta) 6.1*ones(20,1)];
 vertices_top = verticespoo + (ones(20,1)*[15 4.5 36+s]);
 vertices_bottom= verticespoo + (ones(20,1)*[15 4.5 4+s]);
 vertex_matrix_link1 = [vertices_bottom; vertices_top];
 face_matrix_link1 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link1, 'Faces',face_matrix_link1, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');
 verticespoo2 = [5*cos(theta) 5*sin(theta) zeros(20,1)];
 vertices_top2 = [3*cos(theta) 3*sin(theta) 3*ones(20,1)];
 vertices_top5 = vertices_top2 + (ones(20,1)*[15 4.5 46+s]);
 vertices_bottom5= verticespoo2 + (ones(20,1)*[15 4.5 43+s]);
 vertex_matrix_link5 = [vertices_bottom5; vertices_top5];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link5, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');

 verticespoo19 = [3*cos(theta) 3*sin(theta) zeros(20,1)];
 vertices_top19 = [.1*cos(theta) .1*sin(theta) .1*ones(20,1)];
 vertices_top19 = vertices_top19 + (ones(20,1)*[15 4.5 54+s]);
 vertices_bottom19= verticespoo19 + (ones(20,1)*[15 4.5 49+s]);
 vertex_matrix_link19 = [vertices_bottom19; vertices_top19];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link19, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.35');
 
 %fueldraining main tank
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [5.5*cos(theta) 5.5*sin(theta) zeros(20,1)];
 vertices_top = [5.5*cos(theta) 5.5*sin(theta) 5.5*ones(20,1)];
 vertices_top = verticespoo + (ones(20,1)*[15 4.5 (36+s)-(31/520)*t]);
 vertices_bottom= verticespoo + (ones(20,1)*[15 4.5 5+s]);
 vertex_matrix_link1 = [vertices_bottom; vertices_top];
 face_matrix_link1 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link1, 'Faces',face_matrix_link1, 'FaceColor',[0 1 0],'LineStyle','none');

 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [5.2*cos(theta) 5.2*sin(theta) zeros(20,1)];
 vertices_top = [3.7*cos(theta) 3.7*sin(theta) ones(20,1)];
 vertices_top53 = vertices_top + (ones(20,1)*[15 4.5 (44.5+s)-(7.5/520)*t]);
 vertices_bottom53= verticespoo + (ones(20,1)*[15 4.5 (37+s)]);
 vertex_matrix_link1 = [vertices_bottom53; vertices_top53];
 face_matrix_link1 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link1, 'Faces',face_matrix_link1, 'FaceColor',[1 0 0],'LineStyle','none');

elseif 511<t && t<520

 
theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo2 = [6.1*cos(theta) 6.1*sin(theta) zeros(20,1)];
 vertices_top2 = [5*cos(theta) 5*sin(theta) 5*ones(20,1)];
 vertices_top14 = vertices_top2 + (ones(20,1)*[15+1.5*(t-511) 4.5 38+s]);
 vertices_bottom14= verticespoo2 + (ones(20,1)*[15+1.5*(t-511) 4.5 36+s]);
 vertex_matrix_link14 = [vertices_bottom14; vertices_top14];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link14, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');
 theta = [0:2*pi/20:(2*pi)-(2*pi/20)]';
 verticespoo = [6.1*cos(theta) 6.1*sin(theta) zeros(20,1)];
 vertices_top = [6.1*cos(theta) 6.1*sin(theta) 6.1*ones(20,1)];
 vertices_top = verticespoo + (ones(20,1)*[15+1.5*(t-511) 4.5 36+s]);
 vertices_bottom= verticespoo + (ones(20,1)*[15+1.5*(t-511) 4.5 4+s]);
 vertex_matrix_link1 = [vertices_bottom; vertices_top];
 face_matrix_link1 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link1, 'Faces',face_matrix_link1, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');
 verticespoo2 = [5*cos(theta) 5*sin(theta) zeros(20,1)];
 vertices_top2 = [3*cos(theta) 3*sin(theta) 3*ones(20,1)];
 vertices_top5 = vertices_top2 + (ones(20,1)*[15+1.5*(t-511) 4.5 46+s]);
 vertices_bottom5= verticespoo2 + (ones(20,1)*[15+1.5*(t-511) 4.5 43+s]);
 vertex_matrix_link5 = [vertices_bottom5; vertices_top5];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link5, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');

 verticespoo19 = [3*cos(theta) 3*sin(theta) zeros(20,1)];
 vertices_top19 = [.1*cos(theta) .1*sin(theta) .1*ones(20,1)];
 vertices_top19 = vertices_top19 + (ones(20,1)*[15+1.5*(t-511) 4.5 54+s]);
 vertices_bottom19= verticespoo19 + (ones(20,1)*[15+1.5*(t-511) 4.5 49+s]);
 vertex_matrix_link19 = [vertices_bottom19; vertices_top19];
 face_matrix_link2 = [[1:20];[1:20]' [[2:20] 1]' [(20+[2:20]) 9]' ((20+[1:20])')*ones(1,20-3);20+[1:20]];
 patch('Vertices',vertex_matrix_link19, 'Faces',face_matrix_link2, 'FaceColor',[0.7 0.3 0.1],'LineStyle','none','FaceAlpha','0.45');
 
 
end 
 


view(3)
camlight('headlight')
%light

%light('position',[-50 -50 50])
set(gca,'Color',[.5-(0.49/520)*t .8-(0.79/520)*t .9-(0.6/520*t)])
view(3)
axis on
grid on
xlim([-15 25])
ylim([-30 30])
text(35,-20,s-10,sprintf('Time = %.2f s',t),'Color',[0 0 0]); 

%current_frame = getframe(handlefig);
%writeVideo(VideoObject,current_frame);
%close(handlefig)
end

%close(VideoObject)
