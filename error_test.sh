readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly NC='\033[0m' # No Color

if [ -z "$1" ]; then
  ok_count=0
  ng_count=0
  ng_files=()
  # Judge whether the return value is correct or not.
  # If the value is not correct, append file to ng_files.
  function judge() {
    if [[ "$1" != 0 ]]; then
      ((++ok_count))
    else
      ((++ng_count))
      ng_files=("$file" "${ng_files[@]}")
    fi
  }
	for file in `find map_files -maxdepth 1 -name 'error_*' | sort`; do
		echo ./cub3D "$file"
		./cub3D "$file"
    judge "$?"
	done
	echo ./cub3D map_files/.cub
	./cub3D map_files/.cub
  judge "$?"
	echo ./cub3D map_files/nothing.cub
	./cub3D map_files/nothing.cub
  judge "$?"
  printf "${GREEN}OK: ${ok_count}${NC}\n"
  printf "${RED}NG: ${ng_count}${NC}\n"
  printf "${RED}=============== ERROR FILE LIST ===============${NC}\n"
  for file in "${ng_files[@]}"; do
    printf "${RED}${file}${NC}\n"
  done
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
