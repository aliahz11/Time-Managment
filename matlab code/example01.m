%ترکیب درصد برج‌های تقطیر
clc
clear
%A :Coeff MATRIX
A=[0.07 0.18 0.15 0.24; 0.03 0.25 0.1 0.65; 0.55 0.41 0.55 0.9; 0.35 0.16 0.2 0.02];
%B :Know value
B=80*[0.15;0.25;0.4;0.2];
r1=rank(A);
r2=rank([A B]);
[m,n]=size(A);
if (r1==r2)&&(r1==n)
    if det(A)>(10e-4)
        X=inv(A)*B;
    else 
        X=pinv(A)*B;
    end
    D2=X(1,1);
    B2=X(2,1);
    D3=X(3,1);
    B3=X(4,1);
    fprintf('The Outlet Flow Rate in (kmol/min) : D2=%g ,B2=%g, D3=%g, B3=%g \n' , D2,B2,D3,B3)
    D1=D2+B2;
    B1=D3+B3;
else
    fprintf('The Solution is not unique or there is no solution!!')
end

    
 

