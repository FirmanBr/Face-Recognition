function TrainingList = CreateMatriksTrainingList(TotalPerson, TotalPose)

List = [];

for j=1:TotalPerson
    for k=1:TotalPose
        List = [List;j];
    end
end
TrainingList = List;

end

