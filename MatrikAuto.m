function MatrikAuto(Db);
    if Db==1
    load ('D:\skripsi_final\hasil\ListFilePose'); 
    ListFile = ListFilePose;
    nMemberClassTotal = 7;
    nClassTotal = 10;
    end
h = waitbar(0,'sistem sedang memproses matriks');
Number = 0;
GetSize = imread(ListFile(1,:));
[HeightImage, WidthImage] = size(GetSize);
MatP = [];

    for J=1: nClassTotal
        for K=1: nMemberClassTotal
            Number = Number + 1;
            xFileName = ListFile(Number,:);
            yFileName = imread(xFileName);
            zFileName = reshape(yFileName,1,HeightImage*WidthImage);
            MatP = [MatP; zFileName];
            waitbar(Number/(nClassTotal*nMemberClassTotal));
        end
    end

if Db==1
    MatrikWajah = MatP;
    save 'D:\skripsi_final\hasil\MatrikWajah' MatrikWajah
end
close(h);

end