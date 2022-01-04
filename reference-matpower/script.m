% matlab -nodisplay -nosplash -nodesktop -r "filename='RTS_GMLC.m';script"

mpc = loadcase(filename); % loadcase in matpower
opt = mpoption()
opt.out.suppress_detail = 0
log_file =  strrep(filename, '.m', '.log')
fclose(fopen(log_file, 'w'));
res = runpf(mpc, opt, log_file); % runpf in matpower
exit()
