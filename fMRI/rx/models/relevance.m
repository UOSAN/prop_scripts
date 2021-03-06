%-----------------------------------------------------------------------
% Job saved on 13-Sep-2018 12:03:51 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.stats.factorial_design.dir = {'/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/rx/relevance'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-001/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-002/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-004/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-005/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-007/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-008/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-009/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-010/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-012/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-013/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-015/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-016/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-017/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-018/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-019/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-020/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-021/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-022/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-023/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-025/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-026/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-027/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-028/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-029/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-030/con_0006.nii'
                                                          '/projects/sanlab/shared/PROP/bids_data/derivatives/pmod/fx/sub-032/con_0006.nii'
                                                          };
%%
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 0;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {'/projects/sanlab/shared/spm12/canonical/MNI152_T1_1mm_brain.nii'};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'relevance positive';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'relevance negative';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = -1;
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 1;
