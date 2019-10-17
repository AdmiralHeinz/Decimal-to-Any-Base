%Jakob Heinz
%s29177
%October 17, 2019
%Convert from base 10 to any other base and check the result.
function BaseConverter = ConvertBases (Num , Base)
    NumTemp = Num; %store the temp number
    NewNum = []; %initalize the array to hold the new number
    while NumTemp ~= 0%while the NumTemp isn't zero 
        RemTemp = rem(NumTemp , Base);%calculate the remainder
        NewNum(end+1)= RemTemp;%add the remainder to the array
        NumTemp = (NumTemp-RemTemp) / Base;%calculate the new num temp of the number devided by the base.  
    end
    CheckedNum = 0;
    for i = 1 : 1 : length(NewNum)%run for each element in NewNum
        CheckedNum = CheckedNum + NewNum(i)* power(Base,i-1);%convert back to base 10
    end
    if Num == CheckedNum%check the number versus the recalculated number
        disp("conversion was correct");
    else
        disp("conversion was wrong");
    end 
    BaseConverter = flip(NewNum);%output the number in the new base, flip the array.
end
