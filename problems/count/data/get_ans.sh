cp ../613/std.cpp std.cpp
g++ std.cpp -o std -O2 -std=c++11
for ((i=1;;++i))
do
	if [ ! -e $i.in ]
	then
		break
	fi
	time ./std <$i.in >$i.ans
done
rm std std.cpp
