function hashCode = hf24(element,nhf)
    % USAGE EXAMPLE: hc=hf24('abcd',3)
    % input : element  - string 
    %         nhf      - number of the hash function to apply (1 to 5)
    % output: hashCode - from 0 to 1012 (M-1)     
    
    % AT, jan 2024
    
    %% configuration parameter. Do not chage
    l = 4;  %  length, don't change
    n = 5;  % max number of hash function
    M = 1013; % to limit hashcode to M-1
     
    
    %% check if nhf in the correct range
    if nhf <1 || nhf > n
        fprintf(1,'ERROR! hf number must be between 1 and %d\n',n);
        hashCode = -1;
        return
    end
    
    
    %% use only l chars. Pad with spaces if  shorter than l
    if length(element) < l
        desired_length = l;   
        element = sprintf('%-*s', desired_length, element);   
    else
        element = element(1:l); % keep only 1st l chars
    end
    
    
    R =[15761,14189,65576,75776;
        97062,42177, 3571,74315;
        95719,91576,84915,39223;
        48539,79223,93402,65549;
        80030,95952,67875,17119];
    
    R=R(:,1:l);
     
    % each line of R defines a different hash function
    r=R(nhf,:);
    
    %   (\sum r * x ) mode M
    hashCode=mod(sum (r.*  double(element)),M);
    
    % uncomment to see results during debugging 
    %fprintf("%s -> %d\n",element,hashCode)