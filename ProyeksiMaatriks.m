function ProyeksiMaatriks(JumlahEigen);


%% mencari Proyeksikan data uji

% membaca data matriks vektor sebanyak 18 data
load 'D:\skripsi_final\hasil\MatrikWajah' ;
MatriksVector =MatrikWajah(:,:);
TrainingMatric=double(MatriksVector);
[HeightMatriksVector, WidthMatriksVector]=size(TrainingMatric);

% mencari rata-rata dan menggandakan
Miu= (TrainingMatric)';
Miu=mean(Miu);
Miu=repmat(Miu,WidthMatriksVector,1)
Miu=Miu'

% mencari zeromean
Zeromean = TrainingMatric-Miu;
save 'D:\skripsi_final\hasil\Zeromean' Zeromean;

% Mengambil eigen vector sebanyak 30
load 'D:\skripsi_final\hasil\eigenvector' ;      
EigenSampel =eigenvector(:,1:JumlahEigen);
DataUji = Zeromean *EigenSampel;
save 'D:\skripsi_final\hasil\EigenSampel' EigenSampel
save 'D:\skripsi_final\hasil\DataUji' DataUji

end


