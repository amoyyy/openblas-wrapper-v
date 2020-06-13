module openblas

//[inline]
pub fn sdsdot(n int, alpha f32, x &[]f32, incx int, y &[]f32, incy int) f32{
    return C.cblas_sdsdot(n, alpha, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn dsdot(n int, x &[]f32, incx int, y &[]f32, incy int) f64 {
    return C.cblas_dsdot(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn sdot(n int, x &[]f32, incx int, y &[]f32, incy int) f32{
    return C.cblas_sdot(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn ddot(n int, x &[]f64, incx int, y &[]f64, incy int) f64{
    return C.cblas_ddot(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn sasum(n int, x &[]f32, incx int) f32{
    return C.cblas_sasum(n, &x[0], incx)
}
//[inline]
pub fn dasum(n int, x &[]f64, incx int) f64{
    return C.cblas_dasum(n, &x[0], incx)
}
//[inline]
pub fn ssum(n int, x &[]f32, incx int) f32{
    return C.cblas_ssum(n, &x[0], incx)
}
//[inline]
pub fn dsum(n int, x &[]f64, incx int) f64{
    return C.cblas_dsum(n, &x[0], incx)
}
//[inline]
pub fn snrm2(n int, x &[]f32, incx int) f32{
    return C.cblas_snrm2(n, &x[0], incx)
}
//[inline]
pub fn dnrm2(n int, x &[]f64, incx int) f64{
    return C.cblas_dnrm2(n, &x[0], incx)
}
//[inline]
pub fn isamax(n int, x &[]f32, incx int) int{
    return C.cblas_isamax(n, &x[0], incx)
}
//[inline]
pub fn idamax(n int, x &[]f64, incx int) int{
    return C.cblas_idamax(n, &x[0], incx)
}
//[inline]
pub fn isamin(n int, x &[]f32, incx int) int{
    return C.cblas_isamin(n, &x[0], incx)
}
//[inline]
pub fn idamin(n int, x &f64, incx int) int{
    return C.cblas_idamin(n, &x[0], incx)
}
//[inline]
pub fn ismax(n int, x &[]f32, incx int) int{
    return C.cblas_ismax(n, &x[0], incx)
}
//[inline]
pub fn idmax(n int, x &[]f64, incx int) int{
    return C.cblas_idmax(n, &x[0], incx)
}
//[inline]
pub fn ismin(n int, x &[]f32, incx int) int{
    return C.cblas_ismin(n, &x[0], incx)
}
//[inline]
pub fn idmin(n int, x &[]f64, incx int) int{
    return C.cblas_idmin(n, &x[0], incx)
}
//[inline]
pub fn saxpy(n int, alpha f32, x &[]f32, incx int, y &[]f32, incy int){
    C.cblas_saxpy(n, alpha, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn daxpy(n int, alpha f64, x &[]f64, incx int, y &[]f64, incy int){
    C.cblas_daxpy(n, alpha, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn scopy(n int, x &[]f32, incx int, y &[]f32, incy int){
    C.cblas_scopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn dcopy(n int, x &[]f64, incx int, y &[]f64, incy int){
    C.cblas_dcopy(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn sswap(n int, x &[]f32, incx int, y &[]f32, incy int){
    C.cblas_sswap(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn dswap(n int, x &[]f64, incx int, y &[]f64, incy int){
    C.cblas_dswap(n, &x[0], incx, &y[0], incy)
}
//[inline]
pub fn srot(n int, x &[]f32, incx int, y &[]f32, incy int, c f32, s f32){
    C.cblas_srot(n, &x[0], incx, &y[0], incy, c, s)
}
//[inline]
pub fn drot(n int, x &[]f64, incx int, y &[]f64, incy int, c f64, s f64){
    C.cblas_drot(n, &x[0], incx, &y[0], incy, c, s)
}
//[inline]
pub fn srotg(a f32, b f32, c f32, s f32){
    C.cblas_srotg(&a, &b, &c, &s)
}
//[inline]
pub fn drotg(a f64, b f64, c f64, s f64){
    C.cblas_drotg(&a, &b, &c, &s)
}
//[inline]
pub fn srotm(n int, x &[]f32, incx int, y &[]f32, incy int, P &[]f32){
    C.cblas_srotm(n, &x[0], incx, &y[0], incy, &P[0])
}
//[inline]
pub fn drotm(n int, x &[]f64, incx int, y &[]f64, incy int, P &[]f64){
    C.cblas_drotm(n, &x[0], incx, &y[0], incy, &P[0])
}
//[inline]
pub fn srotmg(d1 f32, d2 f32, b1 f32, b2 f32, P &[]f32){
    C.cblas_srotmg(&d1, &d2, &b1, b2, &P[0])
}
//[inline]
pub fn drotmg(d1 f64, d2 f64, b1 f64, b2 f32, P &[]f64){
    C.cblas_srotmg(&d1, &d2, &b1, b2, &P[0])
}
//[inline]
pub fn sscal(n int, alpha f32, x &[]f32, incx int){
    C.cblas_sscal(n, alpha, &x[0], incx)
}
//[inline]
pub fn dscal(n int, alpha f64, x &[]f64, incx int){
    C.cblas_dscal(n, alpha, &x[0], incx)
}
//[inline]
pub fn sgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f32, a &[]f32, lda int, x &[]f32, incx int, beta f32, y &[]f32, incy int){
    C.cblas_sgemv(order, trans, m, n, alpha, &a[0], lda, &x[0], incx, beta, &y[0], incy)
}
//[inline]
pub fn dgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f64, a &[]f64, lda int, x &[]f64, incx int, beta f64, y &[]f64, incy int){
    C.cblas_dgemv(order, trans, m, n, alpha, &a[0], lda, &x[0], incx, beta, &y[0], incy)
}
//[inline]
pub fn sger(order ORDER, m int, n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32, lda int){
    C.cblas_sger(order, m, n, alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
//[inline]
pub fn dger(order ORDER, m int, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64, lda int){
    C.cblas_dger(order, m, n, alpha, &x[0], incx, &y[0], incy, &A[0], lda)
}
/*
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
*/
//[inline]
pub fn sgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, M int, N int, K int, alpha f32, A &[]f32, lda int, B &[]f32, ldb int, beta f32, cc &[]f32, ldc int){
    C.cblas_sgemm(order, transA, transB, M, N, K, alpha, &A[0], lda, &B[0], ldb, beta, &cc[0], ldc)
}
//[inline]
pub fn dgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, M int, N int, K int, alpha f64, A &[]f64, lda int, B &[]f64, ldb int, beta f64, cc &[]f64, ldc int){
    C.cblas_dgemm(order, transA, transB, M, N, K, alpha, &A[0], lda, &B[0], ldb, beta, &cc[0], ldc)
}
/*
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