#### simple GPS tracker -- solution of unconstrainted optimisation problem
run_code () {
	if [[ $1 == 'R' ]] || [[ $1 == 'r' ]] ; then
		echo $'run future R code...'
	elif [[ $1 == 'matlab' ]] || [[ $1 == 'MATLAB' ]] ; then
		echo $'run future matlab code...'
	else
		echo $'run future AMPL code...'
	fi
}
if [[ $1 == '-help' ]] || [[ $2 == '-help' ]] || [[ $3 == '-help' ]] ; then 
	echo $'#####\nAccording to usage syntax:\n\n\tgps_tracker -lang=language -data=datafile [-help]\n\nchoosen language shall be one from {R, r, MATLAB, matlab, AMPL, ampl}\nDatafile shall be CSV file with exact extension.\n#####'
	exit
fi
if  [[ $1 == 'R' ]] || [[ $1 == 'r' ]]  || [[  $1 ==  'matlab' ]] || [[ $1 == 'MATLAB' ]] || [[ $1 == 'AMPL' ]] || [[ $1 == 'ampl' ]] ; then
	if [[ -f $2 ]] && [[  -z $3 ]] ; then
		run_code $1
	elif [[ ! -d $2 ]] ; then
		echo $'usage: -lang=language -data=datafile [-help]'
		exit
	fi
else 
	echo $'usage: -lang=language -data=datafile [-help]'
fi
