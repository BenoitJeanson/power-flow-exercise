% matlab -nodisplay -nosplash -nodesktop -r "filename='RTS_GMLC/RTS_GMLC.m';script"

mpc = loadcase(filename); % loadcase in matpower
opt = mpoption()
opt.out.suppress_detail = 0
[fPath, fName, fExt] = fileparts(filename);
log_file = fullfile(fPath, fName, '.log')
mat_file = fullfile(fPath, fName, '.mat')
savecase(mat_file, mpc)
fclose(fopen(log_file, 'w'));
res = runpf(mpc, opt, log_file); % runpf in matpower
result_mat = fullfile(fPath, 'results', fName, '.mat')
result_m = fullfile(fPath, 'results', fName, '.m')
savecase(result_mat, mpc)
savecase(result_m, mpc)
exit()
