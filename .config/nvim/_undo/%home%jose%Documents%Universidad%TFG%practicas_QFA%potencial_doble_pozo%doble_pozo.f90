Vim�UnDo� ,_�]Z������Q,N��A�� �P>P`8   �   +                H_mat(i,j) = H(i-1,j-1,a,d)   {   *      6       6   6   6    b��    _�                     )        ����                                                                                                                                                                                                                                                                                                                                                             b�u     �   (   +   �       �   (   *   �    5��    (                      S                     �    (                   .   S              .       �    (   -                 �                    �    (   5                  �                     �    )                      �                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   )   +   �      rcons5��    )                     �                    �    )                     �                    5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   )   +   �      real, parameter :: 5��    )                     �                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b��    �   )   +   �      real, parameter :: a=-1.05��    )                     �                     5�_�                    t   '    ����                                                                                                                                                                                                                                                                                                                                                             b��     �   s   u   �      )                H_mat(i,j) = H(i-1,j-1,d)5��    s   '                  �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       b��     �   �              endprogram problema_autovalores5��    �                 
   K             
       5�_�                           ����                                                                                                                                                                                                                                                                                                                            �          �          v       b��     �   
      �      program problema_autovalores5��    
                    P                    �    
                    U                    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                            �          �          v       b��     �         �      *! Fecha de creación: 5 de febrero de 20225��                        �                     5�_�      
           	   F       ����                                                                                                                                                                                                                                                                                                                            �          �          v       b��    �   E   G   �      5open(unit=1, file="data/in-problema_autovalores.dat")5��    E                 
   9	             
       5�_�   	              
   N        ����                                                                                                                                                                                                                                                                                                                                                             b�     �   N   P   �    �   N   O   �    5��    N                      O
              9       5�_�   
                 O   
    ����                                                                                                                                                                                                                                                                                                                                                             b�     �   N   P   �      8open(unit=2, file="data/out-energias_variacionales.dat")5��    N   
                 Y
                    5�_�                    O   2    ����                                                                                                                                                                                                                                                                                                                                                             b�     �   N   P   �      8open(unit=5, file="data/out-energias_variacionales.dat")5��    N   2                  �
                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             b�h     �   �   �   �       �   �   �   �    5��    �                      :                     �    �                      :                     �    �                     <                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             b�j     �   �   �   �      cl5��    �                     :                    �    �                     :             
       �    �                     :      
              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             b�k     �   �   �   �      close()5��    �                    @                    �    �                     B                     �    �                      C                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             b�m     �   �   �   �      cl5��    �                     C                    �    �                     C             
       �    �                     C      
              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             b�n     �   �   �   �      close()5��    �                     I                     5�_�                    W        ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b�}     �   V   [   �       �   W   X   �    5��    V                      �              y       5�_�                    W       ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b��     �   V   X   �      write(4,9994)5��    V                    �                    5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b��     �   W   Y   �      F9994 format(2x, 'd', 5x,'Phi_0', 5x,'Phi_1', 5x,'Phi_2', 5x,'Phi_3', &5��    W                    �                    5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b��     �   W   Y   �      F9993 format(2x, 'd', 5x,'Phi_0', 5x,'Phi_1', 5x,'Phi_2', 5x,'Phi_3', &5��    W                    �                    5�_�                    X   !    ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b��     �   W   Y   �      B9993 format(2x, 'd', 5x,'N', 5x,'Phi_1', 5x,'Phi_2', 5x,'Phi_3', &5��    W   !                 �                    5�_�                    X   *    ����                                                                                                                                                                                                                                                                                                                            T           V   #       v���    b��     �   W   Y   �      ?9993 format(2x, 'd', 5x,'N', 5x,'W1', 5x,'Phi_2', 5x,'Phi_3', &5��    W   *                 �                    5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            Y   "       X           v        b��     �   X   Z   �    �   W   Z   �       �   X   Y   �    �   W   Y   �      ;9993 format(2x, 'd', 5x,'N', 5x,'W1', 5x,'W', 5x,'Phi_3', &   #            5x,'Phi_4', 5x,'Phi_5')5��    W          #           �      _               �    W                     �              N       5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            Y           Y   K       v        b��     �   W   X           5��    W                      �                     5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��     �   W   Y   �      L    9998 format (2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', 8x, 'W4',&5��    W                      �                     5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��     �   W   Y   �      H9998 format (2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', 8x, 'W4',&5��    W                    �                    5�_�                    W       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��     �   V   X   �      write(4,9993)5��    V                    �                    5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��     �   W   Y   �      H9993 format (2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', 8x, 'W4',&5��    W                  	   �              	       5�_�                    X   G    ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��     �   W   Z   �      Q9993 format (2x, 'd', 2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', 8x, 'W4',&5��    W   G                  �                     �    W   H                  �                     �    X                      �                     5�_�                     Y       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b��    �   X   Z   �                   8x, 'W4',&5��    X                                        �    X                                        5�_�      !               W       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b�#     �   V   X   �      write(5,9993)5��    V                    �                    5�_�       "           !   X       ����                                                                                                                                                                                                                                                                                                                            X           X   K       v        b�&    �   W   Y   �      H9993 format (2x, 'd', 2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', &5��    W                    �                    5�_�   !   #           "   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�!     �   �   �   �              �   �   �   �    �   �   �   �    5��    �                      -              	       �    �                     5              �       5�_�   "   $           #   �        ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�&     �   �   �           5��    �                      !                     5�_�   #   %           $   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�*     �   �   �   �      S                 write(2,9997) N, E(1:1), E(2:2), E(3:3), E(4:4), E(5:5), E(6:6), &5��    �          	           5      	               5�_�   $   &           %   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�,     �   �   �   �      L            9997 format(1x, i2.1, f10.5, f10.5, f10.5, f10.5, f10.5, f10.5,&5��    �                     �                     5�_�   %   '           &   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�0     �   �   �   �      J        write(2,9997) N, E(1:1), E(2:2), E(3:3), E(4:4), E(5:5), E(6:6), &5��    �                    @                    5�_�   &   (           '   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�3     �   �   �   �      H        9997 format(1x, i2.1, f10.5, f10.5, f10.5, f10.5, f10.5, f10.5,&5��    �                    �                    5�_�   '   )           (   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�l     �   �   �   �      J        write(2,9990) N, E(1:1), E(2:2), E(3:3), E(4:4), E(5:5), E(6:6), &5��    �                     C                     5�_�   (   *           )   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�t     �   �   �   �              �   �   �   �    5��    �                      -              	       �    �                     5                     �    �   
                  7                     5�_�   )   +           *   �   
    ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�y     �   �   �   �      
        if5��    �                     -             *       �    �                     -      *       (       �    �                     -      (       #       �    �                     -      #       !       5�_�   *   ,           +   �       ����                                                                                                                                                                                                                                                                                                                            �          �   )       v���    b�z     �   �   �   �               if () then, cycle, exit 5��    �                     9                     5�_�   +   -           ,   �       ����                                                                                                                                                                                                                                                                                                                            �          �   #       v   #    b�|     �   �   �   �      %        if (N==10) then, cycle, exit 5��    �                    @                    5�_�   ,   .           -   �       ����                                                                                                                                                                                                                                                                                                                            �          �                 b��     �   �   �   �      (                          E(7:7), E(8:8)   H        9990 format(1x, i2.1, f10.5, f10.5, f10.5, f10.5, f10.5, f10.5,&�   �   �   �      M        write(2,9990) d, N, E(1:1), E(2:2), E(3:3), E(4:4), E(5:5), E(6:6), &5��    �                     M                     �    �                     �                     �    �                     �                     5�_�   -   /           .   �       ����                                                                                                                                                                                                                                                                                                                            �          �                 b��     �   �   �   �                              �   �   �   �    5��    �                      ;                     �    �                     ;                    �    �                    C                    �    �                    G                    5�_�   .   0           /   �       ����                                                                                                                                                                                                                                                                                                                            �          �                 b��   	 �   �   �   �      L            9990 format(1x, i2.1, f10.5, f10.5, f10.5, f10.5, f10.5, f10.5,&5��    �                     �                     �    �                    �                    5�_�   /   1           0   �       ����                                                                                                                                                                                                                                                                                                                            �          �                 b��   
 �   �   �   �      Q            write(2,9990) d, N, E(1:1), E(2:2), E(3:3), E(4:4), E(5:5), E(6:6), &5��    �                    W                    5�_�   0   2           1   X       ����                                                                                                                                                                                                                                                                                                                            �          �                 b��    �   W   Y   �      H9991 format (2x, 'd', 2x, 'N', 6x, 'W0', 8x, 'W1', 8x, 'W2', 8x, 'W3', &5��    W                    �                    5�_�   1   3           2   .       ����                                                                                                                                                                                                                                                                                                                                                             b�;     �   -   /   �      real*8 :: alpha_val5��    -                                          5�_�   2   4           3   d       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   e   f   �       �   c   g   �          �   d   e   �    �   c   e   �    5��    c                                           �    c                                   g       �    d                      u                     5�_�   3   5           4   d       ����                                                                                                                                                                                                                                                                                                                            d          e                 b��     �   c   f   �      I            ! Calcula el valor de alpha optimizado para la perturbacion d            call alpha_opt(d, alpha)5��    c                                          �    d                     U                     5�_�   4   6           5   d       ����                                                                                                                                                                                                                                                                                                                            d          e                 b��     �   c   e   �      E        ! Calcula el valor de alpha optimizado para la perturbacion d5��    c                                          5�_�   5               6   {   *    ����                                                                                                                                                                                                                                                                                                                            d          e                 b��    �   z   |   �      +                H_mat(i,j) = H(i-1,j-1,a,d)5��    z   *                                        5��