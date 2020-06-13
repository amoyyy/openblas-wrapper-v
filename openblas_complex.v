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
pub fn cgeru(order ORDER, m int, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_cgeru(order, m, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn cgerc(order ORDER, m int, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_cgerc(order, m, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn zgeru(order ORDER, m int, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_zgeru(order, m, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn zgerc(order ORDER, m int, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_zgerc(order, m, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn ctrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int){
    C.cblas_ctrsv(order, uplo, transA, diag, n, &A[0], lda, &x[0], incx)
}
//[inline]
pub fn ztrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int){
    C.cblas_ztrsv(order, uplo, transA, diag, n, &A[0], lda, &x[0], incx)
}
//[inline]
pub fn ctrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int){
    C.cblas_ctrmv(order, uplo, transA, diag, n, &A[0], lda, &x[0], incx)
}
//[inline]
pub fn ztrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &[]mcx.Complex, lda int, x &[]mcx.Complex, incx int){
    C.cblas_ztrmv(order, uplo, transA, diag, n, &A[0], lda, &x[0], incx)
}
//[inline]
pub fn cher(order ORDER, uplo UPLO, n int, alpha f32, x &[]mcx.Complex, incx int, A &[]mcx.Complex, lda int){
    C.cblas_cher(order, uplo, n, alpha, &x[0], incx, &A[0], lda)
}
//[inline]
pub fn zher(order ORDER, uplo UPLO, n int, alpha f64, x &[]mcx.Complex, incx int, A &[]mcx.Complex, lda int){
    C.cblas_zher(order, uplo, n, alpha, &x[0], incx, &A[0], lda)
}
//[inline]
pub fn cher2(order ORDER, uplo UPLO, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_cher2(order, uplo, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn zher2(order ORDER, uplo UPLO, n int, alpha mcx.Complex, x &[]mcx.Complex, incx int, y &[]mcx.Complex, incy int, A &[]mcx.Complex, lda int){
    C.cblas_zher2(order, uplo, n, &alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
/*
pub fn cgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn ctbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ztbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ctbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ztbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
pub fn ctpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ztpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ctpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn ztpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
pub fn chemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn zhemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
pub fn chpr(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr)
pub fn zhpr(order ORDER, uplo UPLO, n int, alpha f64, x voidptr,incx int, A voidptr)
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
pub fn csymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn csyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
pub fn zsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
pub fn csyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn dtrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
pub fn ctrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn ztrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn ztrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
pub fn chemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn zhemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
pub fn cher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f32, c voidptr, ldc int)
pub fn zher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f64, c voidptr, ldc int)
*/
