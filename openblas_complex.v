module openblas
import math.complex as mcx

// double Complex type supported
//[inline]
pub fn cdotu(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int) f32{
    return C.cblas_cdotu(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cdotc(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int) f32{
    return C.cblas_cdotc(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zdotu(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int) f64{
    return C.cblas_zdotu(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zdotc(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int) f64{
    return C.cblas_zdotc(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cdotu_sub(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, ret []&mcx.Complex){
    C.cblas_cdotu_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn cdotc_sub(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, ret []&mcx.Complex){
    C.cblas_cdotc_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn zdotu_sub(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, ret []&mcx.Complex){
    C.cblas_zdotu_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn zdotc_sub(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, ret []&mcx.Complex){
    C.cblas_zdotc_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn scasum(n int, x []&mcx.Complex, incx int) f32{
    return C.cblas_scasum(n, &x[0], incx)
}
//[inline]
pub fn dzasum(n int, x []&mcx.Complex, incx int) f64{
    return C.cblas_dzasum(n, &x[0], incx)
}
//[inline]
pub fn scsum(n int, x []&mcx.Complex, incx int) f32{
    return C.cblas_scsum(n, &x[0], incx)
}
//[inline]
pub fn dzsum(n int, x []&mcx.Complex, incx int) f64{
    return C.cblas_dzsum(n, &x[0], incx)
}
//[inline]
pub fn scnrm2(n int, x []&mcx.Complex, incx int) f32{
    return C.cblas_scnrm2(n, &x[0], incx)
}
//[inline]
pub fn dznrm2(n int, x []&mcx.Complex, incx int) f64{
    return C.cblas_dznrm2(n, &x[0], incx)
}
//[inline]
pub fn icamax(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_icamax(n, &x[0], incx)
}
//[inline]
pub fn izamax(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_izamax(n, &x[0], incx)
}
//[inline]
pub fn icamin(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_icamin(n, &x[0], incx)
}
//[inline]
pub fn izamin(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_izamin(n, &x[0], incx)
}
//[inline]
pub fn icmax(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_icmax(n, &x[0], incx)
}
//[inline]
pub fn izmax(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_izmax(n, &x[0], incx)
}
//[inline]
pub fn icmin(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_icmin(n, &x[0], incx)
}
//[inline]
pub fn izmin(n int, x []&mcx.Complex, incx int) int{
    return C.cblas_izmin(n, &x, incx)
}
//[inline]
fn caxpy(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_caxpy(n, &alpha[0], &x[0], incx, &y[0], incy)
}
//[inline]
fn zaxpy(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_zaxpy(n, &alpha[0], &x[0], incx, &y[0], incy)
}
//[inline]
fn ccopy(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_ccopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
fn zcopy(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_zcopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
fn cswap(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_cswap(n, &x[0], incx, &y[0], incy)
}
//[inline]
fn zswap(n int, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int){
    C.cblas_zswap(n, &x[0], incx, &y[0], incy)
}

//[inline]
fn cscal(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int){
    C.cblas_cscal(n, &alpha[0], &x[0], incx)
}
//[inline]
fn zscal(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int){
    C.cblas_zscal(n, &alpha[0], &x[0], incx)
}
//[inline]
fn csscal(n int, alpha f32, x []&mcx.Complex, incx int){
    C.cblas_csscal(n, alpha, &x[0], incx)
}
//[inline]
pub fn zdscal(n int, alpha f64, x &[]mcx.Complex, incx int){
    C.cblas_zdscal(n, alpha, &x[0], incx)
}
//[inline]
//[inline]
//[inline]
//[inline]

/*
fn sgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f32, a &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f64, a &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn cgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha []&mcx.Complex, a []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha []&mcx.Complex, a []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn sger(order ORDER, m int, n int, float   alpha, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn dger(order ORDER, m int, n int, double  alpha, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn cgeru(order ORDER, m int, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn cgerc(order ORDER, m int, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn zgeru(order ORDER, m int, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn zgerc(order ORDER, m int, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn strsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn dtrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn ctrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn ztrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn strmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn dtrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn ctrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn ztrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn ssyr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, A &f32, lda int)
fn dsyr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, A &f64, lda int)
fn cher(order ORDER, uplo UPLO, n int, alpha f32, x []&mcx.Complex, incx int, A []&mcx.Complex, lda int)
fn zher(order ORDER, uplo UPLO, n int, alpha f64, x []&mcx.Complex, incx int, A []&mcx.Complex, lda int)
fn ssyr2(order ORDER, uplo UPLO,n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn dsyr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn cher2(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn zher2(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, A []&mcx.Complex, lda int)
fn sgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn cgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn ssbmv(order ORDER, uplo UPLO, n int, K int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dsbmv(order ORDER, uplo UPLO, n int, K int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn stbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn dtbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn ctbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn ztbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn stbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn dtbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn ctbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn ztbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int)
fn stpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn dtpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn ctpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap []&mcx.Complex, x []&mcx.Complex, incx int)
fn ztpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap []&mcx.Complex, x []&mcx.Complex, incx int)
fn stpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn dtpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn ctpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap []&mcx.Complex, x []&mcx.Complex, incx int)
fn ztpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap []&mcx.Complex, x []&mcx.Complex, incx int)
fn ssymv(order ORDER, uplo UPLO, n int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dsymv(order ORDER, uplo UPLO, n int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn chemv(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zhemv(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn sspmv(order ORDER, uplo UPLO, n int, alpha f32, Ap &f32, x &f32, incx int, beta f32, y &f32, incy int)
fn dspmv(order ORDER, uplo UPLO, n int, alpha f64, Ap &f64, x &f64, incx int, beta f64, y &f64, incy int)
fn sspr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, Ap &f32)
fn dspr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, Ap &f64)
fn chpr(order ORDER, uplo UPLO, n int, alpha f32, x []&mcx.Complex, incx int, A []&mcx.Complex)
fn zhpr(order ORDER, uplo UPLO, n int, alpha f64, x []&mcx.Complex,incx int, A []&mcx.Complex)
fn sspr2(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32)
fn dspr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64)
fn chpr2(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, AP []&mcx.Complex)
fn zhpr2(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int, y []&mcx.Complex, incy int, AP []&mcx.Complex)
fn chbmv(order ORDER, uplo UPLO, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zhbmv(order ORDER, uplo UPLO, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn chpmv(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, AP []&mcx.Complex, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zhpmv(order ORDER, uplo UPLO, n int, alpha []&mcx.Complex, AP []&mcx.Complex, x []&mcx.Complex, incx int, beta []&mcx.Complex, y []&mcx.Complex, incy int)

fn cgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn cgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
*//*
fn ssymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn dsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn csymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn ssyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, beta f32, c &f32, ldc int)
fn dsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, beta f64, c &f64, ldc int)
fn csyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn ssyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn dsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn csyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn strmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn dtrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn ctrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int)
fn ztrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int)
fn strsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn dtrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn ctrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int)
fn ztrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int)
fn chemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn zhemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta []&mcx.Complex, c []&mcx.Complex, ldc int)
fn cherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A []&mcx.Complex, lda int, beta f32, c []&mcx.Complex, ldc int)
fn zherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A []&mcx.Complex, lda int, beta f64, c []&mcx.Complex, ldc int)
fn cher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta f32, c []&mcx.Complex, ldc int)
fn zher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha []&mcx.Complex, A []&mcx.Complex, lda int, B []&mcx.Complex, ldb int, beta f64, c []&mcx.Complex, ldc int)
// /fn xerbla(p int, rout &byte, form &byte, ...)

/*** BLAS extensions ***/
fn saxpby(n int, alpha f32, x &f32, incx int,beta f32, y &f32, incy int)
fn daxpby(n int, alpha f64, x &f64, incx int,beta f64, y &f64, incy int)
fn caxpby(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int,beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn zaxpby(n int, alpha []&mcx.Complex, x []&mcx.Complex, incx int,beta []&mcx.Complex, y []&mcx.Complex, incy int)
fn somatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, B &f32, cldb int) 
fn domatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, B &f64, cldb int) 
fn comatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32, a &f32, clda int, b &f32, cldb int) 
fn zomatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, B &f64, cldb int) 
fn simatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, cldb int) 
fn dimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, cldb int) 
fn cimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32,  a &f32, clda int, cldb int) 
fn zimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, cldb int) 
fn sgeadd(CORDER ORDER, crows int, ccols int, calpha f32, A &f32, clda int, cbeta f32, c &f32, cldc int) 
fn dgeadd(CORDER ORDER, crows int, ccols int, calpha f64, A &f64, clda int, cbeta f64, c &f64, cldc int) 
fn cgeadd(CORDER ORDER, crows int, ccols int, calpha &f32, A &f32, clda int, cbeta &f32, c &f32, cldc int) 
fn zgeadd(CORDER ORDER, crows int, ccols int, calpha &f64, A &f64, clda int, cbeta &f64, c &f64, cldc int) 
*/