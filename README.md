# openblas-wrapper-v
V Wrapper for OpenBLAS

V Project: https://github.com/vlang/v

OpenBLAS Project: https://github.com/xianyi/OpenBLAS

Compile Install OpenBLAS library in thirdparty directory the import openblas module in your Vlang project.

Dynamic library is provided by default, modify the link flag as you like.

Usage: 

    import openblas
    fn main(){
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
    
        res := openblas.ddot(6, a, 1, b, 1)
        println(res)
    }
