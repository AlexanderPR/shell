#!/bin/bash
LEVELS=4
TOP_LEVEL=data
SUB_FOLDERS=(in out)
JOB_NAMES=(DMC SMS Salsa aep)
LOW_FOLDERS=(archive transfer fail)

make(){
	for x in $@
	do
		echo "Creating /$x"
	done

	echo $x
}


if [ -d "/${TOP_LEVEL}" ]; then
	echo "/${TOP_LEVEL} exists."

else
	echo "Creating /${TOP_LEVEL}"
	#mkdir /${TOP_LEVEL}
	for d in "${SUB_FOLDERS[@]}"
	do
		echo "Creating /${TOP_LEVEL}/${d}"
		#mkdir /${TOP_LEVEL}/${d}

		for ds in "${JOB_NAMES[@]}"
		do
			echo "Creating /${TOP_LEVEL}/${d}/${ds}"
			#mkdir /${TOP_LEVEL}/${d}/${ds}

			for low in "${LOW_FOLDERS[@]}"
			do
				echo "Creating /${TOP_LEVEL}/${d}/${ds}/${low}"
				#mkdir /${TOP_LEVEL}/${d}/${ds}/${low}
			done
		done
	done
fi

make $TOP_LEVEL
