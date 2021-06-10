clc
clear

disp('METODE ELIMINASI GAUSS - JORDAN');
disp(' ');
disp('Persamaan 1 = (+1)x1 (-1)x2 (+3) x3 (-2)x4 = 1  ')
disp('Persamaan 2 = (-2)x1 (+4)x2 (-3) x3 (+1)x4 = 0.5')
disp('Persamaan 3 = (+3)x1 (-1)x2 (+10)x3 (-4)x4 = 2.9')
disp('Persamaan 4 = (+4)x1 (-3)x2 (+8) x3 (-2)x4 = 0.6')
disp(' ')
t=4; %jumlah persamaan

%nilai koefisien dan hasil
p1=[1 -1 3 -2 1];
p2=[-2 4 -3 1 0.5];
p3=[3 -1 10 -4 2.9];
p4=[4 -3 8 -2 0.6];

%matrik
A=[p1;p2;p3;p4];
disp(A)

disp(' ')

for n=2:t;
    A(n,:)=((-(A(n,1)/A(1,1)))*A(1,:))+A(n,:);
end

for n=3:t;
    A(n,:)=((-(A(n,2)/A(2,2)))*A(2,:))+A(n,:);
end

A(t,:)=((-(A(t,3)/A(3,3)))*A(3,:))+A(t,:);

A(1,:)=((-(A(1,2)/A(2,2)))*A(2,:))+A(1,:);

for n=1:2;
    A(n,:)=((-(A(n,3)/A(3,3)))*A(3,:))+A(n,:);
end

for n=1:3;
    A(n,:)=((-(A(n,t)/A(t,t)))*A(t,:))+A(n,:);
end

disp('Nilai Matriks A (setelah eliminasi)')
disp(' ')
disp(A)

for a=1:t
    A(a,:)=(1./A(a,a)).*A(a,:);
end

disp('Nilai Matriks A (setelah menjadi Matriks identitas)')
disp(' ')
disp(A)
disp(' ')
disp('Maka : ')
disp(['Nilai x1 = ',num2str(A(1,5))])
disp(['Nilai x2 = ',num2str(A(2,5))])
disp(['Nilai x3 = ',num2str(A(3,5))])
disp(['Nilai x4 = ',num2str(A(4,5))])