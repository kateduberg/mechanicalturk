

nTrials = 5; % totalTrials - must be divided into blocks
TargetGabor = nan(1,nTrials);
BarResponse = nan(1,nTrials);
StartBarOrientationS = nan(1,nTrials);
WhichGabor = nan(1,nTrials);
WhichNoise = nan(1,nTrials);
question0RT = nan(1,nTrials);
question1RT = nan(1,nTrials);
question2RT = nan(1,nTrials);
question3RT = nan(1,nTrials);
question4RT = nan(1,nTrials);
question3RTTillActivation = nan(1,nTrials);
question3RTFromActivation = nan(1,nTrials);

load cda.mat

for i=0:nTrials
    
BarResponseSTR=(['data.Answer.trial' num2str(i) 'BarResponse']);
BarResponse(i+1)=str2num(cell2mat(eval(BarResponseSTR))); % +1 because it starts from zero!
    
StartBarOrientationSTR=(['data.Answer.trial' num2str(i) 'StartBarOrientation']);
StartBarOrientation(i+1)=str2num(cell2mat(eval(StartBarOrientationSTR))); % +1 because it starts from zero!
    
TargetGaborSTR=(['data.Answer.trial' num2str(i) 'TargetGabor']);
TargetGabor(i+1)=str2num(cell2mat(eval(TargetGaborSTR))); % +1 because it starts from zero!

question0RTSTR=(['data.Answer.trial' num2str(i) 'question0RT']);
question0RT(i+1)=str2num(cell2mat(eval(question0RTSTR))); % +1 because it starts from zero!

question1RTSTR=(['data.Answer.trial' num2str(i) 'question1RT']);
question1RT(i+1)=str2num(cell2mat(eval(question1RTSTR))); % +1 because it starts from zero!

question2RTSTR=(['data.Answer.trial' num2str(i) 'question2RT']);
question2RT(i+1)=str2num(cell2mat(eval(question2RTSTR))); % +1 because it starts from zero!

question3RTSTR=(['data.Answer.trial' num2str(i) 'question3RT']);
question3RT(i+1)=str2num(cell2mat(eval(question3RTSTR))); % +1 because it starts from zero!

question3RTTillActivationSTR=(['data.Answer.trial' num2str(i) 'question3RTTillActivation']);
question3RTTillActivation(i+1)=str2num(cell2mat(eval(question3RTTillActivationSTR))); % +1 because it starts from zero!

question3RTFromActivationSTR=(['data.Answer.trial' num2str(i) 'question3RTFromActivation']);
question3RTFromActivation(i+1)=str2num(cell2mat(eval(question3RTFromActivationSTR))); % +1 because it starts from zero!

question4RTSTR=(['data.Answer.trial' num2str(i) 'question4RT']);
question4RT(i+1)=str2num(cell2mat(eval(question4RTSTR))); % +1 because it starts from zero!

WhichGaborSTR=(['data.Answer.trial' num2str(i+1) 'WhichGabor']); %+1 because it is shifted of 1
WhichGabor(i+1)=str2num(cell2mat(eval(WhichGaborSTR))); % +1 because it starts from zero!

WhichNoiseSTR=(['data.Answer.trial' num2str(i+1) 'WhichNoise']);  %+1 because it is shifted of 1
WhichNoise(i+1)=str2num(cell2mat(eval(WhichNoiseSTR))); % +1 because it starts from zero!

end

TargetGabor
BarResponse 
StartBarOrientation
WhichGabor
WhichNoise
question0RT
question1RT
question2RT
question3RT
question4RT
question3RTTillActivation
question3RTFromActivation

clear all