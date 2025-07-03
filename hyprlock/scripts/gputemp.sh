temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
echo "GPU Temp: $temp°C"
