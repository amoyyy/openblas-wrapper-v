# openblas-wrapper-v
V Wrapper for OpenBLAS

V Project: https://github.com/vlang/v

OpenBLAS Project: https://github.com/xianyi/OpenBLAS

Dynamic library libopenblas.so file for x86 linux platform provided by default.

If needed, compile and install OpenBLAS library by yourself in the thirdparty directory. 

Install:

    v install amoyyy.openblas

Demo: 

    import amoyyy.openblas
    import math.complex as cplx
    fn main(){
        // dgemm demo 
        a := [1.0,3.0,1.0,-3.0,4.0,-1.0]         
        b := [1.0,4.0,1.0,-3.0,4.0,-1.0]  
        mut c := [0.5,0.5,0.5,1.5,0.5,2.5,0.5,0.5,0.5]       
        mm := 3 // row of A and C
        nn := 3 // col of B and C
        kk := 2 // col of A and row of B
        alpha := 1.0
        beta := 0.0
        
        openblas.dgemm(openblas.ORDER.row_major, openblas.TRANSPOSE.no_trans, openblas.TRANSPOSE.no_trans, mm, nn, kk, alpha, a, kk, b, nn, beta, mut c, nn)
        println(c)
    
        // ddot demo 
        res := openblas.ddot(6, a, 1, b, 1)
        println(res)
        
        // zdscal demo
        mut e := [cplx.complex(1,2), cplx.complex(3,4), cplx.complex(5,6)]
        println(e)
        openblas.zdscal(3, 10.0, e ,1)
        println(e)
    }
