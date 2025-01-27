# shellcheck shell=bash
# Print custom right end

TMUX_POWERLINE_RIGHT_END="${TMUX_POWERLINE_RIGHT_END:}"

generate_segmentrc() {
	read -r -d '' rccontents <<EORC
# Print left end of 
export TMUX_POWERLINE_RIGHT_END="${TMUX_POWERLINE_RIGHT_END}"
EORC
	echo "$rccontents"
}

run_segment() {
    echo ${TMUX_POWERLINE_RIGHT_END}
	return 0
}
