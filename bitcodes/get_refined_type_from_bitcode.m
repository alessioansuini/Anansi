function ref_type = get_refined_type_from_bitcode(type, b)
    
switch type
    
    %%
    
    case 'wBlank'
        
        switch b
            
            case 1
                ref_type = 'wBlank_Stat';
            case 2
                ref_type = 'wBlank_Mov_Slow';
            case 3
                ref_type = 'wBlank_Mov_Fast';
        end
            
        
    %%
    case 'bBlank'
        
        switch b
            
            case 4
                ref_type = 'bBlank_Stat';
            case 5
                ref_type = 'bBlank_Mov_Slow';
            case 6
                ref_type = 'bBlank_Mov_Fast';
        end
        
        
    %%
        
    case 'grats_Stat'
        
        switch b
            
            %-------------------------------------
            %1
            
            case 7
                ref_type = 'grats_Stat_Sf_1_Ori_3';               
            case 8                
                ref_type = 'grats_Stat_Sf_2_Ori_3';                
            case 9 
                ref_type = 'grats_Stat_Sf_3_Ori_3';
            case 10
                ref_type = 'grats_Stat_Sf_4_Ori_3';
              
            %-------------------------------------
            %2   
                
            case 11
                ref_type = 'grats_Stat_Sf_1_Ori_2';
            case 12
                ref_type = 'grats_Stat_Sf_2_Ori_2';
            case 13
                ref_type = 'grats_Stat_Sf_3_Ori_2';
            case 14
                ref_type = 'grats_Stat_Sf_4_Ori_2';
                
            %-------------------------------------
            %3   
                
            case 15 
                ref_type = 'grats_Stat_Sf_1_Ori_1';                
            case 16
                ref_type = 'grats_Stat_Sf_2_Ori_1';
            case 17
                ref_type = 'grats_Stat_Sf_3_Ori_1';
            case 18
                ref_type = 'grats_Stat_Sf_4_Ori_1';
               
                
            %-------------------------------------
            %4
                
            case 19
                ref_type = 'grats_Stat_Sf_1_Ori_4';
            case 20 
                ref_type = 'grats_Stat_Sf_2_Ori_4';                
            case 21
                ref_type = 'grats_Stat_Sf_3_Ori_4';
            case 22
                ref_type = 'grats_Stat_Sf_4_Ori_4';
            
                
                
        end
        
        
        
        
    %%    
        
    case 'bars_Stat'
      
        ref_type = 'obj_Stat';
%         switch b
%             
%             case
%                 ref_type = '';
%             case
%                 ref_type = '';
%             case
%                 ref_type = '';
%             case
%                 ref_type = '';
%         end          
        
        
    %%
    
    
    case 'obj_Stat'
        
        ref_type = 'obj_Stat';
        
    %%    
        
        
    case 'grats_Mov'
        
        
        switch b
            
            %------------------------------------------
            %1
            
            case 167                
                ref_type = 'grats_Mov_Sf_1_Dir_5_Vel_0';                
            case 169                
                ref_type = 'grats_Mov_Sf_2_Dir_5_Vel_0';                
            case 171
                ref_type = 'grats_Mov_Sf_3_Dir_5_Vel_0';                
            case 173                
                ref_type = 'grats_Mov_Sf_4_Dir_5_Vel_0';       
                
                
            case 168                
                ref_type = 'grats_Mov_Sf_1_Dir_5_Vel_1';                
            case 170                
                ref_type = 'grats_Mov_Sf_2_Dir_5_Vel_1';                
            case 172
                ref_type = 'grats_Mov_Sf_3_Dir_5_Vel_1';                
            case 174                
                ref_type = 'grats_Mov_Sf_4_Dir_5_Vel_1';      
            
            %------------------------------------------   
            %2
                
            case 175               
                ref_type = 'grats_Mov_Sf_1_Dir_1_Vel_0';                
            case 177                
                ref_type = 'grats_Mov_Sf_2_Dir_1_Vel_0';                
            case 179
                ref_type = 'grats_Mov_Sf_3_Dir_1_Vel_0';                
            case 181                
                ref_type = 'grats_Mov_Sf_4_Dir_1_Vel_0'; 
                
            case 176              
                ref_type = 'grats_Mov_Sf_1_Dir_1_Vel_1';                
            case 178                
                ref_type = 'grats_Mov_Sf_2_Dir_1_Vel_1';                
            case 180
                ref_type = 'grats_Mov_Sf_3_Dir_1_Vel_1';                
            case 182                
                ref_type = 'grats_Mov_Sf_4_Dir_1_Vel_1';    
                
            %------------------------------------------
            %3
             
            case 183               
                ref_type = 'grats_Mov_Sf_1_Dir_3_Vel_0';                
            case 185                
                ref_type = 'grats_Mov_Sf_2_Dir_3_Vel_0';                
            case 187
                ref_type = 'grats_Mov_Sf_3_Dir_3_Vel_0';                
            case 189                
                ref_type = 'grats_Mov_Sf_4_Dir_3_Vel_0'; 
                
            case 184              
                ref_type = 'grats_Mov_Sf_1_Dir_3_Vel_1';                
            case 186                
                ref_type = 'grats_Mov_Sf_2_Dir_3_Vel_1';                
            case 188
                ref_type = 'grats_Mov_Sf_3_Dir_3_Vel_1';                
            case 190                
                ref_type = 'grats_Mov_Sf_4_Dir_3_Vel_1'; 
                                                                                       
            %------------------------------------------
            %4
            
            case 191               
                ref_type = 'grats_Mov_Sf_1_Dir_7_Vel_0';                
            case 193                
                ref_type = 'grats_Mov_Sf_2_Dir_7_Vel_0';                
            case 195
                ref_type = 'grats_Mov_Sf_3_Dir_7_Vel_0';                
            case 197                
                ref_type = 'grats_Mov_Sf_4_Dir_7_Vel_0'; 
               
            case 192           
                ref_type = 'grats_Mov_Sf_1_Dir_7_Vel_1';                
            case 194                
                ref_type = 'grats_Mov_Sf_2_Dir_7_Vel_1';                
            case 196
                ref_type = 'grats_Mov_Sf_3_Dir_7_Vel_1';                
            case 198                
                ref_type = 'grats_Mov_Sf_4_Dir_7_Vel_1'; 
            %------------------------------------------
            %5
            
            case 199              
                ref_type = 'grats_Mov_Sf_1_Dir_8_Vel_0';                
            case 201                
                ref_type = 'grats_Mov_Sf_2_Dir_8_Vel_0';                
            case 203
                ref_type = 'grats_Mov_Sf_3_Dir_8_Vel_0';                
            case 205                
                ref_type = 'grats_Mov_Sf_4_Dir_8_Vel_0'; 
               
            case 200           
                ref_type = 'grats_Mov_Sf_1_Dir_8_Vel_1';                
            case 202                
                ref_type = 'grats_Mov_Sf_2_Dir_8_Vel_1';                
            case 204
                ref_type = 'grats_Mov_Sf_3_Dir_8_Vel_1';                
            case 206                
                ref_type = 'grats_Mov_Sf_4_Dir_8_Vel_1';
            
            %------------------------------------------
            %6
            
           
            case 207             
                ref_type = 'grats_Mov_Sf_1_Dir_4_Vel_0';                
            case 209                
                ref_type = 'grats_Mov_Sf_2_Dir_4_Vel_0';                
            case 211
                ref_type = 'grats_Mov_Sf_3_Dir_4_Vel_0';                
            case 213                
                ref_type = 'grats_Mov_Sf_4_Dir_4_Vel_0'; 
               
            case 208           
                ref_type = 'grats_Mov_Sf_1_Dir_4_Vel_1';                
            case 210                
                ref_type = 'grats_Mov_Sf_2_Dir_4_Vel_1';                
            case 212
                ref_type = 'grats_Mov_Sf_3_Dir_4_Vel_1';                
            case 214                
                ref_type = 'grats_Mov_Sf_4_Dir_4_Vel_1';
                       
            %------------------------------------------            
            %7
            
            case 215             
                ref_type = 'grats_Mov_Sf_1_Dir_6_Vel_0';                
            case 217                
                ref_type = 'grats_Mov_Sf_2_Dir_6_Vel_0';                
            case 219
                ref_type = 'grats_Mov_Sf_3_Dir_6_Vel_0';                
            case 221                
                ref_type = 'grats_Mov_Sf_4_Dir_6_Vel_0'; 
               
            case 216           
                ref_type = 'grats_Mov_Sf_1_Dir_6_Vel_1';                
            case 218                
                ref_type = 'grats_Mov_Sf_2_Dir_6_Vel_1';                
            case 220
                ref_type = 'grats_Mov_Sf_3_Dir_6_Vel_1';                
            case 222                
                ref_type = 'grats_Mov_Sf_4_Dir_6_Vel_1';
                       
            %------------------------------------------
            %8
            
            case 223      
                ref_type = 'grats_Mov_Sf_1_Dir_2_Vel_0';                
            case 225                
                ref_type = 'grats_Mov_Sf_2_Dir_2_Vel_0';                
            case 227
                ref_type = 'grats_Mov_Sf_3_Dir_2_Vel_0';                
            case 229                
                ref_type = 'grats_Mov_Sf_4_Dir_2_Vel_0'; 
               
            case 224           
                ref_type = 'grats_Mov_Sf_1_Dir_2_Vel_1';                
            case 226                
                ref_type = 'grats_Mov_Sf_2_Dir_2_Vel_1';                
            case 228
                ref_type = 'grats_Mov_Sf_3_Dir_2_Vel_1';                
            case 230                
                ref_type = 'grats_Mov_Sf_4_Dir_2_Vel_1';
            
        end
            
        
    %%    
        
        
    case 'bars_Mov'
      
        ref_type = 'bars_Mov';
        
    %% 
    
    case 'obj_Mov'
        
        ref_type = 'obj_Mov';
     
    %%
        
        
    case 'dots_Mov'
    
        ref_type = 'dots_Mov';




end