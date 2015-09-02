function complement = get_ortho_complement()

    %% define orthogonal complement 
    
    complement = zeros(8,2);
    complement(1,:)=[3,7];
    complement(2,:)=[4,8];
    complement(3,:)=[5,1];
    complement(4,:)=[6,2];
    complement(5:8,:) = complement(1:4,:); 


end