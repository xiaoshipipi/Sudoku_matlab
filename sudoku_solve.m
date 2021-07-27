function [ y,a,b ] = sudoku_solve( x )
%把每个格子的可能情况列出，进行尝试
%   此处显示详细说明
x0=x;
p=sudoku_findp(x);
a=p(1:3,:);
b=p(4:12,:);
if find(sum(b)==1)
    a1=a([1,2],sum(b)==1);
    [row,~]=find(b(:,sum(b)==1));
    for n=1:length(a1(1,:))
        x(a1(1,n),a1(2,n))=row(n);
    end
end
if x==x0
    y=x;
    return
else if ~sum(x(:)==0)
        y=x;
        return
    else y=sudoku_solve(x);
end
end
end

