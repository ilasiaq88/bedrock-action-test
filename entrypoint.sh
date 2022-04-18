#!/bin/sh
set -e

if [ ! -z "$server_name" ]
then
    # Choose Server Name
    sed -i 's/server-name=Dedicated Server/server-name='"$server_name"'/g' /data/server.properties
fi

if [ ! -z "$gamemode" ]
then
# Sæt Game mode
# Choose between "survival", "creative", or "adventure"
sed -i 's/gamemode=survival/gamemode='"$gamemode"'/g' /data/server.properties
fi

if [ ! -z "$difficulty" ]
then
# Choose Difficulty  "easy", "normal", or "hard"
sed -i 's/difficulty=easy/difficulty='"$difficulty"'/g' /data/server.properties
fi

if [ ! -z "$allow_cheats" ]
then
# Cheats, choose "false" or "true" 
sed -i 's/allow-cheats=false/allow-cheats='"$allow_cheats"'/g' /data/server.properties
fi

if [ ! -z "$online_mode" ]
then
# Use Xbox, choose "false" or "true" 
sed -i 's/online-mode=true/online-mode='"$online_mode"'/g' /data/server.properties
fi

if [ ! -z "$default_player_permission_level" ]
then
# Add default permission to users, choose between "visitor", "member", "operator"
sed -i 's/default-player-permission-level=member/default-player-permission-level='"$default_player_permission_level"'/g' /data/server.properties
fi

if [ ! -z "$level_seed" ]
then
# Add default permission to users, choose between "visitor", "member", "operator"
sed -i 's/level-seed=/level-seed='"$level_seed"'/g' /data/server.properties
fi

exec "$@"