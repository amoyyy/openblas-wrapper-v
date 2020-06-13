module openblas
import math.complex as mcx

// WARNING: complex, double precision supported in v
//[inline]
pub fn cdotu(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int) f32{
    return C.cblas_cdotu(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cdotc(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int) f32{
    return C.cblas_cdotc(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zdotu(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int) f64{
    return C.cblas_zdotu(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zdotc(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int) f64{
    return C.cblas_zdotc(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cdotu_sub(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, ret &[]mcx.Complex){
    C.cblas_cdotu_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn cdotc_sub(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, ret &[]mcx.Complex){
    C.cblas_cdotc_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn zdotu_sub(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, ret &[]mcx.Complex){
    C.cblas_zdotu_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn zdotc_sub(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, ret &[]mcx.Complex){
    C.cblas_zdotc_sub(n, &x[0], incx, &y[0], incy, &ret[0])
}
//[inline]
pub fn scasum(n int, x &[]mcx.Complex, incx int) f32{
    return C.cblas_scasum(n, &x[0], incx)
}
//[inline]
pub fn dzasum(n int, x &[]mcx.Complex, incx int) f64{
    return C.cblas_dzasum(n, &x[0], incx)
}
//[inline]
pub fn scsum(n int, x &[]mcx.Complex, incx int) f32{
    return C.cblas_scsum(n, &x[0], incx)
}
//[inline]
pub fn dzsum(n int, x &[]mcx.Complex, incx int) f64{
    return C.cblas_dzsum(n, &x[0], incx)
}
//[inline]
pub fn scnrm2(n int, x &[]mcx.Complex, incx int) f32{
    return C.cblas_scnrm2(n, &x[0], incx)
}
//[inline]
pub fn dznrm2(n int, x &[]mcx.Complex, incx int) f64{
    return C.cblas_dznrm2(n, &x[0], incx)
}
//[inline]
pub fn icamax(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_icamax(n, &x[0], incx)
}
//[inline]
pub fn izamax(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_izamax(n, &x[0], incx)
}
//[inline]
pub fn icamin(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_icamin(n, &x[0], incx)
}
//[inline]
pub fn izamin(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_izamin(n, &x[0], incx)
}
//[inline]
pub fn icmax(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_icmax(n, &x[0], incx)
}
//[inline]
pub fn izmax(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_izmax(n, &x[0], incx)
}
//[inline]
pub fn icmin(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_icmin(n, &x[0], incx)
}
//[inline]
pub fn izmin(n int, x &[]mcx.Complex, incx int) int{
    return C.cblas_izmin(n, &x, incx)
}
//[inline]
pub fn caxpy(n int, alpha &[]mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_caxpy(n, &alpha[0], &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zaxpy(n int, alpha &[]mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_zaxpy(n, &alpha[0], &x[0], incx, &y[0], incy)
}
//[inline]
pub fn ccopy(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_ccopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zcopy(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_zcopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cswap(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_cswap(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn zswap(n int, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int){
    C.cblas_zswap(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn cscal(n int, alpha &[]mcx.Complex, x &[]mcx.Complex, incx int){
    C.cblas_cscal(n, &alpha[0], &x[0], incx)
}
//[inline]
pub fn zscal(n int, alpha &[]mcx.Complex, x &[]mcx.Complex, incx int){
    C.cblas_zscal(n, &alpha[0], &x[0], incx)
}
//[inline]
pub fn csscal(n int, alpha f32, x &[]mcx.Complex, incx int){
    C.cblas_csscal(n, alpha, &x[0], incx)
}
//[inline]
pub fn zdscal(n int, alpha f64, x &[]mcx.Complex, incx int){
    C.cblas_zdscal(n, alpha, &x[0], incx)
}
//[inline]
pub fn cgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha mcx.Complex, a &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int, beta mcx.Complex, y &[]mcx.Complex, incy int){
    C.cblas_cgemv(order, trans, m, n, &alpha, &a[0], lda, &x[0], incx, &beta, &y[0], incy)
}
//[inline]
pub fn zgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha mcx.Complex, a &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int, beta mcx.Complex, y &[]mcx.Complex, incy int){
    C.cblas_zgemv(order, trans, m, n, &alpha, &a[0], lda, &x[0], incx, &beta, &y[0], incy)
}
//[inline]

//[inline]

/*

pub fn cgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn cgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn cgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn zgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn zgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn strsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
pub fn dtrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
pub fn ctrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
pub fn ztrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
pub fn strmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
pub fn dtrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
pub fn ctrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
pub fn ztrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
pub fn ssyr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, A &f32, lda int)
pub fn dsyr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, A &f64, lda int)
pub fn cher(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr, lda int)
pub fn zher(order ORDER, uplo UPLO, n int, alpha f64, x voidptr, incx int, A voidptr, lda int)
pub fn ssyr2(order ORDER, uplo UPLO,n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32, lda int)
pub fn dsyr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64, lda int)
pub fn cher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn zher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
pub fn sgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
pub fn dgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
pub fn cgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn ssbmv(order ORDER, uplo UPLO, n int, K int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
pub fn dsbmv(order ORDER, uplo UPLO, n int, K int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
pub fn stbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
pub fn dtbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
pub fn ctbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ztbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn stbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
pub fn dtbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
pub fn ctbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ztbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn stpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
pub fn dtpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
pub fn ctpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ztpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn stpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
pub fn dtpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
pub fn ctpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ztpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ssymv(order ORDER, uplo UPLO, n int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
pub fn dsymv(order ORDER, uplo UPLO, n int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
pub fn chemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zhemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn sspmv(order ORDER, uplo UPLO, n int, alpha f32, Ap &f32, x &f32, incx int, beta f32, y &f32, incy int)
pub fn dspmv(order ORDER, uplo UPLO, n int, alpha f64, Ap &f64, x &f64, incx int, beta f64, y &f64, incy int)
pub fn sspr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, Ap &f32)
pub fn dspr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, Ap &f64)
pub fn chpr(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr)
pub fn zhpr(order ORDER, uplo UPLO, n int, alpha f64, x voidptr,incx int, A voidptr)
pub fn sspr2(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32)
pub fn dspr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64)
pub fn chpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
pub fn zhpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
pub fn chbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zhbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn chpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zhpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn cgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn cgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
*//*
pub fn ssymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
pub fn dsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
pub fn csymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn ssyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, beta f32, c &f32, ldc int)
pub fn dsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, beta f64, c &f64, ldc int)
pub fn csyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
pub fn zsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
pub fn ssyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
pub fn dsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
pub fn csyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn strmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
pub fn dtrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
pub fn ctrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn ztrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn strsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
pub fn dtrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
pub fn ctrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn ztrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn chemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zhemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn cherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A voidptr, lda int, beta f32, c voidptr, ldc int)
pub fn zherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A voidptr, lda int, beta f64, c voidptr, ldc int)
pub fn cher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f32, c voidptr, ldc int)
pub fn zher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f64, c voidptr, ldc int)
// /pub fn xerbla(p int, rout &byte, form &byte, ...)

/*** BLAS extensions ***/
pub fn saxpby(n int, alpha f32, x &f32, incx int,beta f32, y &f32, incy int)
pub fn daxpby(n int, alpha f64, x &f64, incx int,beta f64, y &f64, incy int)
pub fn somatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, B &f32, cldb int) 
pub fn domatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, B &f64, cldb int) 
pub fn comatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32, a &f32, clda int, b &f32, cldb int) 
pub fn zomatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, B &f64, cldb int) 
pub fn simatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, cldb int) 
pub fn dimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, cldb int) 
pub fn cimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32,  a &f32, clda int, cldb int) 
pub fn zimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, cldb int) 
pub fn sgeadd(CORDER ORDER, crows int, ccols int, calpha f32, A &f32, clda int, cbeta f32, c &f32, cldc int) 
pub fn dgeadd(CORDER ORDER, crows int, ccols int, calpha f64, A &f64, clda int, cbeta f64, c &f64, cldc int) 
pub fn cgeadd(CORDER ORDER, crows int, ccols int, calpha &f32, A &f32, clda int, cbeta &f32, c &f32, cldc int) 
pub fn zgeadd(CORDER ORDER, crows int, ccols int, calpha &f64, A &f64, clda int, cbeta &f64, c &f64, cldc int) 
*/