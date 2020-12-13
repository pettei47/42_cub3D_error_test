if [ -z "$1" ]; then
	for file in `find map_files -maxdepth 1 -name 'error_*' | sort`; do
		echo ./cub3D $file
		./cub3D $file
	done
	echo ./cub3D map_files/.cub
	./cub3D map_files/.cub
	echo ./cub3D map_files/nothing.cub
	./cub3D map_files/nothing.cub
elif [ $1 = .cub ]; then
	echo ./cub3D map_files/.cub
	./cub3D map_files/.cub
elif [ $1 = nothing ]; then
	echo ./cub3D map_files/nothing.cub
	./cub3D map_files/nothing.cub
elif [ $1 = sub ]; then
	for file in `find map_files/sub_directry -name 'error_*' | sort`; do
		echo ./cub3D $file
		./cub3D $file
	done
	echo ./cub3D sub_directry/.cub
	./cub3D map_files/sub_directry/.cub
	echo ./cub3D sub_directry/nothing.cub
	./cub3D map_files/sub_directry/nothing.cub
else
	str=error_*$1*
	for file in `find map_files -maxdepth 1 -name ${str} | sort`; do
		echo ./cub3D $file
		./cub3D $file
	done
fi
