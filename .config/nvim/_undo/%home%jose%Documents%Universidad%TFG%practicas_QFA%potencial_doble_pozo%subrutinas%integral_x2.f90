Vim�UnDo� ����
��eJ09h�8��#1�o蒢~:�q�<          real*8, intent(in) :: a, d                             b�    _�                     	       ����                                                                                                                                                                                                                                                                                                                                                             b��     �      
   +          real*8, intent(in) :: d5��                        Q                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                         6       v   6    b��     �         +      :        cuadratica = (1./2.) * (hbar*alpha(i,j,d))**2/m *&5��              "          ;      "              5�_�                           ����                                                                                                                                                                                                                                                                                                                                         6       v   6    b��     �         +              cuadratica = a *   4                     ((float(i)+1./2.)/alpha(i,j,d))�         +              cuadratica = a *&5��                         >                     �                         >                     �                         >                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                         ?       v���    b��     �         )      [            cuadratica =                          ((((float(i)+1)*(float(i)+2))**(1./2.))/&�         *      ?            cuadratica = (1./2.) * (hbar*alpha(i,j,d))**2/m * &   B                         ((((float(i)+1)*(float(i)+2))**(1./2.))/&5��                         �      '               �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                           =       v   =    b��     �      !   )                  cuadratica = a *    B                         ((((float(j)+1)*(float(j)+2))**(1./2.))/&�      !   )      >            cuadratica = (1./2.) * (hbar*alpha(i,j,d))**2/m *&5��              %          3      %              �                         7                     �                         7                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                           =       v   =    b��    �         (      )function cuad(i, j, d) result(cuadratica)5��                         �                      5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                       (          v���    bߗ     �                 5��                          �                      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                       '          v���    bߦ     �         '      ,function cuad(i, j, a, d) result(cuadratica)5��                         �                      5�_�   
                 
        ����                                                                                                                                                                                                                                                                                                                            
                     v���    b��     �   	      '   	       interface   /        function alpha(i,j,d) result(alpha_val)               implicit none   &            integer, intent(in) :: i,j   #            real*8, intent(in) :: d               real*8 :: alpha_val           end function alpha       end interface    5��    	                      x      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                            
                      v        b�     �                +                         (2.*alpha(i,j,d)))�                +                         (2.*alpha(i,j,d)))�                8        cuadratica = a * ((float(i)+1./2.)/alpha(i,j,d))�                   ! alpha = alpha(i,j,d)5��                        �                    �       +                 c                    �                        	                    �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                            
                      v        b�    �      	             real*8, intent(in) :: a, d5��                         ^                     5�_�             	              ����                                                                                                                                                                                                                                                                                                                                                 v���    b�     �      )           �              �                -function cuad(i,j,d,alpha) result(cuadratica)       COMMON k,hbar,m       real*8 :: k,hbar,m       integer, intent(in) :: i, j   "    real*8, intent(in) :: d, alpha       real*8 :: cuadratica           ! Valor optimizado de k        ! k = (hbar**2 * alpha**2)/m       if (i==j) then   !        ! n = float(i) = float(j)   6        cuadratica = (k/2.) * ((float(i)+1./2.)/alpha)   $    elseif (i==j+2 .or. j==i+2) then           if (i<j) then   K            cuadratica = (k/2.) * ((((float(i)+1)*(float(i)+2))**(1./2.))/&   $                         (2.*alpha))           else   K            cuadratica = (k/2.) * ((((float(j)+1)*(float(j)+2))**(1./2.))/&   $                         (2.*alpha))           end if           ! n = float(i)       else           cuadratica = 0.   
    end if   
    return   end function cuad5��           #              �       <              �                         �               �      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 v���    b�    �              5��                          �                      5��