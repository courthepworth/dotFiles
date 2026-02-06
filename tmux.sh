#!/bin/sh

SESSION="Dev" # Name of the tmux session
SESSIONEXISTS=$(tmux ls | grep $SESSION) # To help check if the session already exists

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then

# Session create and window 1
tmux new-session -d -s $SESSION -c 'Home' -c ~/ 
tmux rename-window -t 1 'Home'

# Window 2
tmux new-window -t $SESSION:2 -n 'Notes' -c ~/Documents/Syncthing/notes/testNotes/
tmux send-keys -t 'Notes' 'lvim index.md' C-m

#Window 3
tmux new-window -t $SESSION:3 -n 'Coding Notes' -c ~Documents/Syncthing/coding/
tmux send-keys -t 'Coding Notes' 'nvim ~/Documents/Syncthing/coding/50ProjectsHTMLCSSJavascript/schedule.md ~/Documents/Syncthing/coding/codingInterviewBootcamp/AlgoCasts-master/exercises/notes.md' C-m

# Window 4
tmux new-window -t $SESSION:4 -n 'Coding' -c ~/Documents/Syncthing/coding/
tmux send-keys -t 'Coding' 'll' C-m
# tmux split-window -h

# Window 5
tmux new-window -t $SESSION:5 -n 'MC' -c ~/Documents/Syncthing/ 
tmux send-keys -t 'MC' 'mc' C-m

# Window 6
tmux new-window -t $SESSION:6 -n 'btop' 
tmux send-keys -t 'btop' 'btop' C-m
fi

# Window 7
tmux new-window -t $SESSION:7 -n 'Calcurse'
tmux send-keys -t 'Calcurse' 'calcurse' C-m

# Window 8
tmux new-window -t $SESSION:8 -n 'Syncthing' -c ~/Documents/Syncthing/
tmux rename-window -t 8 'Syncthing'

# # Window 8
# tmux new-windows -t $SESSION:8 -n 'Review'
# tmux send-keys -t 'Review' ~/Documents/Syncthing/notes/testNotes/review.md

# Attach to session
tmux attach-session -t $SESSION:1
