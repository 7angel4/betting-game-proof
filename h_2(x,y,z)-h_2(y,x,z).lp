\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0.0277777777777778 single_ind_3*x_<=_y
   + 0.0277777777777778 single_ind_2*x_<=_z
   + 0.0277777777777778 single_ind_2*x_<=_y
   + 0.0277777777777778 single_ind_3*x_<=_z
   + 0.0277777777777778 single_ind_x_<=_-y_+_z
   - 0.0277777777777778 single_ind_3*y_<=_z
   - 0.0277777777777778 single_ind_y_<=_3*x
   - 0.0277777777777778 single_ind_y_<=_2*x
   - 0.0277777777777778 single_ind_x_<=_-y_+_z
Subject To
 V1: x - y <= -1
 V2: y - z <= -1
 GC0: single_ind_3*x_<=_y = 1 -> - 3 x + y >= 0
 GC1: single_ind_3*x_<=_y = 0 -> - 3 x + y <= -1
 GC2: single_ind_2*x_<=_z = 1 -> - 2 x + z >= 0
 GC3: single_ind_2*x_<=_z = 0 -> - 2 x + z <= -1
 GC4: single_ind_2*x_<=_y = 1 -> - 2 x + y >= 0
 GC5: single_ind_2*x_<=_y = 0 -> - 2 x + y <= -1
 GC6: single_ind_3*x_<=_z = 1 -> - 3 x + z >= 0
 GC7: single_ind_3*x_<=_z = 0 -> - 3 x + z <= -1
 GC8: single_ind_x_<=_-y_+_z = 1 -> - x - y + z >= 0
 GC9: single_ind_x_<=_-y_+_z = 0 -> - x - y + z <= -1
 GC10: single_ind_3*y_<=_z = 1 -> - 3 y + z >= 0
 GC11: single_ind_3*y_<=_z = 0 -> - 3 y + z <= -1
 GC12: single_ind_y_<=_3*x = 1 -> 3 x - y >= 0
 GC13: single_ind_y_<=_3*x = 0 -> 3 x - y <= -1
 GC14: single_ind_y_<=_2*x = 1 -> 2 x - y >= 0
 GC15: single_ind_y_<=_2*x = 0 -> 2 x - y <= -1
 GC16: single_ind_x_<=_-y_+_z = 1 -> - x - y + z >= 0
 GC17: single_ind_x_<=_-y_+_z = 0 -> - x - y + z <= -1
Bounds
 x >= 1
 y >= 2
 z >= 3
Binaries
 single_ind_3*x_<=_y single_ind_2*x_<=_z single_ind_2*x_<=_y
 single_ind_3*x_<=_z single_ind_x_<=_-y_+_z single_ind_3*y_<=_z
 single_ind_y_<=_3*x single_ind_y_<=_2*x single_ind_x_<=_-y_+_z
Generals
 x y z
End
