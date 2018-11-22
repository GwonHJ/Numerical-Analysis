

# power_2016113016.m

power method로 대칭 행렬의 가장 큰 eigenvalue와 가장 작은 eigenvalue 구하고 그에 따른 eigenvector 구하는 function 파일

필수 조건

        1. 행렬A가 square인지, symmetric인지 확인하는 코드 넣기

입력 예시

        >> A = [ 40 -20 0 ; -20 40 -20 ; 0 -20 40 ];
        >> es = 0.05 ; maxit = 100;
        >> [eig_val, eig_vec ] = power_2016113016(A, es, maxit)
        
 
 예시 결과값
        
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
        
