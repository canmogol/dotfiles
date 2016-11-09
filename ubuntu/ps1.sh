#!/bin/bash
# color names for readibility
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
user_color=$green
[ "$UID" -eq 0 ] && { user_color=$red; }
PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\t\[$reset\]]\[$user_color\]\u@\H(\l)\\[$white\]:\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\[$reset\]\$\n\[$red\]→\[$reset\] "
#PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\t\[$reset\]]\[$user_color\]\u@\h(\l)\\[$white\]:\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\[$reset\]\n\[$red\]→\[$reset\] "
#PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\A\[$reset\]]\[$user_color\]\u@\h(\l)\\[$white\]:\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\[$reset\]\n\[$red\]→\[$reset\] "
#PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\A\[$reset\]]\[$user_color\]\u@\h(\l)\\[$white\]:\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\\$\[$reset\] "

