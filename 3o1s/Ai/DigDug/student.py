import asyncio
import json
import getpass
import os
import websockets
import random

count = 1
directions_priorities = {"w":[8,0], "d":[8,0], "s":[8,0], "a":[8,0], "A":[8,0]}

def order_directions_priorities(keys, strength):
    global count
    global directions_priorities
    for key in keys:
        if strength<8 and directions_priorities[key][0]>strength and key != None:
            directions_priorities[key][0]=strength
            directions_priorities[key][1]=count
        elif directions_priorities[key][0]>=8 and (directions_priorities[key][0]<strength or count == 0) and key != None:
            directions_priorities[key][0]=strength
            directions_priorities[key][1]=count
        count+=1

def order_safe_directions(safe_directions, directions_costs):
    def get_cost(move):
        return directions_costs.get(move, float('inf'))
    sorted_safe_directions = sorted(safe_directions, key=get_cost)
    return sorted_safe_directions

def get_directions_costs(digdug, directions_costs, dx, dy, xdx, ydy, distance, enemyName, nextMove = None):
    global directions_priorities
    if nextMove != None:
        if digdug[0] == 1:
            order_directions_priorities(["a"], 5)
        if digdug[0] == 46:
            order_directions_priorities(["d"], 5)
        if digdug[1] == 1:
            order_directions_priorities(["w"], 5)
        if digdug[1] == 22:
            order_directions_priorities(["s"], 5)

    power = 2/3
    cost = 1.5
    weight = 1 if enemyName == "Fygar" else 1
    x_cost = 0
    y_cost = 0

    # TODO: Add the x and y cost here. EU trato disto

    directions_costs["d"] += dx/distance**power * weight + x_cost if xdx > 0 else directions_costs["d"]
    directions_costs["a"] += dx/distance**power * weight + x_cost if xdx < 0 else directions_costs["a"]
    directions_costs["s"] += dy/distance**power * weight + y_cost if ydy > 0 else directions_costs["s"]
    directions_costs["w"] += dy/distance**power * weight + y_cost if ydy < 0 else directions_costs["w"]
    return directions_costs

def calculate_distances(digdug, enemy, directions_costs, enemyName, nextMove):
    dx = abs(enemy[0] - digdug[0])
    dy = abs(enemy[1] - digdug[1])
    distance = dx + dy
    xdx = enemy[0] - digdug[0]
    ydy = enemy[1] - digdug[1]
    if distance <= 8:
        directions_costs = get_directions_costs(digdug, directions_costs, dx, dy, xdx, ydy, distance, enemyName, nextMove)
    return dx, dy, distance, xdx, ydy, directions_costs

def getRocks(digdug, rocks):
    close_rocks = []
    for rock in rocks:
        distancia = abs(rock["pos"][0] - digdug[0]) + abs(rock["pos"][1] - digdug[1])
        if distancia == 1:
            close_rocks.append(tuple(rock["pos"]))
    return close_rocks

def def_limits(digdug, rocks):
    global directions_priorities
    def_map_limits(digdug)
    rockBelow, rockAbove = def_rock_limits(digdug, rocks)
    return rockBelow, rockAbove

def def_map_limits(digdug):
    global directions_priorities
    if digdug[0] == 0:
        order_directions_priorities(["a"], 1)
    elif digdug[0] == 47:
        order_directions_priorities(["d"], 1)
    if digdug[1] == 0:
        order_directions_priorities(["w"], 1)
    elif digdug[1] == 23:
        order_directions_priorities(["s"], 1)

def def_rock_limits(digdug, rocks):
    global directions_priorities
    rockBelow = False
    rockAbove = False
    for rocks_positions in getRocks(digdug, rocks):
        dx, dy = digdug[0] - rocks_positions[0], digdug[1] - rocks_positions[1]
        if dx == 1:
            order_directions_priorities(["a"], 1)
        elif dx == -1:
            order_directions_priorities(["d"], 1)
        elif dy == 1:
            order_directions_priorities(["w", "A"], 1)
            order_directions_priorities(["s"], 3)
            rockAbove = True
        elif dy == -1:
            order_directions_priorities(["s"], 1)
            rockBelow = True
    return rockBelow, rockAbove

def check_wheres_rock(enemy, rocks):
    for rock in rocks:
        dx = rock["pos"][0] - enemy[0]
        dy = rock["pos"][1] - enemy[1]
        if abs(dx) == 1 and dy == 0:
            return "d" if dx == 1 else "a"


def def_fire_limits(digdug, fire):
    global directions_priorities
    for x, y in fire:
        if abs(y - digdug[1]) <= 1:
            dx = digdug[0] - x
            dy = digdug[1] - y
            if dx == 1 and dy == 0:
                order_directions_priorities(["a"], 1)
            elif dx == -1 and dy == 0:
                order_directions_priorities(["d"], 1)
            elif dy == 1:
                order_directions_priorities(["w"], 1)
            elif dy == -1:
                order_directions_priorities(["s"], 1)
        else:
            break

def choose_direction():
    global directions_priorities
    direction_value = max(directions_priorities.values(), key=lambda x: x[0])[0]
    if direction_value == 8:
        direction_choices = [k for k, v in directions_priorities.items() if v[0] == 8]
        direction = random.choice(direction_choices)
    else:
        direction = max(directions_priorities, key=lambda k: (directions_priorities[k][0], -directions_priorities[k][1]))
    return direction


def get_aim(digdug, x_difference, y_difference):
    aim, run = [], []
    axis = 0 if abs(x_difference) < abs(y_difference) else 2 if abs(x_difference) == abs(y_difference) else 1
    if axis == 0:
        aim.append("s" if y_difference > 0 else "w")
        run.append("w" if aim[0] == "s" else "s")
    elif axis == 1:
        aim.append("d" if x_difference > 0 else "a")
        run.append("a" if aim[0] == "d" else "d")
    else:
        aim.extend(["d" if x_difference > 0 else "a", "s" if y_difference > 0 else "w"])
        run.extend(["a" if aim[0] == "d" else "d", "w" if aim[1] == "s" else "s"])
    return aim, run


async def agent_loop(server_address="localhost:8000", agent_name="student"):
    global count
    global directions_priorities
    async with websockets.connect(f"ws://{server_address}/player") as websocket:
        await websocket.send(json.dumps({"cmd": "join", "name": agent_name}))
        current_aim = ""
        forbidden, terrible, worse, bad, possible, good, important = 1,2,3,5,8,13,21
        shooting_steps = 0
        nextMove = None
        beforeMove = [None]
        
        while True:
            try:
                state = json.loads(await websocket.recv())
                enemies = [{"pos": enemy["pos"], "dir": enemy["dir"], "transverse": enemy.get("traverse"), "name": enemy["name"], "fire": enemy.get("fire"), "id": enemy["id"]} for enemy in state.get("enemies", [])]
                directions_priorities = {"w":[8,0], "d":[8,0], "s":[8,0], "a":[8,0], "A":[8,0]}
                directions_costs = {"w":0, "d":0, "s":0, "a":0}
                listDir = ["w", "d", "s", "a"]

                if enemies:
                    digdug = state["digdug"]
                    rocks = state['rocks']
                    steps = state["step"]
                    level = state["level"]

                    enemies = sorted(enemies, key=lambda enemy: abs(enemy["pos"][0] - digdug[0]) + abs(enemy["pos"][1] - digdug[1]))
                    closestEnemyId = enemies[0]['id']

                    rockBelow, rockAbove = def_limits(digdug, rocks)
                    #print(rockBelow)
                    #print(nextMove)
                    if nextMove != None:
                        if nextMove == "s" and rockBelow and beforeMove != [None] and beforeMove[0] != "A":
                            order_directions_priorities([beforeMove[0]], important)
                            nextMove == "s"
                        else:
                            order_directions_priorities([nextMove], important)
                            beforeMove.append("flag")
                            nextMove = None

                    for enemy in enemies:
                        proximidade = enemies.pop(0)
                        enemy = proximidade["pos"]
                        enemyName = proximidade['name']
                        enemyDir = proximidade["dir"]
                        enemyId = proximidade["id"]
                        transversing = proximidade["transverse"]
                        fire = proximidade["fire"]

                        dx, dy, distance, xdx, ydy, directions_costs = calculate_distances(digdug, enemy, directions_costs, enemyName, nextMove)

                        # TODO: Try different values for steps and threeshold
                        threeshold = (7 * steps) / 2250 + 2
                        if any(value > threeshold for value in directions_costs.values()) and steps < 2000:
                            safe_directions = order_safe_directions(listDir, directions_costs)
                            count = 0
                            order_directions_priorities(safe_directions, important)

                        if distance <= 8 or enemyId == closestEnemyId:

                            if fire:
                                def_fire_limits(digdug, fire)

                            aim, run = get_aim(digdug, xdx, ydy)
                            if dy == 1 and dx == 1:
                                if enemyName == "Fygar" and shooting_steps >= 15 and listDir[enemyDir] != run:
                                    if enemy[1] == 23:
                                        order_directions_priorities([aim[0]], important)
                                    elif not rockBelow and not rockAbove:
                                        order_directions_priorities([run[1]], important)
                                        nextMove = aim[0]
                                    else:
                                        order_directions_priorities([run[0]], important)
                                        nextMove = "s"
                                else:
                                    order_directions_priorities([aim[0], aim[1]], terrible)
                            aim, run = aim[0], run[0]

                            if (distance == 1 and transversing):
                                order_directions_priorities([aim, "A"], forbidden)
                                order_directions_priorities(order_safe_directions(listDir, directions_costs), good)

                            if dx == 2 and dy == 0:
                                order_directions_priorities([aim], terrible)
                                if enemyName == "Fygar" and shooting_steps >= 15:
                                    order_directions_priorities(["s"], important)

                            elif dy == 2 and dx == 0:
                                if enemyName == "Fygar" and shooting_steps >= 20 and listDir[enemyDir] != run:
                                    move = check_wheres_rock(enemy, rocks)
                                    if move != None:
                                        order_directions_priorities([check_wheres_rock(enemy, rocks)], important)
                                        nextMove = aim
                                else:
                                    order_directions_priorities([aim], terrible)

                            if ((dx <= 5 or dx > 1) and abs(ydy) == 1) and enemyName == "Fygar":
                                if listDir[enemyDir] == run:
                                    if shooting_steps < 15:
                                        if dx == 5:
                                            order_directions_priorities(["s"] if ydy == 1 else ["w"], worse)
                                        else:
                                            order_directions_priorities(["s"] if ydy == 1 else ["w"], terrible)
                                else:
                                    if shooting_steps < 15:
                                        if dx == 5:
                                            order_directions_priorities(["s"] if ydy == 1 else ["w"], bad)
                                        else:
                                            order_directions_priorities(["s"] if ydy == 1 else ["w"], worse)

                            if (dx <= 5 and dy == 0) and enemyName == "Fygar" and listDir[enemyDir] == run:
                                if dx == 4 or dx == 5:
                                    order_directions_priorities([aim], terrible)
                                    order_directions_priorities(["A"], worse)
                                    safe_directions = order_safe_directions(["w", "s", run], directions_costs)
                                else:
                                    if aim != current_aim:
                                        order_directions_priorities([aim, run], terrible)
                                        order_directions_priorities(["A"], worse)
                                        #print(beforeMove)
                                        if len(beforeMove) >= 2:
                                            beforeMove = [beforeMove[0]]
                                            safe_directions = ["s"]
                                        else:
                                            safe_directions = order_safe_directions(["w", "s"], directions_costs)
                                order_directions_priorities(safe_directions, important)

                            if distance == 1:
                                order_directions_priorities([aim], forbidden)
                                if aim != current_aim:
                                    order_directions_priorities(["A"], forbidden)
                                    if run == listDir[enemyDir]:
                                        order_directions_priorities(order_safe_directions(listDir, directions_costs), important)
                                        if enemyName != "Fygar":
                                            order_directions_priorities([run], bad)
                                        elif dy == 0:
                                            order_directions_priorities([run], terrible)
                                        else:
                                            order_directions_priorities([run], important)
                                    else:
                                        if enemyName == "Fygar" and dy == 0:
                                            order_directions_priorities([run], terrible)
                                            order_directions_priorities(order_safe_directions(listDir, directions_costs), important)
                                        else:
                                            order_directions_priorities([run], important)
                                else:
                                    order_directions_priorities(["A"], good)


                            elif (dx == 2 and ydy == 1 and listDir[enemyDir] == "w") or \
                                (dx == 2 and ydy == -1 and listDir[enemyDir] == "s") or \
                                (dy == 2 and xdx == 1 and listDir[enemyDir] == "a") or \
                                (dy == 2 and xdx == -1 and listDir[enemyDir] == "d"):
                                    order_directions_priorities([aim], important)

                            elif distance <= 3 and aim != current_aim == run == listDir[enemyDir]:
                                safe_directions = aim if distance == 3 and (enemyName != "Fygar" or run in {"w", "s"}) else run if enemyName == "Fygar" and run in {"w", "s"} else order_safe_directions(["d", "a"] if enemyDir == 0 else ["w", "s"] if enemyDir == 1 else ["a", "d"] if enemyDir == 2 else ["s", "w"], directions_costs)
                                order_directions_priorities(safe_directions, good)

                            elif dx <= 3 and dy == 0:
                                order_directions_priorities([aim], important) if aim != current_aim else order_directions_priorities(["A"], good)

                            elif dy <= 3 and dx == 0:
                                if aim != current_aim:
                                    order_directions_priorities([aim], important)
                                else:
                                    if enemyName == "Fygar" and current_aim == "s" and rockBelow and shooting_steps>=15:
                                        order_directions_priorities(order_safe_directions(["a", "d"], directions_costs), good)
                                        nextMove = "s"
                                    elif dy == 3 and enemyName == "Fygar" and shooting_steps >= 15:
                                        if rockBelow:
                                            move = check_wheres_rock(enemy, rocks)
                                            if move != None:
                                                order_directions_priorities([check_wheres_rock(enemy, rocks)], important)
                                                nextMove = aim
                                        else:
                                            order_directions_priorities([aim], important)
                                    else:
                                        order_directions_priorities(["A"], good)

                            elif (digdug[0] in {enemy[0] - 1, enemy[0] + 1} or digdug[1] in {enemy[1] - 1, enemy[1] + 1}) and distance <= 2:
                                order_directions_priorities(["A"], good)

                            elif enemyId == closestEnemyId:
                                if enemyName != "Fygar":
                                    if abs(xdx) > abs(ydy):
                                        priority = "d" if xdx > 0 else "a"
                                    else:
                                        priority = "s" if ydy > 0 else "w"
                                    order_directions_priorities([priority], good)
                                else:
                                    if ydy == 0:
                                        order_directions_priorities(order_safe_directions(["w", "s"], directions_costs), good)
                                    elif xdx != 0:
                                        priority = "d" if xdx > 0 else "a"
                                        order_directions_priorities([priority], good)
                                    else:
                                        priority = "s" if ydy > 0 else "w"
                                        if priority == "s" and rockBelow:
                                            order_directions_priorities(order_safe_directions(["a", "d"], directions_costs), good)
                                            nextMove = "s"
                                        else:
                                            order_directions_priorities([priority], good)

                ai_command = choose_direction()
                current_aim = ai_command if ai_command != "A" else current_aim
                shooting_steps = shooting_steps + 1 if ai_command == "A" or nextMove != None else 0
                #print(shooting_steps)

                # This should never happen, but if it does random play and pray
                if len(ai_command) == 0:
                    ai_command = random.choice(listDir)

                direction = {"cmd": "key", "key": ai_command}
                beforeMove[0] = ai_command
                
                print(directions_costs)
                print(directions_priorities)
                #print(direction)
                await websocket.send(json.dumps(direction))
                    
            except websockets.exceptions.ConnectionClosedOK:
                print("Server has cleanly disconnected us")
                return
      
#DO NOT CHANGE THE LINES BELOW
loop = asyncio.get_event_loop()
SERVER = os.environ.get("SERVER", "localhost")
PORT = os.environ.get("PORT", "8000")
NAME = os.environ.get("NAME", getpass.getuser())
loop.run_until_complete(agent_loop(f"{SERVER}:{PORT}", NAME))