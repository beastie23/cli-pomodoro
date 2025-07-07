pomodoro () {
  local total_time=0

  while true; do
    echo -n "Enter work duration (in minutes): "
    read work_time

    # Check if input is not a number (int or float)
    if ! [[ $work_time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
      echo "Non-numeric input. Exiting..."
      break
    fi

    echo "Starting $work_time-minute work session..." | lolcat
    timer "${work_time}m"
    spd-say "Work session done"
    (( total_time += ${work_time%.*} ))  # Adds only the integer part

    echo -n "Enter break duration (in minutes): "
    read break_time

    if ! [[ $break_time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
      echo "Non-numeric input. Exiting..."
      break
    fi

    echo "Starting $break_time-minute break..." | lolcat
    timer "${break_time}m"
    spd-say "Break time over"
  done

  echo "Total study time: $total_time minutes"
}

alias pomo='pomodoro'
