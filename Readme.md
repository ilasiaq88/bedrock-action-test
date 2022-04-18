

## Environments

| Description                           | Environments                    | Possible Values                        | Default Value    |
|---------------------------------------|---------------------------------|----------------------------------------|------------------|
|                                       | server_name                     | Minecraft Server                       | Dedicated Server |
|                                       | gamemode                        | "survival", "creative", or "adventure" | survival         |
|                                       | difficulty                      | "easy", "normal", or "hard"            | easy             |
|                                       | allow_cheats                    | "true" OR "false"                      | false            |
| Default will only allow Xbox Accounts | online_mode                     | "true" OR "false"                      | true             |
|                                       | default_player_permission_level | "visitor", "member", "operator"        | member           |

## Docker run

```
docker run -it --name mcpe  -p 19132:19132/udp \
-e "server_name=Minecraft Server" \
-e "gamemode=survival" \
-e "difficulty=easy" \
-e "allow_cheats=false" \
-e "online_mode=true" \
-e "default_player_permission_level=operator" \
ilasiaq88/minecraft-bedrock:1.18.12.01
```

## docker-compose

```yml
version: '3'

services:
   mcpe:
      #container_name: mcpe_lara_1
      image: ilasiaq88/minecraft-bedrock:1.18.12.01
      ports:
         - 19132:19132/udp
      volumes:
         - mcpe:/data
      restart: always
      stdin_open: true
      tty: true
      environment:
        - "server_name=Lara Asavaa"
        - "gamemode=survival" # "survival", "creative", or "adventure"
        - "difficulty=easy" #"easy", "normal", or "hard"
        - "allow_cheats=false" # "true" OR "false"
        - "online_mode=true" # "true" OR "false"
        - "default_player_permission_level=operator" # "visitor", "member", "operator"

volumes:
  mcpe:
```

## Seeds

You can also decide where you can start. 

### Default places
- Abandoned Village:
- Bamboo Forest: 
- Coastal Village: 
- Desert Village: 
- Epic Jungle: 442812649
- Forest Glade: 


### New places
- Submerged Temple: -5181140359215069925
- Brennenburg Castle: -577384543
- Giant Portal Village: -567784840
- Massive Mushroom Island: -1743547513
- Triple Blacksmith Village: -590916043
- Center of the World: 2111844826
- Mountain Above the Clouds: -969535336
- Survival Island: -2108063506
- Lush Caves: -905752474