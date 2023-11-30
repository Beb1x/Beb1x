import requests
from bs4 import BeautifulSoup
from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
import random

bot = ChatBot('RiddleBot')

def get_random_riddle():
    url = "Still searching" 
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    riddles = []
    for riddle_div in soup.find_all('div', class_='riddle'):
        question = riddle_div.find('p', class_='question').text
        options = [option.text for option in riddle_div.find_all('li', class_='option')]
        answer = riddle_div.find('p', class_='answer').text

        riddles.append({
            "question": question,
            "options": options,
            "answer": answer
        })

    return random.choice(riddles)


trainer = ListTrainer(bot)

for _ in range(10):
    riddle = get_random_riddle()
    trainer.train([riddle])

riddle = get_random_riddle()
print("Riddle:", riddle["question"])
print("Options:", riddle["options"])

# Simulate user input
user_input = input("Your answer: ")

# Evaluate user's answer
if user_input.lower() == riddle["answer"].lower():
    print("Correct!")
else:
    print("Incorrect. The correct answer is:", riddle["answer"])
