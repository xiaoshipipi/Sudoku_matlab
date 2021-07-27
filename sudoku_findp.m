function [ p ] = sudoku_findp( x )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
l=(sum(x(:)==0));
b=ones(9,l);  %备选数字
[row,col]=find(x==0);
a=[row';col';(3*ceil(row/3)+ceil(col/3)-3)'];    %坐标
for n=1:l
    n1=floor((a(1,n)-1)/3)*3;
    m1=floor((a(2,n)-1)/3)*3;
    c1=reshape(x(n1+1:n1+3,m1+1:m1+3),[1,9]);
    b1=[x(a(1,n),:),x(:,a(2,n))',c1];
    b2=b1(b1~=0);  
    b(b2,n)=0;
end
p=[a;sudoku_simplify(a,b)];
end

