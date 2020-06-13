# openblas-wrapper-v
V Wrapper for OpenBLAS

V Project: https://github.com/vlang/v

OpenBLAS Project: https://github.com/xianyi/OpenBLAS

Compile and install OpenBLAS library on your platform. The guidance is available in "thirdparty/README.md". 

Install:

    v install amoyyy.openblas

Demo: 

    import amoyyy.openblas
    import math.complex as mcp
    fn main(){
        // dgemm
        a := [1.0,3.0,1.0,-3.0,4.0,-1.0]                // m * k Matrix
        b := [1.0,4.0,1.0,-3.0,4.0,-1.0]                // k * n Matrix
        c := [0.5,0.5,0.5,1.5,0.5,2.5,0.5,0.5,0.5]      // m * n Matrix 
        m := 3                                          // row of A and C
        n := 3                                          // col of B and C
        k := 2                                          // col of A and row of B
        
        alpha := 1.0
        beta := 0.0
        
        openblas.dgemm(openblas.ORDER.row_major, openblas.TRANSPOSE.no_trans, openblas.TRANSPOSE.no_trans, m, n, k, alpha, a, k, b, n, beta, c, n)
        println(c)
    
        // ddot
        res := openblas.ddot(6, a, 1, b, 1)
        println(res)
        
        // zdscal, only `z` method (for double Complex) is supported in builtin v language.
        mut e := [mcp.complex(1,2), mcp.complex(3,4), mcp.complex(5,6)]
        println(e)
        openblas.zdscal(3, 10.0, e ,1)
        println(e)
    }
