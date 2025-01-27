# shellcheck shell=bash
# Print custom left end

TMUX_POWERLINE_LEFT_END="${TMUX_POWERLINE_LEFT_END:}"

generate_segmentrc() {
	read -r -d '' rccontents <<EORC
# Print left end of 
export TMUX_POWERLINE_LEFT_END="${TMUX_POWERLINE_LEFT_END}"
EORC
	echo "$rccontents"
}

run_segment() {
    echo "${TMUX_POWERLINE_LEFT_END}"
	return 0
}
