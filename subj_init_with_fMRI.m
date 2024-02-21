function [subj, sbj_sess_mark] = subj_init_with_fMRI(exp_name, region, sbj_id, N_session, maskDir, maskType, fMRIdir_format, fMRIprefix, saveDir)
%% Initialization
% sessions = 4*ones(1,55);
% load('mark_depression.mat')
% load('mask_depression/SBJ_structure_new_yd.mat')
% load('mask_depression/SBJ_structure_2014_yd.mat')
% load('mask_depression/SBJ_structure_Irate_seperate_0524_yd.mat')
fextension = '.nii';
sbj_sess_mark = zeros(1,N_session+1);

ROItype_sfx = maskType;

%% start by creating an empty subj structure
% subj = init_subj('graduation_research','subject');
subj = init_subj(exp_name, ['subject' num2str(sbj_id)]);

subj = load_spm_mask(subj, 'my_mask', [maskDir, '/', region, '_', ROItype_sfx, fextension]);

% %%% create the mask that will be used when loading in the data
% if strcmp(region, 'FPC')
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/fpc_2014.nii']);
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/FPC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/FPC_sphere5.nii']);
% %     subj = load_spm_mask(subj,'my_mask','mask_depression/fpc_2014.nii');
%     
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/myMask_invF12_Daw_N_BayesArb3_fpc.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/fpc_new_0523.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/fpc_lrate_seperate_0524.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/fpc_lrate_nonorth_0524.nii');
% end
% if strcmp(region, 'lilPFC')
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/ilpfc_left_2014.nii']);
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lilPFC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lilPFC_sphere5.nii']);
% %     subj = load_spm_mask(subj,'my_mask','mask_depression/ilpfc_left_2014.nii');
%     
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/myMask_invF12_Daw_N_BayesArb3_ilpfc_left.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/lilpfc_new_0523.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/lilpfc_lrate_seperate_0524.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/left_ilpfc_lrate_nonorth_0524.nii');
% end
% if strcmp(region, 'rilPFC')
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/ilpfc_right_2014.nii']);
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rilPFC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rilPFC_sphere5.nii']);
% %     subj = load_spm_mask(subj,'my_mask','mask_depression/ilpfc_right_2014.nii');
%     
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/myMask_invF12_Daw_N_BayesArb3_ilpfc_right.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/rilpfc_new_0523.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/rilpfc_lrate_seperate_0524.nii');
%     %     subj = load_spm_mask(subj,'my_mask','mask_depression/right_ilpfc_lrate_nonorth_0524.nii');
% end
% if strcmp(region, 'rACC')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rACC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rACC_sphere5.nii']);
% end
% if strcmp(region, 'pPut')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/pPut_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/pPut_sphere5.nii']);
% end
% if strcmp(region, 'omPFC')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/omPFC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/omPFC_sphere5.nii']);
% end
% if strcmp(region, 'vmPFC')
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/vmpfc_2014.nii']);
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/vmPFC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/vmPFC_sphere5.nii']);
% end
% if strcmp(region, 'lV1')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lV1_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lV1_sphere5.nii']);
% end
% if strcmp(region, 'rV1')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rV1_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rV1_sphere5.nii']);
% end
% if strcmp(region, 'lIT')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lIT_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lIT_sphere5.nii']);
% end
% if strcmp(region, 'rIT')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rIT_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rIT_sphere5.nii']);
% end
% if strcmp(region, 'lCaudate')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lCaudate_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lCaudate_sphere5.nii']);
% end
% if strcmp(region, 'rCaudate')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rCaudate_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rCaudate_sphere5.nii']);
% end
% if strcmp(region, 'lHPC')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lHPC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/lHPC_sphere5.nii']);
% end
% if strcmp(region, 'rHPC')
%     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rHPC_sphere10.nii']);
% %     subj = load_spm_mask(subj,'my_mask',[mask_path, '/rHPC_sphere5.nii']);
% end

%% finding fMRI data of the subject
% data_path = '../Depression_ana/';
% 
% count = 0;
% for j=1:sessions(exp_num)
%     listing_s = dir([data_path sprintf('Sbj%d', exp_num) '/od-arbitration-001/functional/session' num2str(j) '/wra20*' fextension]);
%     for it=1:length(listing_s)
%         tmp_file =listing_s(it).name;
%         if length(tmp_file) ~= 0
%             count = count + 1;
%             raw_filenames{count} = [data_path sprintf('Sbj%d', exp_num) '/od-arbitration-001/functional/session' num2str(j) '/' tmp_file]; %#ok<AGROW>
%         end
%     end
% end

% \\143.248.30.94\bmlsamba\ydsung\2014fmri\fmri_arbitration\od-arbitration-001\func\run_0001\
% \\143.248.30.94\bmlsamba\ydsung\2014fmri\fmri_arbitration\od-arbitration-%03d\func\run_%04d\
% exp_num = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}
% sess = 1:4

count = 0;
for sess = 1:N_session
    listing_s = dir([sprintf(fMRIdir_format, sbj_id, sess), fMRIprefix, fextension]);
    sbj_sess_mark(sess+1) = length(listing_s);
    for it=1:length(listing_s)
        tmp_file =listing_s(it).name;
        if ~isempty(tmp_file)
            count = count + 1;
            raw_filenames{count} = [sprintf(fMRIdir_format, sbj_id, sess), tmp_file]; %#ok<AGROW>
        end
    end
end

% loading fMRI data of the subject
subj = load_spm_pattern(subj,'epi','my_mask',raw_filenames);

% Add a selector (labeling runs)
sbj_sess_mark = cumsum(sbj_sess_mark, 2);
which_session = zeros(1,sbj_sess_mark(N_session+1));
for it = 1:N_session
    which_session(sbj_sess_mark(it)+1:sbj_sess_mark(it+1)) = it;
end
% sbj_mark = mark_depression(sbj_id,:);
% which_session = zeros(1,sbj_mark(sessions(sbj_id)+1));
% for it = 1:1:sessions(sbj_id)
%     which_session(sbj_mark(it)+1:sbj_mark(it+1)) = it;
% end
subj = initset_object(subj, 'selector', 'which_session', which_session);

% Detrending
subj = detrend_pattern(subj, 'epi', 'which_session');

% Z scoring
subj = apply_to_runs(subj, 'epi_dt', 'which_session', 'apply_zscore', 'new_patname', 'epi_z');

if ~isempty(path)
    save(saveDir, 'subj')
end

end
