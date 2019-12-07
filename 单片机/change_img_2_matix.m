debug=1;
lv=16;
aab='cxk';
aac='.jpg';
sex=0;
for aa = 0:1
    for bb = 0:9
        for cc = 0:9
            dd=[aab,num2str(aa),num2str(bb),num2str(cc),aac];
            data=imread(dd);
            if debug==1
                for i=1:3
                    temp=data(:,:,i);
                    ss=['1\',num2str(sex),num2str(i),'.txt'];
                    writematrix(temp,ss,'Delimiter',' ')
                end
            end
            sex=sex+1;
        end
    end
end
imshow(data);