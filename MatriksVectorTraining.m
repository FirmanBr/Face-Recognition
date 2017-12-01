function MatriksVectorTraining(TotalPerson,TotalPose, urutanDataLatih);

TotalPersons = TotalPerson;
TotalPoses = TotalPose;
urutanLatih = urutanDataLatih;
%1. Load file ImageList yang berisi list nama image
load('D:\skripsi_final\hasil\MatrikWajah')
%ImageListFile = MatriksImage;
AllMatriks = MatrikWajah;


%2. Inisialisasi proses
bar = waitbar(0,'Matrik Image is being Created...');
Count = 0;
%ImageSize = imread(ImageListFile(1,:));
%[HeightImage, WidthImage] = size(ImageSize);
Matrix = [];
urut = [];
k = 0;
for i=1:TotalPersons
    for j=1:TotalPoses
        Count = Count + 1;
        %3. Membaca file imageList setiap barisnya
        FileName = AllMatriks(urutanLatih(j)+k,:);
        Matrix = [Matrix; FileName];

        waitbar(Count/(TotalPersons*TotalPoses));
    end
    k = i*10;
end

MatriksTraining = Matrix;
save 'D:\skripsi_final\hasil\MatriksTraining' MatriksTraining;

close(bar);

end