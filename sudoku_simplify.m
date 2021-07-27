function [ bout ] = sudoku_simplify( a,b )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if isempty(b)
    bout=b;
    return
end
b0=b;
for n=1:length(b(1,:))
    b1=b;
    b1(:,n)=[];
    a1=a;
    a1(:,n)=[];
%����ȥ    
    b2=b1(:,(a1(1,:)==a(1,n)));                 
    if sum(sum(b2,2)~=0)==length(b2(1,:))
        b(((sum(b2,2))~=0),n)=0;
    end
%����ȥ
    b2=b1(:,(a1(2,:)==a(2,n)));                 
    if sum(sum(b2,2)~=0)==length(b2(1,:))
        b(((sum(b2,2))~=0),n)=0;
    end
%����ȥ
    b2=b1(:,(a1(3,:)==a(3,n)));                 
    if sum(sum(b2,2)~=0)==length(b2(1,:))
        b(((sum(b2,2))~=0),n)=0;
    end
end
if b==b0
    bout=b;
    return
else bout=sudoku_simplify(a,b);
end



