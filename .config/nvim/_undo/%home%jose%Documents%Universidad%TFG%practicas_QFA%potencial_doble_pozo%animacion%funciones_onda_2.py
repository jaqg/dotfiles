Vim�UnDo� 'n�(��(\�}G{�f��]i~X����J�����  &           plt.ylim(-3,3)                            b��    _�                    #   !    ����                                                                                                                                                                                                                                                                                                                                                             b��     �  "  $  &      manim.save('videos/funciones_onda_1_d{}.mp4'.format(d_vals[d_ind]), fps=30, extra_args=['-vcodec', 'libx264'])5��    "  !                 �%                    5�_�                   #   !    ����                                                                                                                                                                                                                                                                                                                           #   !      #   "       v   "    b��     �  "  $          manim.save('videos/funciones_onda_2_d{}.mp4'.format(d_vals[d_ind]), fps=30, extra_args=['-vcodec', 'libx264'])5��    "          m       o   �%      m       o       5�_�                   %   
    ����                                                                                                                                                                                                                                                                                                                           %         %   
       v   
    b��     �  $  &          # plt.show()5��    $                 
   >&             
       5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�     �   �   �          ,    ax.plot(x,y5,  label=r'$\Phi_2\,(x,t)$')5��    �           ,       .   �      ,       .       5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�     �   �   �          ,    ax.plot(x,y7,  label=r'$\Phi_3\,(x,t)$')5��    �           ,       .   [      ,       .       5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�     �   �   �          ,    ax.plot(x,y9,  label=r'$\Phi_4\,(x,t)$')5��    �           ,       .   �      ,       .       5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�     �   �   �          ,    ax.plot(x,y11, label=r'$\Phi_5\,(x,t)$')5��    �           ,       .   9      ,       .       5�_�      	                    ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�    �      &              plt.ylim(-3,3)5��                       m"                    5�_�      
           	         ����                                                                                                                                                                                                                                                                                                                            �   	       �   
       v   
    b�(    �      &              plt.ylim(-3,1)5��                       m"                    5�_�   	              
   �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       b�B    �   �   �          X    ax.axhline(y=W5[d_ind],label=r'$W_5 = {:.5f}$'.format(W5[d_ind]),lw=1,color='black')�   �   �          X    ax.axhline(y=W4[d_ind],label=r'$W_4 = {:.5f}$'.format(W4[d_ind]),lw=1,color='black')�   �   �          X    ax.axhline(y=W3[d_ind],label=r'$W_3 = {:.5f}$'.format(W3[d_ind]),lw=1,color='black')�   �   �          X    ax.axhline(y=W2[d_ind],label=r'$W_2 = {:.5f}$'.format(W2[d_ind]),lw=1,color='black')5��    �           X       Z   �      X       Z       �    �           X       Z   	      X       Z       �    �           X       Z   d      X       Z       �    �           X       Z   �      X       Z       5�_�   
                       ����                                                                                                                                                                                                                                                                                                                            �          �          v       b�W    �      &              plt.ylim(-3,0.5)5��                       w"                    5�_�                          ����                                                                                                                                                                                                                                                                                                                            �          �          v       b�h     �      &              plt.ylim(-3,0.1)5��                        w"                     5�_�                          ����                                                                                                                                                                                                                                                                                                                            �          �          v       b�k    �      &              plt.ylim(-3,0.)5��                        w"                     5�_�                  %       ����                                                                                                                                                                                                                                                                                                                           %   	      %          v       b��     �  $  &          
plt.show()5��    $          
          P&      
              5�_�                    #       ����                                                                                                                                                                                                                                                                                                                           #         #   	       v   	    b��    �  "  $          o# anim.save('videos/funciones_onda_2_d{}.mp4'.format(d_vals[d_ind]), fps=30, extra_args=['-vcodec', 'libx264'])5��    "          o       m   �%      o       m       5�_�                          ����                                                                                                                                                                                                                                                                                                                            �          �          v       b�m   
 �      &              plt.ylim(-2.5,0.5)5��                       s"                    5��