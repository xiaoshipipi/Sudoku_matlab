function [ y,k ] = sudoku( x )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
x0=x;
y=x;
x=sudoku_solve(x);
if ~sum(x(:)==0)   %如果x已完成，则直接返回，如未完成再进行下一步
    y=x;
    k=1;
    return
end
p=sudoku_findp(x);
a=p(1:3,:);
b=p(4:12,:);
if sum(sum(b)==0)~=0    %如果x已无解，则返回
    k=0;
    return
end
[~,m]=min(sum(b));
b1=b(:,m);
b2=find(b1==1);
for n=1:length(b2)
    x(a(1,m),a(2,m))=b2(n);
    [y,k]=sudoku(x);
    if k==0
        continue
    else break
    end
end
end

