function isMac {
	if [ -d "/Volumes" ]; then
		return 0
	else
		return 1
	fi
}
