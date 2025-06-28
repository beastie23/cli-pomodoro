# Interactive Pomodoro: asks for durations before each session

pomodoro () {
  echo -n "Enter work duration (in minutes): "
  read work_time

  echo "Starting $work_time-minute work session..." | lolcat
  timer "${work_time}m"
  spd-say "Work session done, BUT WAIT! You ain't going anywhere, back on your seat... BITCH!"

  echo -n "Enter work duration (in minutes): "
  read work_time

  echo "Starting $work_time-minute work session..." | lolcat
  timer "${work_time}m"
  spd-say "Work session done... great job kid!"

  echo -n "Enter break duration (in minutes): "
  read break_time

  echo "Starting $break_time-minute break..." | lolcat
  timer "${break_time}m"
  spd-say "Break time over.. NOW GET YOUR ASS BACK AT WORK.... BITCH"
}

alias pomo='pomodoro'
