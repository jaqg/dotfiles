Vim�UnDo� �Y3���&��u%�l0��t�L���ݏTD�      K            cuadratica = (k/2.) * ((((float(j)+1)*(float(j)+2))**(1./2.))/&            	       	   	   	    bUHS    _�                             ����                                                                                                                                                                                                                                                                                                                                                             bUD     �                   COMMON k,hbar,m5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             bUG�     �               -function cuad(i,j,d,alpha) result(cuadratica)5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       bUG�     �                   real*8 :: k,hbar,m5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       bUG�     �      	         "    real*8, intent(in) :: d, alpha5��                        P                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       bUG�     �   
                 ! Valor optimizado de k5��    
                      s                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       bUG�     �   
                  ! k = (hbar**2 * alpha**2)/m5��    
                      s      !               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       bUHK     �               6        cuadratica = (k/2.) * ((float(i)+1./2.)/alpha)5��              	           �      	               5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                         !       v   !    bUHO     �               K            cuadratica = (k/2.) * ((((float(i)+1)*(float(i)+2))**(1./2.))/&5��              	           *      	               5�_�                  	          ����                                                                                                                                                                                                                                                                                                                                         !       v   !    bUHR    �               K            cuadratica = (k/2.) * ((((float(j)+1)*(float(j)+2))**(1./2.))/&5��              	           �      	               5��