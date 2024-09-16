function[theta,err,n]=orbiterengineangle(t,v,ro,s)
% [V, err, count] = orbiterengineangle(theta) :
%
%input
%t=time in seconds from the launch of the craft
%Tend=The total thrist generate from the 3 main engines at sea level(Newtons)
%Tsrb=is the total thrust generated from the 2 SRBs at sea level (Newtons)
%COGpersec= the rate at which the COG moves in the positive x direction as
%fuel is burned (metres/sec)
%yperpd_Teng=The perpendicular dist of the engine thrust acting in the y direction to the COG
%xperpd_Teng=The perpendicular dist of the engine thrust acting in the x direction to the COG(m)
%perpd_Tsrb=The perpendicular dist of the SRBs thrust to the COG (m)
%Fd_tanksrb=drag force due to the exteranl tank and SRBs (N)
%Fd_orb=drag force due to the orbiter (N)
%outputs
%Theta=angle of the main engine relative to vertical
%err=modulus of function(f)using estimated value of Z
%n=number of iterations

%error check for inputs
    if   ~isreal(t) || ~isscalar (t) || (t)<0

    error('Input argument t must be scalar and real and positive')  
  
    elseif t>511
      error('flight of Rocket only measured until exteranl tank is jettisoned at 511 seconds')
  
    end

iteration_limit=500;  %maximum number of steps in newraph method
    
   
tolerance=10^-7;%modulus of function is error,tolerance is max permitted error
%constants througout all flight
Teng=5112748.41+((87000*0.4*9.81)*(t/511));
%+(87000*0.4*9.81)*(t/511);
%constants for multiple pghases of flight
Tsrb=23583608.86;%thrust in newtons

Fd_tanksrb=dragforceoftankandsrbs(ro,v,t,s);
Fd_orb=dragforceoforbiter(ro,v,t,s);
if t>=0 && t<30
 Tsrb =Tsrb;
  Teng=0.9*Teng ;
  perpd_Tsrb = 0.410937632;
  yperpd_Teng=11.5824;
  xperpd_Teng=8.1235;
  COGpersec=0.003149;
elseif t>=30 && t<62
    Tsrb =Tsrb;
  Teng=0.65*Teng;
  perpd_Tsrb = 0.5054;
  yperpd_Teng=11.5824;
  xperpd_Teng=8.02898;
  COGpersec=0.002922;
    
elseif t>=62 && t<125
    Tsrb =Tsrb;
  Teng=1.04*Teng ;
  perpd_Tsrb = 0.5989;
  yperpd_Teng=11.5824;
  xperpd_Teng=7.9355;
  COGpersec=0.009145;
  
elseif t>=125 && t<=511
     Tsrb =0;
  Teng=1.04*Teng ;
  perpd_Tsrb = 1.283;
  yperpd_Teng=11.5824;
  xperpd_Teng=7.2514;
  COGpersec=0.0151;
end

%initial estimate for theta
theta=0.523599;

for n=1:iteration_limit+1
        if n==iteration_limit+1
        error('iteration_limit reached and is not converging')
        break
        end
   
 
     
    f=(((Tsrb-Fd_tanksrb)*(perpd_Tsrb+COGpersec*t))+(Teng*sin(theta)*yperpd_Teng)-((Teng*cos(theta)-Fd_orb)*(xperpd_Teng-COGpersec*t)));

   if abs(f)<tolerance
        break
     end  
    
    %the first order direfential of f equals df
    df=(Teng*cos(theta)*(yperpd_Teng))+((Teng*sin(theta)-(Fd_orb))*(xperpd_Teng-(COGpersec*t)));

   
    theta=theta-f/df; %newton raphson
end
    err=abs(f);
end

