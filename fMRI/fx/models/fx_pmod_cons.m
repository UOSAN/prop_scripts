%-----------------------------------------------------------------------
% Job saved on 13-Sep-2018 11:05:07 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.stats.fmri_est.spmmat = {'/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-001/SPM.mat'};
matlabbatch{1}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{1}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{2}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.con.consess{1}.tcon.name = 'cbt > rest';
matlabbatch{2}.spm.stats.con.consess{1}.tcon.weights = [1 0 0 0 0 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{1}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{2}.tcon.name = 'pst > rest';
matlabbatch{2}.spm.stats.con.consess{2}.tcon.weights = [0 0 0 0 1 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{2}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{3}.tcon.name = 'instrux > rest';
matlabbatch{2}.spm.stats.con.consess{3}.tcon.weights = [0 0 0 0 0 0 0 0 1 0];
matlabbatch{2}.spm.stats.con.consess{3}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{4}.tcon.name = 'rating > rest';
matlabbatch{2}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 0 0 0 0 0 0 1];
matlabbatch{2}.spm.stats.con.consess{4}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{5}.tcon.name = 'cbt relevance > rest';
matlabbatch{2}.spm.stats.con.consess{5}.tcon.weights = [0 1 0 0 0 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{5}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{6}.tcon.name = 'pst relevance > rest';
matlabbatch{2}.spm.stats.con.consess{6}.tcon.weights = [0 0 0 0 0 1 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{6}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{7}.tcon.name = 'cbt liking > rest';
matlabbatch{2}.spm.stats.con.consess{7}.tcon.weights = [0 0 1 0 0 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{7}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{8}.tcon.name = 'pst liking > rest';
matlabbatch{2}.spm.stats.con.consess{8}.tcon.weights = [0 0 0 0 0 0 1 0 0 0];
matlabbatch{2}.spm.stats.con.consess{8}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{9}.tcon.name = 'cbt helpfulness > rest';
matlabbatch{2}.spm.stats.con.consess{9}.tcon.weights = [0 0 0 1 0 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{9}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{10}.tcon.name = 'pst helpfulness > rest';
matlabbatch{2}.spm.stats.con.consess{10}.tcon.weights = [0 0 0 0 0 0 0 1 0 0];
matlabbatch{2}.spm.stats.con.consess{10}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{11}.tcon.name = 'cbt > pst';
matlabbatch{2}.spm.stats.con.consess{11}.tcon.weights = [1 0 0 0 -1 0 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{11}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{12}.tcon.name = 'cbt relevance > pst relevance';
matlabbatch{2}.spm.stats.con.consess{12}.tcon.weights = [0 1 0 0 0 -1 0 0 0 0];
matlabbatch{2}.spm.stats.con.consess{12}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{13}.tcon.name = 'cbt liking > pst liking';
matlabbatch{2}.spm.stats.con.consess{13}.tcon.weights = [0 0 1 0 0 0 -1 0 0 0];
matlabbatch{2}.spm.stats.con.consess{13}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.consess{14}.tcon.name = 'cbt helpfulness > pst helpfulness';
matlabbatch{2}.spm.stats.con.consess{14}.tcon.weights = [0 0 0 1 0 0 0 -1 0 0];
matlabbatch{2}.spm.stats.con.consess{14}.tcon.sessrep = 'repl';
matlabbatch{2}.spm.stats.con.delete = 0;