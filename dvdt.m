function[a]=dvdt(v,t,s)
%newtons second law giving rocket acceleration
 

%inputs
%s=distance travelled(height above sealevel)(metres)
%t=time into flight(sec)
%v=velcotiy of the craft(m/s)
%output
%a=acceleration of craft (m/s^2)

%version 1:Author=Eoin Gahan created:10/5/22


Mr=totalmass(t);  
    Fg=Fgrav(s,Mr);
    ro=densityofair(s,Mr,Fg,t);
    Fd=dragforce(ro,v,t,s);
    theta=orbiterengineangle(t,v,ro,s);
     totalthrust=thrust(theta,t);
  a=(totalthrust-(Fg+Fd))/Mr;
end