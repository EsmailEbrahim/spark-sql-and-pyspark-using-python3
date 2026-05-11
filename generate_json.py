import json
import random
import time

names = ["Ali", "Sara", "Omar", "Noor", ""]
cities = ["Sanaa", "Aden", "", None]

while True:
    data = {
        "id": random.randint(1, 100),
        "name": random.choice(names),
        "age": random.choice([20, 21, "", None]),
        "city": random.choice(cities)
    }

    filename = f"./lab_data/data_{int(time.time())}.json"

    with open(filename, "w") as f:
        json.dump(data, f)

    print("Generated:", filename)
    time.sleep(3)
