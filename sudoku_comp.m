function [ y ] = sudoku_comp(x)
%sudoku_if �ж�������Ŀ�Ƿ������
%   ����ɷ���1��δ��ɷ���0
%%%%%%%%�±ߵĲ������㷨1%%%%%%%%%%
% m=[1,1,1,4,4,4,7,7,7;...
%    1,4,7,1,4,7,1,4,7];
% for n=1:9
%     if isequal(sort(x(n,:)),1:9)&&isequal(sort(x(:,n))',1:9)&&...
%        isequal(sort([x(m(1),m(2):m(2)+2),x(m(1)+1,m(2):m(2)+2),x(m(1)+2,m(2):m(2)+2)]),1:9)
%        continue
%     else y=0;
%        return
%     end
% end
% y=1;
% return
%%%%%�ϱߵĲ������㷨1%%%%%%%%%%%%%%%
%%%%%�±ߵĲ������㷨2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a=(1:9)'*ones(1,9);
% y=isequal(sort(x),a)&&isequal(sort(x'),a)&&...
%   isequal(sort([reshape(x(1:3,:),[9,3]),reshape(x(4:6,:),[9,3]),reshape(x(7:9,:),[9,3])]),a);
%%%%%�ϱߵĲ������㷨2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%�±ߵĲ������㷨3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if sum(x(:)==0)==0
    for n=1:9
        if isequal(sum(x==n),ones(1,9))&&isequal(sum(x'==n),ones(1,9))&&isequal(sum([reshape(x(1:3,:),[9,3]),reshape(x(4:6,:),[9,3]),reshape(x(7:9,:),[9,3])]==n),ones(1,9))
        else y=0;
            return
        end
    end
    y=1;
    return
else y=0;
    return        
end

