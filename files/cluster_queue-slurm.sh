squeue | \
	awk '(NR>1){ $2" "$4" "$5}' | \ # partition user state
	uniq -c | \
	awk '{print "cluster.queue,engine=slurm,state="$4",queue="$2",owner="$3" count="$1}'
