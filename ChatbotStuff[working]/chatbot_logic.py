# chatbot_logic.py
# FIRST SCRIPT BOSSULE
# dictionary of predefined responses
responses = {
    "hello": "Hello! How can I help you?",
    "how are you": "I'm just a chatbot, but I'm here to assist you!",
    "bye": "Goodbye! Have a great day.",
    "default": "I'm not sure how to respond to that.",
}

def get_response(user_input):
    # Convert user input to lowercase for case-insensitive matching
    user_input = user_input.lower()

    # Look response in the dictionary, default to a generic response
    return responses.get(user_input, responses["default"])

def teach_response(user_input, new_response):
    responses[user_input] = new_response

def main():
    print("Chatbot: Hello! Type 'bye' to exit.")
    
    while True:
        user_input = input("You: ").strip()

        if user_input == "bye":
            print("Chatbot: Goodbye!")
            break
        elif user_input == "teach":
            new_input = input("Enter a new input: ").lower()
            new_response = input("Enter the response: ")
            teach_response(new_input, new_response)
            print("Chatbot: I've learned a new response!")

        response = get_response(user_input)
        print("Chatbot:", response)

if __name__ == "__main__":
    main()


    #i forget about logger / debugger