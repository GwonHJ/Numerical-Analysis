

# power_2016113016.m

power method로 대칭 행렬의 가장 큰 eigenvalue와 가장 작은 eigenvalue 구하고 그에 따른 eigenvector 구하는 function 파일

## 필수 조건

        1. 행렬A가 square인지, symmetric인지 확인하는 코드 넣기

## 입력 예시

        >> A = [ 40 -20 0 ; -20 40 -20 ; 0 -20 40 ];
        >> es = 0.05 ; maxit = 100;
        >> [eig_val, eig_vec ] = power_2016113016(A, es, maxit)
        
 
## 예시 결과값
        
        원하는 값을 입력하세요. (가장 큰 eigenvalue : 1, 가장 작은 eigenvalue : 2) 1
        eig_val = 68.2857
        eig_vec = -0.7071
                  1 
                  -0.7071
                  
       
       원하는 값을 입력하세요. (가장 큰 eigenvalue : 1, 가장 작은 eigenvalue : 2) 2
       eig_val = 11.7157 
       eig_vec = 0.7071    
                  1
                  0.7071
        

## 코드

square와 symmentric을 만족하는 행렬인지 확인

if A ~= transpose(A)를 이용하하여 symmentric인지 확인 불가 : 행렬은 비교하는 함수를 따로 사용해줘야함.
```matlab
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
```
행렬 절댓값의 가장 큰 값이 음수일 경우 eigen value값을 절댓값에 음수를 취해서 가져와야한다.

판단 방법 : B행렬의 최댓값과 B행렬 절댓값의 최댓값이 같으면 양수인 경우 다르면 음수인 경우

```matlab
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
```

