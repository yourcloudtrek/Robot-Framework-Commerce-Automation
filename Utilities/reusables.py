import random

def generate_email():
    number = random.randint(1000, 9999)
    return f"ram{number}@robot.com"
    