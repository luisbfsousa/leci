function [stringArr] = GenerateString(N, alfabeto, Prob)
    if nargin<3, Prob=ones(1,length(alfabeto))/length(alfabeto); end
    sizeArr = rand(1,N);
    sizeArr = sizeArr < 0.3;
    stringArr = cell(1,N);
    for i=1:N
        if sizeArr(i) == 1
            x=char(randsrc(1,4,[double(alfabeto); Prob]));
        else
            x=char(randsrc(1,8,[double(alfabeto); Prob]));
        end
            stringArr{i} = x;
    end
end


