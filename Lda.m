function  Lda();
    %% 1.Membuat Kelas
    load('D:\skripsi_final\hasil\MatrikWajah');    
    class1 =double(MatrikWajah(1:8,:));
    class2 =double(MatrikWajah(9:16,:));
    class3 =double(MatrikWajah(17:24,:));
    class4 =double(MatrikWajah(25:32,:));
    class5 =double(MatrikWajah(33:40,:));
    class6 =double(MatrikWajah(41:48,:));
    class7 =double(MatrikWajah(49:56,:));
    save 'D:\skripsi_final\hasil\class1' class1;
    save 'D:\skripsi_final\hasil\class2' class2;
    save 'D:\skripsi_final\hasil\class3' class3;
    save 'D:\skripsi_final\hasil\class4' class4;
    save 'D:\skripsi_final\hasil\class5' class5;
    save 'D:\skripsi_final\hasil\class6' class6;
    save 'D:\skripsi_final\hasil\class7' class7;
     %% 2.Mencari Size gambar
    [HeightGambar WeightGambar]=size(class1)
    save 'D:\skripsi_final\hasil\HeightGambar' HeightGambar;
    save 'D:\skripsi_final\hasil\WeightGambar' WeightGambar;
    %% 3.Menghitung rata-rata tiap kelas
    ratakelas1=(class1)'
    ratakelas1=mean(ratakelas1)
    ratakelas1=repmat(ratakelas1,WeightGambar,1)'

    ratakelas2=(class2)'
    ratakelas2=mean(ratakelas2)
    ratakelas2=repmat(ratakelas2,WeightGambar,1)'

    ratakelas3=(class3)'
    ratakelas3=mean(ratakelas3)
    ratakelas3=repmat(ratakelas3,WeightGambar,1)'

    ratakelas4=(class4)'
    ratakelas4=mean(ratakelas4)
    ratakelas4=repmat(ratakelas4,WeightGambar,1)'

    ratakelas5=(class5)'
    ratakelas5=mean(ratakelas5)
    ratakelas5=repmat(ratakelas5,WeightGambar,1)'

    ratakelas6=(class6)'
    ratakelas6=mean(ratakelas6)
    ratakelas6=repmat(ratakelas6,WeightGambar,1)'
    
    ratakelas7=(class7)'
    ratakelas7=mean(ratakelas7)
    ratakelas7=repmat(ratakelas7,WeightGambar,1)'
    
    save 'D:\skripsi_final\hasil\ratakelas1' ratakelas1;
    save 'D:\skripsi_final\hasil\ratakelas2' ratakelas2;
    save 'D:\skripsi_final\hasil\ratakelas3' ratakelas3;
    save 'D:\skripsi_final\hasil\ratakelas4' ratakelas4;
    save 'D:\skripsi_final\hasil\ratakelas5' ratakelas5;
    save 'D:\skripsi_final\hasil\ratakelas6' ratakelas6;
    save 'D:\skripsi_final\hasil\ratakelas7' ratakelas7;

    %% 4.Mencari rata-rata tiap kelas
    rataTotal=(ratakelas1+ratakelas2+ratakelas3+ratakelas4+ratakelas5+ratakelas6+ratakelas7)/7
    save 'D:\skripsi_final\hasil\rataTotal' rataTotal;
    %% 5.Mencari pusat data
    centerClass1=class1-ratakelas1
    centerClass2=class2-ratakelas2
    centerClass3=class3-ratakelas3 
    centerClass4=class4-ratakelas4 
    centerClass5=class5-ratakelas5 
    centerClass6=class6-ratakelas6 
    centerClass7=class7-ratakelas7 
    save 'D:\skripsi_final\hasil\centerClass1' centerClass1;
    save 'D:\skripsi_final\hasil\centerClass2' centerClass2;
    save 'D:\skripsi_final\hasil\centerClass3' centerClass3;
    save 'D:\skripsi_final\hasil\centerClass4' centerClass4;
    save 'D:\skripsi_final\hasil\centerClass5' centerClass5; 
    save 'D:\skripsi_final\hasil\centerClass6' centerClass6;
    save 'D:\skripsi_final\hasil\centerClass7' centerClass7;
    %% 6.Mencari matriks scatter within class
    scatterWithinClass1=centerClass1'*centerClass1
    scatterWithinClass2=centerClass2'*centerClass2
    scatterWithinClass3=centerClass3'*centerClass3
    scatterWithinClass4=centerClass4'*centerClass4
    scatterWithinClass5=centerClass5'*centerClass5
    scatterWithinClass6=centerClass6'*centerClass6    
    scatterWithinClass7=centerClass7'*centerClass7
    scatterWithinClass=scatterWithinClass1+scatterWithinClass2+scatterWithinClass3+scatterWithinClass4+scatterWithinClass5+scatterWithinClass6+scatterWithinClass7    
    save 'D:\skripsi_final\hasil\scatterWithinClass' scatterWithinClass;    
    %% 7.mencari scatter between (SB)
    scatterBetweenClass1=HeightGambar*(ratakelas1-rataTotal)'*(ratakelas1-rataTotal)
    scatterBetweenClass2=HeightGambar*(ratakelas2-rataTotal)'*(ratakelas2-rataTotal)
    scatterBetweenClass3=HeightGambar*(ratakelas3-rataTotal)'*(ratakelas3-rataTotal)
    scatterBetweenClass4=HeightGambar*(ratakelas4-rataTotal)'*(ratakelas4-rataTotal)
    scatterBetweenClass5=HeightGambar*(ratakelas5-rataTotal)'*(ratakelas5-rataTotal)
    scatterBetweenClass6=HeightGambar*(ratakelas6-rataTotal)'*(ratakelas6-rataTotal)
    scatterBetweenClass7=HeightGambar*(ratakelas7-rataTotal)'*(ratakelas7-rataTotal)
    ScatterBetween=scatterBetweenClass1+scatterBetweenClass2+scatterBetweenClass3+scatterBetweenClass4+scatterBetweenClass5+scatterBetweenClass6+scatterBetweenClass7
    save 'D:\skripsi_final\hasil\ScatterBetween' ScatterBetween;        
    %% 7.merubah scatter within class ke dalam bentuk invers 
    InversScatterWithin=inv(scatterWithinClass)
    %% 9.mencari covarian    
    Covarian=InversScatterWithin*ScatterBetween
    save 'D:\skripsi_final\hasil\Covarian' Covarian;            
    %% 8.mencari eigen value dan vector dan mengurutkannya (v)
    if det(Covarian)<0.000000001
        [eigenvector, eigenvalue] = svd(Covarian);
        eigenvalue=diag(eigenvalue);    
    save 'D:\skripsi_final\hasil\eigenvector' eigenvector;
    save 'D:\skripsi_final\hasil\eigenvalue' eigenvalue;  
    else
        [eigenvector, eigenvalue] = eig(Covarian);
        eigenvalue = diag(eigenvalue);
        [junk, index] = sort(-eigenvalue);
        eigenvalue = eigenvalue(index);
        eigvenector = eigenvector(:, index);
    save 'D:\skripsi_final\hasil\eigenvector' eigenvector;
    save 'D:\skripsi_final\hasil\eigenvalue' eigenvalue;      
    end     
end