function [ trainAFER  testAFER ] = findAFER( Timeseries_Data, forecasted_value,lenTrain,lenValidation,lenTest)
    trainAFER=0;
    size(Timeseries_Data)
    size(forecasted_value)
    for I=1:lenTrain + lenValidation
        trainAFER=trainAFER+((abs(forecasted_value(1,I)-Timeseries_Data(1,I)))/(Timeseries_Data(1,I))); 
    end
    trainAFER=(trainAFER/(lenTrain+lenValidation))*100;

    testAFER=0;
    for I=1+lenTrain+lenValidation:lenTrain+lenValidation+lenTest
        testAFER=testAFER+((abs(forecasted_value(1,I)-Timeseries_Data(1,I)))/(Timeseries_Data(1,I))); 
    end
    testAFER=(testAFER/lenTest)*100;
end

