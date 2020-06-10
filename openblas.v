module openblas

#flag -I ./thirdparty/OpenBLAS-0.3.9/include
#flag -L ./thirdparty/OpenBLAS-0.3.9/lib
#flag -lopenblas
#flag -pthread

#include "cblas.h"

enum ORDER     {row_major=101 col_major=102} 
enum TRANSPOSE {no_trans=111 trans=112 conj_trans=113 conj_no_trans=114}
enum UPLO      {upper=121 lower=122} 
enum DIAG      {non_unit=131 unit=132}
enum SIDE      {left=141 right=142}

fn C.cblas_sdsdot(n int, alpha f32, x &f32, incx int, y &f32, incy int) f32
fn C.cblas_dsdot(n int, x &f32, incx int, y &f32, incy int) f64
fn C.cblas_sdot(n int, x &f32, incx int, y &f32, incy int) f32
fn C.cblas_ddot(n int, x &f64, incx int, y &f64, incy int) f64
fn C.cblas_cdotu(n int, x voidptr, incx int, y voidptr, incy int) f32
fn C.cblas_cdotc(n int, x voidptr, incx int, y voidptr, incy int) f32
fn C.cblas_zdotu(n int, x voidptr, incx int, y voidptr, incy int) f64
fn C.cblas_zdotc(n int, x voidptr, incx int, y voidptr, incy int) f64
fn C.cblas_cdotu_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr)
fn C.cblas_cdotc_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr)
fn C.cblas_zdotu_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr)
fn C.cblas_zdotc_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr)
fn C.cblas_sasum(n int, x &f32, incx int) f32
fn C.cblas_dasum(n int, x &f64, incx int) f64
fn C.cblas_scasum(n int, x voidptr, incx int) f32
fn C.cblas_dzasum(n int, x voidptr, incx int) f64
fn C.cblas_ssum(n int, x &f32, incx int) f32
fn C.cblas_dsum(n int, x &f64, incx int) f64
fn C.cblas_scsum(n int, x voidptr, incx int) f32
fn C.cblas_dzsum(n int, x voidptr, incx int) f64
fn C.cblas_snrm2(n int, x &f32, incx int) f32
fn C.cblas_dnrm2(n int, x &f64, incx int) f64
fn C.cblas_scnrm2(n int, x voidptr, incx int) f32
fn C.cblas_dznrm2(n int, x voidptr, incx int) f64
// `size_t` : replaced with `int`
fn C.cblas_isamax(n int, x &f32, incx int) int
fn C.cblas_idamax(n int, x &f64, incx int) int
fn C.cblas_icamax(n int, x voidptr, incx int) int
fn C.cblas_izamax(n int, x voidptr, incx int) int
fn C.cblas_isamin(n int, x &f32, incx int) int
fn C.cblas_idamin(n int, x &f64, incx int) int
fn C.cblas_icamin(n int, x voidptr, incx int) int
fn C.cblas_izamin(n int, x voidptr, incx int) int
fn C.cblas_ismax(n int, x &f32, incx int) int
fn C.cblas_idmax(n int, x &f64, incx int) int
fn C.cblas_icmax(n int, x voidptr, incx int) int
fn C.cblas_izmax(n int, x voidptr, incx int) int
fn C.cblas_ismin(n int, x &f32, incx int) int
fn C.cblas_idmin(n int, x &f64, incx int) int
fn C.cblas_icmin(n int, x voidptr, incx int) int
fn C.cblas_izmin(n int, x voidptr, incx int) int
fn C.cblas_saxpy(n int, alpha f32, x &f32, incx int, y &f32, incy int)
fn C.cblas_daxpy(n int, alpha f64, x &f64, incx int, y &f64, incy int)
fn C.cblas_caxpy(n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_zaxpy(n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_scopy(n int, x &f32, incx int, y &f32, incy int)
fn C.cblas_dcopy(n int, x &f64, incx int, y &f64, incy int)
fn C.cblas_ccopy(n int, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_zcopy(n int, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_sswap(n int, x &f32, incx int, y &f32, incy int)
fn C.cblas_dswap(n int, x &f64, incx int, y &f64, incy int)
fn C.cblas_cswap(n int, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_zswap(n int, x voidptr, incx int, y voidptr, incy int)
fn C.cblas_srot(n int, x &f32, incx int, y &f32, incy int, c f32, s f32)
fn C.cblas_drot(n int, x &f64, incx int, y &f64, incy int, c f64, s f64)
fn C.cblas_srotg(a &f32, b &f32, c &f32, s &f32)
fn C.cblas_drotg(a &f64, b &f64, c &f64, s &f64)
fn C.cblas_srotm(n int, x &f32, incx int, y &f32, incy int, P &f32)
fn C.cblas_drotm(n int, x &f64, incx int, y &f64, incy int, P &f64)
fn C.cblas_srotmg(&f32 d1, &f32 d2, &f32 b1, float b2, P &f32)
fn C.cblas_drotmg(&f64 d1, &f64 d2, &f64 b1, double b2, P &f64)
fn C.cblas_sscal(n int, alpha f32, x &f32, incx int)
fn C.cblas_dscal(n int, alpha f64, x &f64, incx int)
fn C.cblas_cscal(n int, alpha voidptr, x voidptr, incx int)
fn C.cblas_zscal(n int, alpha voidptr, x voidptr, incx int)
fn C.cblas_csscal(n int, alpha f32, x voidptr, incx int)
fn C.cblas_zdscal(n int, alpha f64, x voidptr, incx int)
fn C.cblas_sgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f32, a &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn C.cblas_dgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f64, a &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn C.cblas_cgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_zgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_sger(order ORDER, m int, n int, float   alpha, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn C.cblas_dger(order ORDER, m int, n int, double  alpha, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn C.cblas_cgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_cgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_zgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_zgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_strsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn C.cblas_dtrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn C.cblas_ctrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_ztrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_strmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn C.cblas_dtrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn C.cblas_ctrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_ztrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_ssyr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, A &f32, lda int)
fn C.cblas_dsyr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, A &f64, lda int)
fn C.cblas_cher(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr, lda int)
fn C.cblas_zher(order ORDER, uplo UPLO, n int, alpha f64, x voidptr, incx int, A voidptr, lda int)
fn C.cblas_ssyr2(order ORDER, uplo UPLO,n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn C.cblas_dsyr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn C.cblas_cher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_zher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn C.cblas_sgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn C.cblas_dgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn C.cblas_cgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_zgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_ssbmv(order ORDER, uplo UPLO, n int, K int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn C.cblas_dsbmv(order ORDER, uplo UPLO, n int, K int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn C.cblas_stbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn C.cblas_dtbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn C.cblas_ctbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_ztbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_stbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn C.cblas_dtbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn C.cblas_ctbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_ztbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn C.cblas_stpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn C.cblas_dtpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn C.cblas_ctpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn C.cblas_ztpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn C.cblas_stpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn C.cblas_dtpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn C.cblas_ctpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn C.cblas_ztpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn C.cblas_ssymv(order ORDER, uplo UPLO, n int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn C.cblas_dsymv(order ORDER, uplo UPLO, n int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn C.cblas_chemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_zhemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_sspmv(order ORDER, uplo UPLO, n int, alpha f32, Ap &f32, x &f32, incx int, beta f32, y &f32, incy int)
fn C.cblas_dspmv(order ORDER, uplo UPLO, n int, alpha f64, Ap &f64, x &f64, incx int, beta f64, y &f64, incy int)
fn C.cblas_sspr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, Ap &f32)
fn C.cblas_dspr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, Ap &f64)
fn C.cblas_chpr(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr)
fn C.cblas_zhpr(order ORDER, uplo UPLO, n int, alpha f64, x voidptr,incx int, A voidptr)
fn C.cblas_sspr2(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32)
fn C.cblas_dspr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64)
fn C.cblas_chpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
fn C.cblas_zhpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
fn C.cblas_chbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_zhbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_chpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_zhpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn C.cblas_sgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn C.cblas_dgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn C.cblas_cgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_cgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_ssymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn C.cblas_dsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn C.cblas_csymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_ssyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, beta f32, c &f32, ldc int)
fn C.cblas_dsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, beta f64, c &f64, ldc int)
fn C.cblas_csyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
fn C.cblas_ssyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn C.cblas_dsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn C.cblas_csyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_strmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn C.cblas_dtrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn C.cblas_ctrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn C.cblas_ztrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn C.cblas_strsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn C.cblas_dtrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn C.cblas_ctrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn C.cblas_ztrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn C.cblas_chemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_zhemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn C.cblas_cherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A voidptr, lda int, beta f32, c voidptr, ldc int)
fn C.cblas_zherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A voidptr, lda int, beta f64, c voidptr, ldc int)
fn C.cblas_cher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f32, c voidptr, ldc int)
fn C.cblas_zher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f64, c voidptr, ldc int)
// /fn C.cblas_xerbla(p int, rout &byte, form &byte, ...)

/*** BLAS extensions ***/
fn C.cblas_saxpby(n int, alpha f32, x &f32, incx int,beta f32, y &f32, incy int)
fn C.cblas_daxpby(n int, alpha f64, x &f64, incx int,beta f64, y &f64, incy int)
fn C.cblas_caxpby(n int, alpha voidptr, x voidptr, incx int,beta voidptr, y voidptr, incy int)
fn C.cblas_zaxpby(n int, alpha voidptr, x voidptr, incx int,beta voidptr, y voidptr, incy int)
fn C.cblas_somatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, B &f32, cldb int) 
fn C.cblas_domatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, B &f64, cldb int) 
fn C.cblas_comatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32, a &f32, clda int, b &f32, cldb int) 
fn C.cblas_zomatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, B &f64, cldb int) 
fn C.cblas_simatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f32, A &f32, clda int, cldb int) 
fn C.cblas_dimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha f64, A &f64, clda int, cldb int) 
fn C.cblas_cimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f32,  a &f32, clda int, cldb int) 
fn C.cblas_zimatcopy(CORDER ORDER, CTRANS TRANSPOSE, crows int, ccols int, calpha &f64, a &f64, clda int, cldb int) 
fn C.cblas_sgeadd(CORDER ORDER, crows int, ccols int, calpha f32, A &f32, clda int, cbeta f32, c &f32, cldc int) 
fn C.cblas_dgeadd(CORDER ORDER, crows int, ccols int, calpha f64, A &f64, clda int, cbeta f64, c &f64, cldc int) 
fn C.cblas_cgeadd(CORDER ORDER, crows int, ccols int, calpha &f32, A &f32, clda int, cbeta &f32, c &f32, cldc int) 
fn C.cblas_zgeadd(CORDER ORDER, crows int, ccols int, calpha &f64, A &f64, clda int, cbeta &f64, c &f64, cldc int) 
//*****************************************************************************
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
pub fn cdotu(n int, x voidptr, incx int, y voidptr, incy int) f32{
    return C.cblas_cdotu(n, &x, incx, &y, incy)
}
//[inline]
pub fn cdotc(n int, x voidptr, incx int, y voidptr, incy int) f32{
    return C.cblas_cdotc(n, &x, incx, &y ,incy)
}
//[inline]
pub fn zdotu(n int, x voidptr, incx int, y voidptr, incy int) f64{
    return C.cblas_zdotu(n, &x, incx, &y, incy)
}
//[inline]
pub fn zdotc(n int, x voidptr, incx int, y voidptr, incy int) f64{
    return C.cblas_zdotc(n, &x, incx, &y, incy)
}
//[inline]
pub fn cdotu_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr){
    C.cblas_cdotu_sub(n, &x, incx, &y, incy, &ret)
}
//[inline]
pub fn cdotc_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr){
    C.cblas_cdotc_sub(n, &x, incx, &y, incy, &ret)
}
//[inline]
pub fn zdotu_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr){
    C.cblas_zdotu_sub(n, &x, incx, &y, incy, &ret)
}
//[inline]
pub fn zdotc_sub(n int, x voidptr, incx int, y voidptr, incy int, ret voidptr){
    C.cblas_zdotc_sub(n, &x, incx, &y, incy, &ret)
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
pub fn scasum(n int, x voidptr, incx int) f32{
    return C.cblas_scasum(n, &x, incx)
}
//[inline]
pub fn dzasum(n int, x voidptr, incx int) f64{
    return C.cblas_dzasum(n, &x, incx)
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
pub fn scsum(n int, x voidptr, incx int) f32{
    return C.cblas_scsum(n, &x, incx)
}
//[inline]
pub fn dzsum(n int, x voidptr, incx int) f64{
    return C.cblas_dzsum(n, &x, incx)
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
pub fn scnrm2(n int, x voidptr, incx int) f32{
    return C.cblas_scnrm2(n, &x, incx)
}
//[inline]
pub fn dznrm2(n int, x voidptr, incx int) f64{
    return C.cblas_dznrm2(n, &x, incx)
}

/*

// `size_t` : replaced with `int`
fn isamax(n int, x &f32, incx int) int
fn idamax(n int, x &f64, incx int) int
fn icamax(n int, x voidptr, incx int) int
fn izamax(n int, x voidptr, incx int) int
fn isamin(n int, x &f32, incx int) int
fn idamin(n int, x &f64, incx int) int
fn icamin(n int, x voidptr, incx int) int
fn izamin(n int, x voidptr, incx int) int
fn ismax(n int, x &f32, incx int) int
fn idmax(n int, x &f64, incx int) int
fn icmax(n int, x voidptr, incx int) int
fn izmax(n int, x voidptr, incx int) int
fn ismin(n int, x &f32, incx int) int
fn idmin(n int, x &f64, incx int) int
fn icmin(n int, x voidptr, incx int) int
fn izmin(n int, x voidptr, incx int) int
fn saxpy(n int, alpha f32, x &f32, incx int, y &f32, incy int)
fn daxpy(n int, alpha f64, x &f64, incx int, y &f64, incy int)
fn caxpy(n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int)
fn zaxpy(n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int)
fn scopy(n int, x &f32, incx int, y &f32, incy int)
fn dcopy(n int, x &f64, incx int, y &f64, incy int)
fn ccopy(n int, x voidptr, incx int, y voidptr, incy int)
fn zcopy(n int, x voidptr, incx int, y voidptr, incy int)
fn sswap(n int, x &f32, incx int, y &f32, incy int)
fn dswap(n int, x &f64, incx int, y &f64, incy int)
fn cswap(n int, x voidptr, incx int, y voidptr, incy int)
fn zswap(n int, x voidptr, incx int, y voidptr, incy int)
fn srot(n int, x &f32, incx int, y &f32, incy int, c f32, s f32)
fn drot(n int, x &f64, incx int, y &f64, incy int, c f64, s f64)
fn srotg(a &f32, b &f32, c &f32, s &f32)
fn drotg(a &f64, b &f64, c &f64, s &f64)
fn srotm(n int, x &f32, incx int, y &f32, incy int, P &f32)
fn drotm(n int, x &f64, incx int, y &f64, incy int, P &f64)
fn srotmg(&f32 d1, &f32 d2, &f32 b1, float b2, P &f32)
fn drotmg(&f64 d1, &f64 d2, &f64 b1, double b2, P &f64)
fn sscal(n int, alpha f32, x &f32, incx int)
fn dscal(n int, alpha f64, x &f64, incx int)
fn cscal(n int, alpha voidptr, x voidptr, incx int)
fn zscal(n int, alpha voidptr, x voidptr, incx int)
fn csscal(n int, alpha f32, x voidptr, incx int)
fn zdscal(n int, alpha f64, x voidptr, incx int)
fn sgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f32, a &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha f64, a &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn cgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn zgemv(order ORDER, trans TRANSPOSE, m int, n int, alpha voidptr, a voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn sger(order ORDER, m int, n int, float   alpha, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn dger(order ORDER, m int, n int, double  alpha, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn cgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn cgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn zgeru(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn zgerc(order ORDER, m int, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn strsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn dtrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn ctrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn ztrsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn strmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f32, lda int, x &f32, incx int)
fn dtrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A &f64, lda int, x &f64, incx int)
fn ctrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn ztrmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, A voidptr, lda int, x voidptr, incx int)
fn ssyr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, A &f32, lda int)
fn dsyr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, A &f64, lda int)
fn cher(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr, lda int)
fn zher(order ORDER, uplo UPLO, n int, alpha f64, x voidptr, incx int, A voidptr, lda int)
fn ssyr2(order ORDER, uplo UPLO,n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32, lda int)
fn dsyr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64, lda int)
fn cher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn zher2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, A voidptr, lda int)
fn sgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn cgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn zgbmv(order ORDER, transA TRANSPOSE, m int, n int, KL int, KU int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn ssbmv(order ORDER, uplo UPLO, n int, K int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dsbmv(order ORDER, uplo UPLO, n int, K int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn stbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn dtbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn ctbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn ztbmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn stbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f32, lda int, x &f32, incx int)
fn dtbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A &f64, lda int, x &f64, incx int)
fn ctbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn ztbsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, K int, A voidptr, lda int, x voidptr, incx int)
fn stpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn dtpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn ctpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn ztpmv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn stpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f32, x &f32, incx int)
fn dtpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap &f64, x &f64, incx int)
fn ctpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn ztpsv(order ORDER, uplo UPLO, transA TRANSPOSE, diag DIAG, n int, Ap voidptr, x voidptr, incx int)
fn ssymv(order ORDER, uplo UPLO, n int, alpha f32, A &f32, lda int, x &f32, incx int, beta f32, y &f32, incy int)
fn dsymv(order ORDER, uplo UPLO, n int, alpha f64, A &f64, lda int, x &f64, incx int, beta f64, y &f64, incy int)
fn chemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn zhemv(order ORDER, uplo UPLO, n int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn sspmv(order ORDER, uplo UPLO, n int, alpha f32, Ap &f32, x &f32, incx int, beta f32, y &f32, incy int)
fn dspmv(order ORDER, uplo UPLO, n int, alpha f64, Ap &f64, x &f64, incx int, beta f64, y &f64, incy int)
fn sspr(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, Ap &f32)
fn dspr(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, Ap &f64)
fn chpr(order ORDER, uplo UPLO, n int, alpha f32, x voidptr, incx int, A voidptr)
fn zhpr(order ORDER, uplo UPLO, n int, alpha f64, x voidptr,incx int, A voidptr)
fn sspr2(order ORDER, uplo UPLO, n int, alpha f32, x &f32, incx int, y &f32, incy int, A &f32)
fn dspr2(order ORDER, uplo UPLO, n int, alpha f64, x &f64, incx int, y &f64, incy int, A &f64)
fn chpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
fn zhpr2(order ORDER, uplo UPLO, n int, alpha voidptr, x voidptr, incx int, y voidptr, incy int, AP voidptr)
fn chbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn zhbmv(order ORDER, uplo UPLO, n int, K int, alpha voidptr, A voidptr, lda int, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn chpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
fn zhpmv(order ORDER, uplo UPLO, n int, alpha voidptr, AP voidptr, x voidptr, incx int, beta voidptr, y voidptr, incy int)
*/
//[inline]
pub fn sgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, M int, N int, K int, alpha f32, A &[]f32, lda int, B &[]f32, ldb int, beta f32, cc &[]f32, ldc int){
    C.cblas_sgemm(order, transA, transB, M, N, K, alpha, &A[0], lda, &B[0], ldb, beta, &cc[0], ldc)
}
//[inline]
pub fn dgemm(Order ORDER, TransA TRANSPOSE, TransB TRANSPOSE, M int, N int, K int, alpha f64, A &[]f64, lda int, B &[]f64, ldb int, beta f64, cc &[]f64, ldc int){
    C.cblas_dgemm(Order, TransA, TransB, M, N, K, alpha, &A[0], lda, &B[0], ldb, beta, &cc[0], ldc)
}
/*
fn cgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn cgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn zgemm(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn zgemm3m(order ORDER, transA TRANSPOSE, transB TRANSPOSE, m int, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn ssymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn dsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn csymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn zsymm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn ssyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, beta f32, c &f32, ldc int)
fn dsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, beta f64, c &f64, ldc int)
fn csyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
fn zsyrk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, beta voidptr, c voidptr, ldc int)
fn ssyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A &f32, lda int, B &f32, ldb int, beta f32, c &f32, ldc int)
fn dsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A &f64, lda int, B &f64, ldb int, beta f64, c &f64, ldc int)
fn csyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn zsyr2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn strmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn dtrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn ctrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn ztrmm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn strsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f32, A &f32, lda int, B &f32, ldb int)
fn dtrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha f64, A &f64, lda int, B &f64, ldb int)
fn ctrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn ztrsm(order ORDER, side SIDE, uplo UPLO, transA TRANSPOSE, diag DIAG, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int)
fn chemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn zhemm(order ORDER, side SIDE, uplo UPLO, m int, n int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta voidptr, c voidptr, ldc int)
fn cherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f32, A voidptr, lda int, beta f32, c voidptr, ldc int)
fn zherk(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha f64, A voidptr, lda int, beta f64, c voidptr, ldc int)
fn cher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f32, c voidptr, ldc int)
fn zher2k(order ORDER, uplo UPLO, trans TRANSPOSE, n int, K int, alpha voidptr, A voidptr, lda int, B voidptr, ldb int, beta f64, c voidptr, ldc int)
// /fn xerbla(p int, rout &byte, form &byte, ...)
*/
/*** BLAS extensions ***//*
fn saxpby(n int, alpha f32, x &f32, incx int,beta f32, y &f32, incy int)
fn daxpby(n int, alpha f64, x &f64, incx int,beta f64, y &f64, incy int)
fn caxpby(n int, alpha voidptr, x voidptr, incx int,beta voidptr, y voidptr, incy int)
fn zaxpby(n int, alpha voidptr, x voidptr, incx int,beta voidptr, y voidptr, incy int)
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
