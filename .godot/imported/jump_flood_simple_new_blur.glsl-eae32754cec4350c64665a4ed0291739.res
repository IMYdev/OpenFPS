RSRC                    RDShaderFile            ��������                                                  resource_local_to_scene    resource_name    bytecode_vertex    bytecode_fragment    bytecode_tesselation_control     bytecode_tesselation_evaluation    bytecode_compute    compile_error_vertex    compile_error_fragment "   compile_error_tesselation_control %   compile_error_tesselation_evaluation    compile_error_compute    script 
   _versions    base_error           local://RDShaderSPIRV_7uopa ;         local://RDShaderFile_mrp8m �4         RDShaderSPIRV          42  #                 2        GLSL.std.450                     main    )   r   �   �   �   �                           �       main         z_compare(f1;f1;f1;   	   a     
   b        sze  
    interleaved_gradient_noise(vf2;      uv       safenorm(vf2;        v        jitter_tile(vf2;         uvi   '   Params    '       motion_blur_samples  	 '      motion_blur_intensity    	 '      motion_blur_center_fade   '      frame    	 '      last_iteration_index     	 '      sample_step_multiplier   	 '      step_exponent_modifier    '      max_dilation_radius   '      nan0      '   	   nan1      '   
   nan2      '      nan3      )   params    6   magic     H   l     \   angle     a   param     f   rx    i   ry    r   tile_max         render_size   �   color_sampler     �   uvi   �   gl_GlobalInvocationID     �   x     �   velocity_map_sample   �   velocity_map      �   param     �   vnz   �   vn_length     �   multiplier    �   vn    �   col_x     �   wn    �   param     �   vxz   �   velocity_sampler      �   vx_length       vx      output_image        velocity_match    :  zx    >  j     A  param     D  weight    F  sum   J  nai_weight    K  nai_sum   O  final_sample_count    R  i     ]  t     i  nai_y     r  T     w  y     �  nai_vy    �  nai_zy    �  nai_b     �  param     �  param     �  param     �  nai_ay    �  vy    �  vy_length     �  zy    �  f     �  param     �  param     �  param     �  wa    �  ay_trail      �  y_inside    H  '       #       H  '      #      H  '      #      H  '      #      H  '      #      H  '      #      H  '      #      H  '      #      H  '      #       H  '   	   #   $   H  '   
   #   (   H  '      #   ,   G  '      G  r   "       G  r   !      G  �   "       G  �   !       G  �         G  �   "       G  �   !      G  �   "       G  �   !      G    "       G    !      G       G               !                             !                                        !           !           +          �?+     "         &            '                           &   &   &   &      (   	   '   ;  (   )   	   +  &   *         +   	      +     .   ��B+     /   =
=A,     0   .   /     4            5      4   +     7   Cq�=+     8   �E�;+     9   ��SB,  4   :   7   8   9     ;           +  ;   <      +     K   �7�5+     R      ?  S   +  &   U       +  &   V      +     ^      @,     _   ^   "   +     c   �I@ 	 o                              p   o      q       p   ;  q   r         u   &      +     y     �@   ~      u   ;  q   �         �   ;         �      �   ;  �   �        �   ;      +  ;   �          �      &   +  ;   �      ,     �   R   R   ;  q   �         �         +  &   �      +     �     �    �      �   ;  q   �        	                                      ;          +     (    zD+  ;   ;     +     E  ��'7+     ^    ��+     �   @�F+  ;        ,  �         �   6               �     ;  ~         ;  ~   �      ;     �      ;     �      ;     �      ;  5   �      ;     �      ;     �      ;     �      ;  �   �      ;     �      ;     �      ;  �   �      ;     �      ;          ;          ;     :     ;     >     ;     A     ;     D     ;  �   F     ;     J     ;  �   K     ;     O     ;  �   R     ;     ]     ;     i     ;     r     ;     w     ;  �   �     ;     �     ;     �     ;     �     ;     �     ;     �     ;     �     ;  �   �     ;     �     ;     �     ;     �     ;     �     ;     �     ;     �     ;     �     ;     �     ;     �     =  p   �   �   d  o   �   �   g  u   �   �   U   Q  &   �   �       Q  &   �   �      P  u   �   �   �   >     �   =  �   �   �   O  �   �   �   �          |  u   �   �   >  �   �   A  �   �   �   �   =  &   �   �   A  �   �      �   =  &   �   �   �  S   �   �   �   �  S   �   �   �  �       �  �   �   �   �  �   A  �   �   �   �   =  &   �   �   A  �   �      �   =  &   �   �   �  S   �   �   �   �  �   �  �   �  S   �   �      �   �   �  �       �  �   �   �   �  �   �  �  �   =  u   �   �   o     �   �   �     �   �   �   =  u   �      o     �   �   �     �   �   �   >  �   �   =  p   �   �   =     �   �   =  u   �   �   o     �   �   >  �   �   9     �      �   �     �   �   �   X  �   �   �   �      "   O     �   �   �          >  �   �   =  p   �   r   =     �   �   X  �   �   �   �      "   O  4   �   �   �             =  u   �      o     �   �   Q     �   �       Q     �   �      P  4   �   �   �      �  4   �   �   �   >  �   �   =  4   �   �   O     �   �   �               �      B   �        �      (   R   �   >  �   �   =     �   �   A  +   �   )   �   =     �   �   =     �   �   A  +   �   )   V   =     �   �   �     �   �   �        �      %   �   �        �      +   �   "   �   =     �   �        �      (   �   �   �     �   �   �   >  �   �   =     �   �   =  4   �   �   �  4   �   �   �   >  �   �   =     �   �   =     �   �   �     �   �   �   >  �   �   =  4   �   �   O     �   �   �          >  �   �   =  p   �   �   =     �   �   X  �   �   �   �      "   >  �   �   =     �   �   >  �   �   9     �      �   >  �   �   =  p   �   �   =     �   �   X  �   �   �   �      "   =  u   �      o     �   �   Q     �   �       Q     �   �      P  �   �   �   �         �  �   �   �   �   >  �   �   =  �   �   �   O     �   �   �               �      B   �        �      (   R   �   >  �   �   =     �   �   A  +   �   )   �   =     �   �   =     �   �   A  +   �   )   V   =     �   �   �     �   �   �        �      %   �   �              +   �   "   �   =       �             (   �     �            >  �     =       �   =  �     �   O  4                   �  4         A       �   �   Q     	        >    	  A     
  �   �   Q            >  
    A       �   <   Q            >      =       �   =       �   �           >  �     =  �     �   O                  >      =       �   �  S       R   �        �        �    =        =  u     �   =  �     �   c        �  �    =          =     !  �   �     "     !  =     #  �   =     $  �   �     %  #  $  �     &  "  %       '     +   &  "      A     )  �   <   =     *  )       +        *  �     ,  (  +  �     -     ,       .        '  -  >    .  =     /  �   =     0    =     1    P     2  1  1       3     .   /  0  2  >  �   3  =  4   4  �   =  �   5  �   O  4   6  5  5            =     7    P  4   8  7  7  7    4   9     .   4  6  8  >  �   9  A     <  �   ;  =     =  <  >  :  =  =  u   ?  �   o     @  ?  >  A  @  9     B     A  �     C  B  R   >  >  C  >  D  E  =  �   G  �   =     H  D  �  �   I  G  H  >  F  I  >  J  E  =  �   L  �   =     M  D  �  �   N  L  M  >  K  N  A  +   P  )   U   =     Q  P  >  O  Q  >  R  U   �  S  �  S  �  U  V      �  W  �  W  =  &   X  R  o     Y  X  A  +   Z  )   U   =     [  Z  �  S   \  Y  [  �  \  T  U  �  T  =  &   _  R  o     `  _  =     a  >  �     b  `  a  �     c  b     A  +   d  )   U   =     e  d  �     f  e     �     g  c  f       h     .   "   ^  g  >  ]  h  =     j  �   =     k    =  u   l     o     m  l  �     n  k  m  =     o  ]  �     p  n  o  �     q  j  p  >  i  q  =     s  ]  =     t  �   �     u  s  t       v        u  >  r  v  =     x  �   =     y  �   =  u   z     o     {  z  �     |  y  {  =     }  ]  �     ~  |  }  �       x  ~  >  w    =  p   �  �   =     �  i  X  �   �  �  �     "   =  u   �     o     �  �  Q     �  �      Q     �  �     P  �   �  �  �        �  �   �  �  �  >  �  �  A     �  �  ;  =     �  �  A     �  �   <   =     �  �  =     �  ]  �     �  �  �  �     �  �  �  >  �  �  =     �  :       �  �  =     �  �       �  �  >  �  �  >  �  �  >  �  �  9     �     �  �  �  >  �  �  =     �  �  >  �  �  =     �  J  �     �  �     >  J  �  =  �   �  �   =  p   �  �   =     �  i  X  �   �  �  �     "   =     �  �  P  �   �  �  �  �  �    �   �     .   �  �  �  =  �   �  K  �  �   �  �  �  >  K  �  =  p   �  �   =     �  w  X  �   �  �  �     "   =  u   �     o     �  �  Q     �  �      Q     �  �     P  �   �  �  �        �  �   �  �  �  >  �  �  =  �   �  �  O     �  �  �              �     B   �       �     (   R   �  >  �  �  A     �  �  ;  =     �  �  A     �  �   <   =     �  �  =     �  ]  �     �  �  �  �     �  �  �  >  �  �  =     �  �       �  �  =     �  :       �  �  >  �  �  >  �  �  >  �  �  9     �     �  �  �  >  �  �  =  �   �  �  O     �  �  �         =     �  �  P     �  �  �  �     �  �  �  =     �  �   �     �  �  �       �     (   "   �       �        �  >  �  �  =     �  �  =     �  r  =     �  �  =     �  �  �     �  �  �       �     0   �  �  �     �  �  �  >  �  �  A     �  w  �   =     �  �       �     0   "   �  A     �  w  �   =     �  �       �     0   �     �     �  �  �  A     �  w  �   =     �  �       �     0   "   �  �     �  �  �  A     �  w  �   =     �  �       �     0   �     �     �  �  �  >  �  �  =     �  �  =     �  �  �     �  �  �  =     �  D  �     �  �  �  >  D  �  =  p   �  �   =     �  w  X  �   �  �  �     "   =     �  �  �  �   �  �  �  =     �  �  �  �   �  �  �  =  �   �  F  �  �   �  �  �  >  F  �  �  V  �  V  =  &   �  R  �  &   �  �  V   >  R  �  �  S  �  U  =     �  D  =  �   �  F  P  �   �  �  �  �  �  �  �   �  �  �  >  F  �  =     �  O  =        D  �          �  >  D    =       J  =  �     K  P  �             �  �         >  K    =       O  =       J  �           >  J    =  �   	  K  =  �   
  F  =       D  P  �               �        .   	  
    >  F    =        =  u     �   =  �     F  c        �  8  6               7     	   7     
   7        �     =           =        	   =        
   �              �               �     !               #      +   !   "      �  #   8  6               7        �     ;  5   6      A  +   ,   )   *   =     -   ,   �     1   0   -   =     2      �     3   2   1   >     3   >  6   :   A     =   6   <   =     >   =   =     ?      =  4   @   6   O     A   @   @          �     B   ?   A        C      
   B   �     D   >   C        E      
   D   �  E   8  6               7        �     ;     H      =     I           J      B   I        L      (   J   K   >  H   L   =     M      =     N   H   P     O   N   N   �     P   M   O   =     Q   H   �  S   T   Q   R   �  &   W   T   V   U   o     X   W   �     Y   P   X   �  Y   8  6               7        �     ;     \      ;     a      ;     f      ;     i      =     ]      �     `   ]   _   >  a   `   9     b      a   �     d   b   c   �     e   d   ^   >  \   e   =     g   \        h         g   >  f   h   =     j   \        k         j   >  i   k   =     l   f   =     m   i   P     n   l   m   =  p   s   r   d  o   t   s   g  u   v   t   U   o     w   v   �     x   n   w   P     z   y   y   �     {   x   z   �  {   8           RDShaderFile                                    RSRC