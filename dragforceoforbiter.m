function[Fd_orb]=dragforceoforbiter(ro,v,t,s)
%Find the drag force at any point
%constants
Rsrb=1.4;
Rexttank=4.2;
Rorb=2;

if s>=0 && s< 10100
    c = (76311.111-s)/224.444;


elseif s >= 10100 && s<20000
    c=295;


elseif s>=20000 && s<32000
    c=(s+422500)/1500;

elseif s>=32000 && s<47000
    c=(s+136333.3468)/555.5556;
elseif s>47000
    c=0;
end
mach=v/c;

if mach < 0.8
    Cd1=0.25;
    Cd2=0.75;
elseif mach>=0.8 && mach<=1
    Cd1=0.25+(1.05/0.2)*(mach-0.8);
    Cd2=0.75+(1.65/0.2)*(mach-0.8);
elseif mach>=1 && mach<=2
    Cd1=1.3-(0.7)*(mach-1);
    Cd2=2.5-(1.1)*(mach-1);
    
elseif mach>2
    Cd1=0.4;
    Cd2=1.4;
end       
    
if t>=0 && t<125
    A1=pi*((2*Rsrb)+Rorb)^2;
    A2=pi*(Rexttank)^2;
elseif t>=125 && t<511  
         A1=pi*(Rorb)^2;
    A2=pi*(Rexttank)^2;
    
end
Fd_orb=Cd2*0.5*ro*(v^2)*pi*(Rorb^2);
Fd_tanksrb=Cd1*0.5*ro*(v^2)*pi*(Rexttank^2+Rsrb^2);
Fd=Fd_orb+Fd_tanksrb;
end