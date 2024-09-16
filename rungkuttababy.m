function[s,v,a]=rungkuttababy(t)
h=0.1; % step size
% intial condition,when 
 t=0
    v=0;
    s=0;
  %the function dvdt define elsewhere in another m-file
  FrameNumber = 50;
VideoObject = VideoWriter('rocket.avi');
open(VideoObject);
for t=0:h:t
   handlefig = figure();
  s_old=s;
    u=v;
    
    k_1 =dvdt(v,t,s);
    a=k_1;
     s=(s_old)+u*h+0.5*a*h^2;
    k_2 =dvdt(v+0.5*h,t+0.5*h*k_1,s);
    k_3 =dvdt((v+0.5*h),(t+0.5*h*k_2),s);
    k_4 =dvdt((v+h),(t+k_3*h),s);
    v = v + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
    
   
    
   % dv/dt equals the rockets acceleration
    a=k_1;
    Mr=totalmass(t);
Fg=Fgrav(s,Mr);
ro=densityofair(s,Mr,Fg,t);
Fd=dragforce(ro,v,t,s);
    angle=orbiterengineangle(t, v, ro, s);
   subplot(3,2,1)
  plot(t,theta,'.r-');hold on
  drawnow
  xlim([0 511])
  ylim([-0.1 0.5])
  xlabel('time(sec)')
  ylabel('theta of main engines(rads)')
   title('Angle of main engines at given time')
  Q=0.5*ro*v^2;
  subplot(3,2,2)
  plot(t,Q,'.r-');hold on
  drawnow
  xlim([0 120])
ylim([0 30000])
  xlabel('time(sec)')
 ylabel('Q external pressure on craft(Pa)')
 title('Q(pressure) vs.time')
  subplot(3,2,3)
  plot(t,s,'.r-');hold on
  drawnow
  xlim([0 511])
  ylim([0 7.8*10^5])
  xlabel('time(sec)')
  ylabel('Distance travelled(m)')
  title('distance vs. time')
  subplot(3,2,4)
  plot(t,v,'.r-');hold on
  drawnow
  xlim([0 511])
  ylim([0 5000])
  xlabel('time(sec)')
  ylabel('velocity(m/s)')
   title('velocity vs time')
  subplot(3,2,5)
  plot(t,Mr,'.r-');hold on
  drawnow
  
  xlabel('time(sec)')
  ylabel('Mass(kg)')
  title('rocket mass vs time')
  
  
  
  rocketvisual(t,s,angle);
  current_frame = getframe(handlefig);
writeVideo(VideoObject,current_frame);
close(handlefig)
end
close(VideoObject)
validate using a decent ODE integrator  
tspan = [0,100]; y0 = -0.5;
[tv, vt] = ode45(dvdt, tspan, y0);
plot(t,v,'o-')
hold on

Mr=totalmass(t);
Fg=Fgrav(s,Mr);
ro=densityofair(s,Mr,Fg,t);
Q=0.5*ro*v^2;

hold on
theta=orbiterengineangle(t, v, ro, s);

plot(t,theta,'or');hold on

