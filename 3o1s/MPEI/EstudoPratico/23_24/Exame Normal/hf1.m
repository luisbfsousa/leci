function hashCode = hf1(shingle,nhf)
% USAGE EXAMPLE: hc=hf1('abcd',3)
% input : shingle  - string (of length 3)
%         nhf      - number of the hash function to apply (1 to 5)
% output: hashCode - from 0 to 1012 (M-1)     

l = 3;  % shingle length, don't change
n = 5;  % max number of hash function

M = 1013; % to limit hashcode to M-1

if length(shingle) ~= l
    fprintf(1,'ERROR! 1st parameter must have %d characters\n',l);
    
    hashCode = -1;
    return 
end

if nhf <1 || nhf > n
    fprintf(1,'ERROR! hf number must be between 1 and %d\n',n);
    hashCode = -1;
    return
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
hashCode=mod(sum (r.*  double(shingle)),M);



