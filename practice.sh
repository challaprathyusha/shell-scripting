m=("1" "2" "3" "4")
echo "${m[0]}"
echo "${m[1]}"
echo "${m[@]}"

m=(1 2 3 4 5 "git" "gcc" "docker")
for i in ${m[@]}
do
echo "$i"
done

