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

%square�� symmentric�� �����ϴ� ������� Ȯ��
%if A ~= transpose(A)�� �̿����Ͽ� symmentric���� Ȯ�� �Ұ� : ����� ���ϴ� �Լ��� ���� ����������.

x = input('���ϴ� ���� �Է��ϼ���. (���� ū eigenvalue : 1, ���� ���� eigenvalue : 2)');

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
	%B��� ������ ���� ū ���� ������ ��� eigen value���� ���񰪿� ������ ���ؼ� �����;��Ѵ�.
	%�Ǵ� ��� : B����� �ִ񰪰� B��� ������ �ִ��� ������ ����� ��� �ٸ��� ������ ���
    
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

