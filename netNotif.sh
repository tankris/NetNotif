# Extract the download speed (in Mbps, not MBps) from ndt7-client developed by Measurement Labs under Apache License 2.0
downSpeed=$($HOME/go/bin/ndt7-client|awk '/Download/'|awk '{printf "%.0f",$2}')

# If the speed is below 200 Mbps, print
if [[ ! -z "$downSpeed" && $downSpeed -lt 500 ]] 
then
	echo "Hey"
fi
