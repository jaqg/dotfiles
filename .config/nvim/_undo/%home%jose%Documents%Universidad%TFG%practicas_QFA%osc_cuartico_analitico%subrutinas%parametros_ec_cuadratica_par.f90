Vim�UnDo� n4���z���D�x
,x�?�78v����      +end subroutine parametros_ec_cuadratica_par                              bJ    _�                             ����                                                                                                                                                                                                                                                                                                                                                             bJ�     �                   �               5��                                         {      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             bJ�     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             bJ�    �                 �               +end subroutine parametros_ec_cuadratica_par5��       +                  y                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                          +       v���    bJ    �                  O! -----------------------------------------------------------------------------   F! Subrutina para calcular los parametros de la ecuacion cuadratica par   O! -----------------------------------------------------------------------------   Bsubroutine parametros_ec_cuadratica_par(H00, H22, H02, a2, a1, a0)   '    real*8, intent(in) :: H00, H22, H02   %    real*8, intent(out) :: a0, a1, a2       D    ! Las expresiones encontradas para los parametros de la ecuacion       ! caracteristica:       !       ! a2 W^2 + a1 W + a0 = 0       !   
    ! son:       a2 = 1.       a1 = -H22 -H00       a0 = H00 * H22 - H02**2   
    return   +end subroutine parametros_ec_cuadratica_par5��               +                   y              5��