Vim�UnDo� ��׎:�i���4�6I��Wh�D��YJ�K��@!   {   Lax.plot(x, ( Phi3*multiplicador)+E[3], label=r'$\left| \Phi_{1^+} \right>$')   q   ?                       b�V    _�                     0       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   /   1   �      .nombre_grafica = 'funciones_y_potencial_3.pdf'5��    /                     
                     5�_�                    0   -    ����                                                                                                                                                                                                                                                                                                                                                             b��     �   /   1   �      4nombre_grafica = 'funciones_solas_y_potencial_3.pdf'5��    /   -                  
                     5�_�                    0   -    ����                                                                                                                                                                                                                                                                                                                                                             b��    �   /   1   �      3nombre_grafica = 'funciones_solas_y_potencial3.pdf'5��    /   -                  
                     5�_�                    C       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   B   D   �      width = 7.2*2/1.55��    B                                          5�_�                    C       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   B   D   �      width = 7.22/1.55��    B                                          5�_�                    F       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   E   G   �      Pfig, axs = plt.subplots(2,2 , figsize=(width, height), sharey=True, sharex=True)5��    E                     F                     5�_�                    F       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   E   G   �      Ofig, axs = plt.subplots(,2 , figsize=(width, height), sharey=True, sharex=True)5��    E                     F                     5�_�      	              L       ����                                                                                                                                                                                                                                                                                                                                                             b�	     �   K   M   �      ax = axs[0][0]5��    K                     t                     5�_�      
           	   c       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   b   d   �      ax = axs[1][0]5��    b                     �                     5�_�   	              
   c       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   b   d   �      ax = axs[1]0]5��    b                     �                     5�_�   
                 c       ����                                                                                                                                                                                                                                                                                                                                                             b�     �   b   d   �      ax = axs[1]]5��    b                     �                     5�_�                    y        ����                                                                                                                                                                                                                                                                                                                            y           �           v        b�     �   x   z   �   .   ,# ==========================================   ax = axs[0][1]   ,# ==========================================   Fax.hlines(y=E[0], xmin=-x1(0), xmax=-x2(0), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[0], xmin= x1(0), xmax= x2(0), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[1], xmin=-x1(1), xmax=-x2(1), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[1], xmin= x1(1), xmax= x2(1), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[2], xmin=-x1(2), xmax=-x2(2), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[2], xmin= x1(2), xmax= x2(2), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[3], xmin=-x1(3), xmax=-x2(3), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[3], xmin= x1(3), xmax= x2(3), lw=1.0, ls='-', color='k')   0ax.plot(x, V, lw=grosor_potencial, color='gray')   Nax.plot(x, (dPhi0*multiplicador)+E[0], label=r'$\left| \Phi_{0^+} \right|^2$')   Nax.plot(x, (dPhi2*multiplicador)+E[2], label=r'$\left| \Phi_{1^+} \right|^2$')   Iax.fill_between(x, (dPhi0*multiplicador)+E[0], E[0], alpha=transparencia)   Iax.fill_between(x, (dPhi2*multiplicador)+E[2], E[2], alpha=transparencia)   ax.set_xlim(xmin,xmax)   ax.set_ylim(ymin,ymax)   ax.legend(loc='upper right')   l# ax.text(x=-xe, y=-3.3, s=r'$-x_e$', fontsize=18, horizontalalignment='center', verticalalignment='center')   f# ax.text(x=-0.9, y=2.9, s=r'$v=0$', fontsize=18, horizontalalignment='left', verticalalignment='top')       ,# ==========================================   ax = axs[1][1]   ,# ==========================================   Fax.hlines(y=E[0], xmin=-x1(0), xmax=-x2(0), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[0], xmin= x1(0), xmax= x2(0), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[1], xmin=-x1(1), xmax=-x2(1), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[1], xmin= x1(1), xmax= x2(1), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[2], xmin=-x1(2), xmax=-x2(2), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[2], xmin= x1(2), xmax= x2(2), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[3], xmin=-x1(3), xmax=-x2(3), lw=1.0, ls='-', color='k')   Fax.hlines(y=E[3], xmin= x1(3), xmax= x2(3), lw=1.0, ls='-', color='k')   0ax.plot(x, V, lw=grosor_potencial, color='gray')   Nax.plot(x, (dPhi1*multiplicador)+E[1], label=r'$\left| \Phi_{0^-} \right|^2$')   Nax.plot(x, (dPhi3*multiplicador)+E[3], label=r'$\left| \Phi_{1^-} \right|^2$')   Iax.fill_between(x, (dPhi1*multiplicador)+E[1], E[1], alpha=transparencia)   Iax.fill_between(x, (dPhi3*multiplicador)+E[3], E[3], alpha=transparencia)   ax.set_xlim(xmin,xmax)   ax.set_ylim(ymin,ymax)   ax.legend(loc='upper right')   ax.set(xlabel=r'$x\ (\AA)$')   l# ax.text(x=-xe, y=-3.3, s=r'$-x_e$', fontsize=18, horizontalalignment='center', verticalalignment='center')   f# ax.text(x=-0.9, y=2.9, s=r'$v=0$', fontsize=18, horizontalalignment='left', verticalalignment='top')        5��    x       -               �      e
              5�_�                    q   ?    ����                                                                                                                                                                                                                                                                                                                            y           y           v        b�T     �   p   r   {      Lax.plot(x, ( Phi3*multiplicador)+E[3], label=r'$\left| \Phi_{1^+} \right>$')5��    p   ?                 �                    5�_�                     q   ?    ����                                                                                                                                                                                                                                                                                                                            y           y           v        b�U    �   p   r   {      Lax.plot(x, ( Phi3*multiplicador)+E[3], label=r'$\left| \Phi_{1^.} \right>$')5��    p   ?                 �                    5��