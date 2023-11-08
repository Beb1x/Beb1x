#logic gates, it destroyed me
import database_handler
import spacy
import wikipediaapi
import random
from fuzzywuzzy import fuzz

nlp = spacy.load("en_core_web_lg")
wikipediaapi.Wikipedia(user_agent="Beb1xBot/1.0 (https://github.com/Beb1x/Beb1x; example@gmail.com) python-requests/2.26.0")
wiki_wiki = wikipediaapi.Wikipedia("Beb1xBot")
failure_count = 0
responses = {
    "hello": ["Hello! How can I help you?", "Hi there!", "Greetings!"],
    "how are you": ["I'm just a bot created by Beb1x, but I'm here to assist you!", "I'm here to help.", "I don't have feelings, but I'm ready to assist."],
    "bye": ["Goodbye! Have a great day.", "Farewell!", "See you later!", "See you later, alligator! :))"],
    "default": ["I'm not sure how to respond to that.", "I didn't understand. Can you rephrase?"],
}
def extract_wikipedia_query(user_input):
    trigger_phrases = ["What could you tell me about", "tell me about", "tell me something about", "What about"]
    for trigger_phrase in trigger_phrases:
        if trigger_phrase in user_input.lower():
            return user_input.lower().split(trigger_phrase)[-1].strip()
    return None

def tokenize_input(user_input):
    doc = nlp(user_input)
    return [token.text for token in doc]

def get_response_from_db(user_input, conn):
    user_input = user_input.lower()
    doc = nlp(user_input)
    user_tokens = [token.text for token in doc]

    cursor = conn.cursor()
    cursor.execute("SELECT input, response FROM chatbot_data")
    results = cursor.fetchall()

    for input_text, response_text in results:
        input_doc = nlp(input_text)
        input_tokens = [token.text for token in input_doc]
        if user_tokens == input_tokens:
            return response_text

    return None

def get_response(user_input, conn):
    global failure_count

    query = extract_wikipedia_query(user_input)

    if query:
        return get_wikipedia_summary(query)

    user_input = user_input.lower()

    if len(user_input) < 5:  # Minimum input length to consider
        for predefined_response, response_list in responses.items():
            for response in response_list:
                if fuzz.partial_ratio(user_input, predefined_response) >= 80:
                    return random.choice(response_list)

    if len(user_input) < 5:  # Minimum input length for further processing
        print("Chatbot: I didn't understand. Can you rephrase?")
        return random.choice(responses["default"])

    response = handle_default_response(user_input, conn)
    if response:
        return response

    user_tokens = tokenize_input(user_input)
    cursor = conn.cursor()
    cursor.execute("SELECT input, response FROM chatbot_data")
    results = cursor.fetchall()

    best_db_match = None
    best_db_match_score = 0

    for input_text, response_text in results:
        input_tokens = tokenize_input(input_text.lower())
        match_score = fuzz.ratio(user_tokens, input_tokens)
        if match_score > best_db_match_score:
            best_db_match_score = match_score
            best_db_match = response_text

    if best_db_match_score >= 80:
        return best_db_match

    if failure_count >= 3:
        print("Chatbot: I've tried my best, but I still don't understand. Let's move on.")
        return random.choice(responses["default"])

    print("Chatbot: I didn't understand. Can you rephrase?")
    if failure_count == 2:
        user_response = input("Chatbot: I don't know the answer to this. Can you help me? What's the answer? ")
        if user_response:
            teach_response(user_input, user_response, conn)
            print("Chatbot: Thank you for helping me learn!")
        failure_count = 0
    else:
        failure_count += 1

    return random.choice(responses["default"])

def handle_default_response(user_input, conn):
    db_response = get_response_from_db(user_input, conn)
    if db_response:
        return db_response
    return None

def get_wikipedia_summary(query):
    page = wiki_wiki.page(query)
    if page.exists():
        return "Sure, here's what I found on Wikipedia:\n\n" + page.summary
    else:
        return "I couldn't find information about that topic on Wikipedia"

def teach_response(user_input, new_response, conn, entity=None, entity_type=None, description=None):
    responses[user_input] = new_response
    database_handler.insert_response(conn, user_input, new_response, entity, entity_type, description)
    print(f"Response added to the database: {user_input} {new_response}")

def main(conn):
    print("Chatbot: Hello! Type 'bye' to exit.")

    while True:
        user_input = input("You: ").strip()

        if user_input == "bye":
            print("Chatbot: Goodbye!")
            break
        elif user_input == "teach":
            new_input = input("Enter a new input: ").lower()
            new_response = input("Enter the response: ")
            teach_response(new_input, new_response, conn)
            print("Chatbot: I've learned a new response!")
        else:
            response = get_response(user_input, conn)
            print("Chatbot:", response)

if __name__ == "__main__":
    main()
