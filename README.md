# Numerical-Analysis(수치해석)

수치해석 수업시간에 배운 예제들을 Matlab을 이용하여 풀어보았습니다.

올린 파일들은 예제에 대한 function 파일입니다.



매트랩 사용방법

    MATLAB이란 : 수학 계산에 강력한 기능의 tool
    처음 매트랩을 실행할때 NEW에서 function을 눌러 function파일을 만들어준 다음 코드를 작성하신뒤 명령창에서 실행
    function파일은 문서\Matlab에 저장됩니다.

입력예시는 결과가 맞게 출력되는지 확인을 위한 참고용입니다.

# cos_Taylor_2016113016.m

f(x) = cosx 인 함수를 Taylor Series를 이용하여 파형을 나타내는 function 파일

x가 0 ~ pi/2에 대해 cos파형을 나타내는 fuction파일

입력 예시


    >> x = [ 0 ; 0.06 ; pi/2];
    >> a = pi/4 ; n = 4;
    >> cos_Taylor_2016113016(x,a,n)
    
    
 예시 실행 화면 

   ![kakaotalk_20181122_202530205](https://user-images.githubusercontent.com/44545584/48903727-b34a4580-ee9f-11e8-85d4-202473b60c2b.jpg)


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
        
 
