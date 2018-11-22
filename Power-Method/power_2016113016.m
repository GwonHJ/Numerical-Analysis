function [ eig_val, eig_vec ] = power_2016113016( A, es, maxit )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(A);
transA = transpose(A);
equal=isequal(A,transA)-1;
if m~=n, error('Matrix A must be square');
end
if equal, error('Matrix A must be symmentric');
end

%square와 symmentric을 만족하는 행렬인지 확인
%if A ~= transpose(A)를 이용하하여 symmentric인지 확인 불가 : 행렬은 비교하는 함수를 따로 사용해줘야함.

x = input('원하는 값을 입력하세요. (가장 큰 eigenvalue : 1, 가장 작은 eigenvalue : 2)');

u = ones(m,1);
ital = 0;
eig=1;

if x==1,
    while(1)
    B=A*u;
    old=eig;
    if max(B)~=max(abs(B)),
        eig=-max(abs(B));
    else
        eig=max(abs(B));
    end
	%B행렬 절댓값의 가장 큰 값이 음수일 경우 eigen value값을 절댓값에 음수를 취해서 가져와야한다.
	%판단 방법 : B행렬의 최댓값과 B행렬 절댓값의 최댓값이 같으면 양수인 경우 다르면 음수인 경우
    
    u=B/eig;
    ea = abs((eig-old)/eig)*100;
    
    ital = ital+1;
    if es>=ea || ital>=maxit, break 
    end
    if old==eig, break;
    end
    
    end
    eig_val = eig;
    eig_vec = u;
 
end

if x == 2,
    while(1)
    B=A^(-1)*u;
    old=eig;
    if max(B)~=max(abs(B)),
        eig=max(abs(B))*(-1);
    else
        eig=max(abs(B));
    end
    
    u=B/eig;
    ea = abs((eig-old)/eig)*100;
    
    ital = ital+1;
    if es>=ea || ital>=maxit, break 
    end
    if old==eig, break;
    end
    
    end
    eig_val = 1/eig;
    eig_vec = u;
 
end
 
   

end

