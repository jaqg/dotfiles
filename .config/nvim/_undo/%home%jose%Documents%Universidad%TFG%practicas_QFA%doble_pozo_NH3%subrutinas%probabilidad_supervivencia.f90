Vim�UnDo� `�@IY�aꃟ���h�r7���E������   &   L                    E0 = E_wp(i) * EHAJ          ! Energia del nivel v=1 en       L                       b�md   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             b��     �         5              �         5    �         4    5��                          I                      �                         I                     �                        Q               ,      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          b��     �         A      6    real*8, dimension(:), allocatable, intent(in) :: a       integer, intent(out) :: n           if (allocated(a)) then           n = size(a)   %        write(*,*) 'size (subr) =', n            write(*,*) 'matrix =', a   
    end if       
    return   end subroutine size_matriz�         A          implicit none5��                          n                      �                          �                      �                          �                      �                          �                      �                          �                      �    	                                           �    
                      5                     �                          c                     �                          �                     �                          �                     �                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          b��#     �         A    5��                          �              	       �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          b��$    �                        �      	   B              5��                          �                      �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          b��'     �          C       �          B    5��                                                  �                                                  �                                              �        	                 	                     �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                          b��6    �          C      4! Modulo para el calculo de la supervivencia general5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                       )           v        b��	     �          C      /            write(*,*) 'size(c_i) =', size(c_i)   .            write(*,*) 'size(E) =', size(E_wp)   )            write(*,*) 'c_i(1) =', c_i(1)   )            write(*,*) 'c_i(2) =', c_i(2)   (            write(*,*) 'E(1) =', E_wp(1)   (            write(*,*) 'E(2) =', E_wp(2)               write(*,*) 't =', t   %            write(*,*) 'EHAJ =', EHAJ   !            write(*,*) 'HP =', HP   !            write(*,*) 'pi =', pi       *            hbar = HP/(2.d0*pi)     ! J·s5��                                 �              5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  v        b��
    �                 5��                          �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                               !                  v        b��3     �         7      $        subroutine size_matriz(a, n)               implicit none   >            real*8, dimension(:), allocatable, intent(in) :: a   %            integer, intent(out) :: n       "            if (allocated(a)) then                   n = size(a)   -                write(*,*) 'size (subr) =', n   (                write(*,*) 'matrix =', a               end if                   return   "        end subroutine size_matriz5��              "           �       �              5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                               !                  v        b��4     �                 5��                          �                      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                               !                  v        b��4    �                 5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        b��W     �         )      %            write(*,*) 'hbar =', hbar   #            write(*,*) 't_s =', t_s   3            write(*,*) 'numero_func =', numero_func                   Ps = 0.d05��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        b��X   	 �         %    5��                                               �                                               5�_�                        L    ����                                                                                                                                                                                                                                                                                                                               M          L          L    b�mc   
 �         &      L                    E0 = E_wp(i) * EHAJ          ! Energia del nivel v=1 en �         &      N                    E0 = E_wp(i) * EHAJ          ! Energia del nivel v=1 en Ha   N                    E1 = E_wp(j) * EHAJ          ! Energia del nivel v=1 en Ha5��       L                  �                     �       L                                       �       L                  �                     �       L                                       5��