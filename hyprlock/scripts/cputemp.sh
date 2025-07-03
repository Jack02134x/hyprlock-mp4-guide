cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
cpu_temp=$((cpu_temp / 1000))  # Convert to Celsius
echo "CPU Temp: $cpu_temp°C"
