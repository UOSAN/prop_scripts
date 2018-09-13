DIR.bx = '~/Desktop/PROP_BxData/';
DIR.out = [DIR.bx filesep 'output'];
DIR.in = [DIR.bx filesep 'input'];
DIR.vec = [DIR.bx filesep 'vecs'];
DIR.thisFunk = '~/Desktop/PROP_scripts/behavioral/scripts/makeVecs/';

subList = [1:9 13];
nRuns = 2;
studyCode = 'PROP';
taskCode = 'PROP';
modelCode = 'CBT_v_PST_pMod';
% Saving SPM-ready names, onsets, and durations to .mat

DIR.vecModel = [DIR.vec filesep modelCode];
if ~exist(DIR.vecModel)
    mkdir(DIR.vecModel)
end

names = {'cbt' 'pst' 'instrux' 'rating'};
nConds = length(names);

for s = subList
    
    if s<10
        placeholder = '00';
    elseif s<100
        placeholder = '0';
    else
        placeholder = '';
    end
    subjectCode = [studyCode placeholder num2str(s)];
    
    for r=1:nRuns
        
        filenames.out =  [DIR.out filesep 'sub-' subjectCode(end-2:end) '_ses-1_task-' taskCode '_run-' num2str(r) '_beh.mat'];
        filenames.vec = [DIR.vecModel filesep subjectCode '_run' num2str(r) '_' modelCode];
        onsets = cell(1,nConds);
        durations = cell(1,nConds);
        pmod = cell(1,nConds);
        for cond = 1:2
            pmod(cond).name = {'relevance' 'liking' 'helpfulness'};
            nPmods = length(pmod.name);
            pmod(cond).param = cell{1,nPmods};
            pmod(cond).poly = {1 1 1};
        end
        
        if ~exist(filenames.out,'file')
            warning('No output file found for subject %d, run %d.\n',s,r);% import input file to determine eventIndices DO THIS
        else
            
            % import output file to determine actual onsets/durations DO THIS
            load(filenames.out)
            
            % Get event indices
            cbtIdx = cell2mat(cellfun(@(x) strcmp(x(1:3),'cbt'),run_info.tag,'UniformOutput',false));
            pstIdx = cell2mat(cellfun(@(x) strcmp(x(1:3),'pst'),run_info.tag,'UniformOutput',false));
            relIdx = cell2mat(cellfun(@(x) strcmp(x,'relevance'),run_info.tag,'UniformOutput',false));
            likeIdx = cell2mat(cellfun(@(x) strcmp(x,'liking'),run_info.tag,'UniformOutput',false));
            helpIdx = cell2mat(cellfun(@(x) strcmp(x,'helpfulness'),run_info.tag,'UniformOutput',false));
            
            instruxIdx = cell2mat(cellfun(@(x) strcmp(x,'instrux'),run_info.tag,'UniformOutput',false));
            vignetteStartIdx = [0;0;instruxIdx(1:end-2)];
            vignetteEndIdx = [relIdx(3:end);0;0];
            ratingIdx = relIdx | likeIdx | helpIdx;
            cbtStartIdx = cbtIdx & vignetteStartIdx;
            pstStartIdx = pstIdx & vignetteStartIdx;
            cbtEndIdx = cbtIdx & vignetteEndIdx;
            pstEndIdx = pstIdx & vignetteEndIdx;
            
            onsets{1} = run_info.onsets(cbtStartIdx);
            onsets{2} = run_info.onsets(pstStartIdx);
            onsets{3} = run_info.onsets(instruxIdx);
            onsets{4} = run_info.onsets(ratingIdx);
            
            cbtOffsets = run_info.onsets(cbtEndIdx) + run_info.durations(cbtEndIdx);
            pstOffsets = run_info.onsets(pstEndIdx) + run_info.durations(pstEndIdx);
            
            durations{1} = cbtOffsets - onsets{1};
            durations{2} = pstOffsets - onsets{2};
            durations{3} = run_info.durations(instruxIdx);
            durations{4} = run_info.durations(ratingIdx);
            
            for p = 1:nPmods
                pmod(1).param{p} = cbtRatings(:,p);
                pmod(2).param{p} = pstRatings(:,p);
            end
            
            % save vec file for this run
            save(filenames.vec,'names','onsets','durations','pmods')
        end
    end
    
end

cd(DIR.thisFunk)