//Aim :To obtain the solution of Simple Harmonic Oscillator
//date : 02/12/21
clc
clf
//d2y/dx2+w2y=0
//w=2*%pi*f
//f=1 Hertz
function dy=f(x, y)
    dy(1)=y(2)
    dy(2)=-(4*%pi*%pi)*y(1)
endfunction

x0=0
y0=[1;1]
x=0:0.1:30
n=length(x)
//y=zeros(2,n)
y=ode(y0,x0,x,f)
plot(x,y(1,:))
plot(SHO.time,SHO.values,'*k')
xlabel('Independent Variable x ->')
ylabel('Dependent Variable y ->')
legend('Using ODE','using Xcos')
title('Solution of Simple Harmonic Oscillator')
