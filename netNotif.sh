# Extract the download speed (in Mbps, not MBps) from ndt7-client developed by Measurement Labs under Apache License 2.0
downSpeed=$($HOME/go/bin/ndt7-client|awk '/Download/'|awk '{printf "%.0f",$2}')

# If the speed is below 200 Mbps, print
if [[ ! -z "$downSpeed" && $downSpeed -lt 500 ]] 
then
	$(dunstify -h string:x-dunst-stack-tag:netnotif -u c "Internet Speed Notification!" "<b>Low Speed</b>")
fi
