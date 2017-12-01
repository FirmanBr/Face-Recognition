function   Cropping

folderAsal='D:\skripsi_final\wajah_hasilGraydanResize\';
folderBaru='D:\skripsi_final\wajah_final\';
            Ekt='.png';
            sample='-pose-';
BanyakOrang =8;
BanyakPose =8;
for a=1:BanyakOrang
    for b=1:BanyakPose
    if BanyakOrang < 10
        if BanyakPose < 10
        process=['0' num2str(a) sample '0' num2str(b) Ekt];
        elseif BanyakPose >= 10
        process=['0' num2str(a) sample  num2str(b) Ekt];
        end
    elseif BanyakOrang >= 10
         if BanyakPose < 10
         process=[ num2str(a) sample '0' num2str(b) Ekt];
         elseif BanyakPose >= 10
         process=[ num2str(a) sample  num2str(b) Ekt];
         end
    end    
    baca =[folderAsal process];
    data = imread(baca);
    %% cropping
    % orang Pertama
   if a == 1
        if b == 1
        Crop = data(10:80,10:50);
        elseif b == 2
        Crop = data(10:80,10:50);
        elseif b == 3
        Crop = data(10:80,10:50);
        elseif b == 4
        Crop = data(10:80,10:50);
        elseif b == 5
        Crop = data(10:80,10:50);
        elseif b == 6
        Crop = data(10:80,10:50);
        elseif b == 7
        Crop = data(10:80,10:50);
        elseif b == 8
        Crop = data(10:80,10:50);
        end
     % orang Kedua      
   elseif a == 2
        if b == 1
        Crop = data(10:80,15:55);
        elseif b == 2
        Crop = data(10:80,10:50);
        elseif b == 3
        Crop = data(10:80,15:55);
        elseif b == 4
        Crop = data(10:80,10:50);
        elseif b == 5
        Crop = data(10:80,10:50);
        elseif b == 6
        Crop = data(10:80,5:45); 
        elseif b == 7
        Crop = data(10:80,5:45); 
        elseif b == 8
        Crop = data(10:80,5:45); 
        end
    % orang Ketiga
    elseif a == 3
        if b == 1
        Crop = data(10:72,16:43);
        elseif b == 2
        Crop = data(19:72,16:43);
        elseif b == 3
        Crop = data(19:72,16:43);
        elseif b == 4
        Crop = data(19:72,16:43);
        elseif b == 5
        Crop = data(19:72,16:43);
        elseif b == 6
        Crop = data(19:65,16:43); 
        elseif b == 7
        Crop = data(10:72,16:43); 
        elseif b == 8
        Crop = data(25:80,16:40);  
        end
    % orang Keempat
    elseif a == 4
        if b == 1
        Crop = data(10:72,10:43);
        elseif b == 2
        Crop = data(10:72,16:43);
        elseif b == 3
        Crop = data(10:72,10:43);
        elseif b == 4
        Crop = data(10:72,10:43);
        elseif b == 5
        Crop = data(10:72,10:43);
        elseif b == 6
        Crop = data(10:72,10:43); 
        elseif b == 7
        Crop = data(10:72,10:43); 
        elseif b == 8
        Crop = data(10:72,10:43); 
        end
    % orang Kelima        
    elseif a == 5
        if b == 1
        Crop = data(10:72,10:43);
        elseif b == 2
        Crop = data(10:72,10:43);
        elseif b == 3
        Crop = data(10:72,10:43);
        elseif b == 4
        Crop = data(10:72,10:43);
        elseif b == 5
        Crop = data(10:72,10:43);
        elseif b == 6
        Crop = data(10:72,10:43); 
        elseif b == 7
        Crop = data(10:72,10:43); 
        elseif b == 8
        Crop = data(10:72,10:43); 
        end
    % orang Keenam
    elseif a == 6
        if b == 1
        Crop = data(10:72,10:43);
        elseif b == 2
        Crop = data(10:72,10:43);
        elseif b == 3
        Crop = data(10:72,10:43);
        elseif b == 4
        Crop = data(10:72,10:43);
        elseif b == 5
        Crop = data(10:72,10:43);
        elseif b == 6
        Crop = data(10:72,10:43); 
        elseif b == 7
        Crop = data(10:72,10:43); 
        elseif b == 8
        Crop = data(10:72,10:43); 
        end
    % orang Ketujuh       
    elseif a == 7
        if b == 1
        Crop = data(10:72,10:43);
        elseif b == 2
        Crop = data(10:72,10:43);
        elseif b == 3
        Crop = data(10:78,10:43);
        elseif b == 4
        Crop = data(10:78,10:43);
        elseif b == 5
        Crop = data(10:78,10:43);
        elseif b == 6
        Crop = data(10:78,10:43); 
        elseif b == 7
        Crop = data(10:78,10:43); 
        elseif b == 8
        Crop = data(10:78,10:43); 
        end 
        
   end
    %% resize
    Resize =imresize(Crop,[28 37]);
    imwrite(Resize,[folderBaru process] ,'PNG');
    end
end
end

