import pyttsx3
import google.generativeai as genai
import re

def main():
    # Configure API key and model (replace with your credentials)
    api_key = "..."
    model_name = "gemini-pro"
    genai.configure(api_key=api_key)
    model = genai.GenerativeModel(model_name)

    # Initialize pyttsx3
    tts_engine = pyttsx3.init()

    # Set female voice if available
    female_voice_id = None
    voices = tts_engine.getProperty('voices')
    for voice in voices:
        if "female" in voice.name.lower():
            female_voice_id = voice.id
            break
    if female_voice_id:
        tts_engine.setProperty('voice', female_voice_id)

    # Initiate chat
    chat = model.start_chat()

    # Welcome message
    print("Welcome to the Career Assistant Bot!\n")

    while True:
        # Get user input for prompts
        Name= input("What is your name?: ")
        Location = input("In which city are you located?: ")
        Mark = input("What was your percentage in 12th standard?: ")
        Subject = input("What subjects did you excel in during 12th standard?: ")
        Interest = input("What topics or activities do you find interesting?: ")
        Hobbies = input("What do you like to do in your free time?: ")
        Goal = input("What do you want to achieve in your career?: ")
        Salary = input("Do you want a job that pays well? (y/n): ")
        job_study = input("Do you plan to pursue higher studies or enter the job market?: ")
        Ambition = input("What do you think you'd like to work in the future (Ambition)?: ")

        # Generate story using user input as prompts
        career_start = f"""
Let's explore your academic achievements, interests, and career aspirations to find the perfect higher studies course and college for you.

Your Name is {Name}.
You are located in {Location} and achieved {Mark}% in your 12th standard exams.
It's great to know that you excelled in {Subject} compared to other subjects.
You are interested in {Interest} and enjoy {Hobbies} in your free time.
Your career goal is to {Goal}, with a preference for a high-paying job.
Currently, you are considering {job_study} and aspire to work as a {Ambition} in the future.
A good salary is important to you, and you're willing to relocate if necessary.

Considering your academic performance and interests, as well as your career aspirations, let's explore suitable higher studies courses that align with your profile and recommend reputable colleges in your {Location}.
remove ' * ' in the output

"""
        # Start conversation with initial prompt
        response = chat.send_message(career_start)

        # Print the initial response
        print(response.text)

        # Speak the initial response
        text_to_speak = re.sub(r'[^\w\s]', '', response.text)  # Remove symbols and asterisks
        tts_engine.say(text_to_speak)
        tts_engine.runAndWait()

        # Chat loop
        while True:
            # Ask for user input to continue the story or end the conversation
            prompt = input("What happens next? (Type 'end' to finish): ")

            if prompt.lower() == "end":
                print("Thank you for using Career Assistant Bot! Good luck for your future.")
                tts_engine.say("Thank you for using Career Assistant Bot! Good luck for your future.")
                tts_engine.runAndWait()
                break

            # Continue conversation with user input
            response = chat.send_message(prompt)
            # Print the response
            print(response.text)

            text_to_speak = re.sub(r'[^\w\s]', '', response.text)  # Remove symbols and asterisks
            # Speak the response
            tts_engine.say(text_to_speak)
            tts_engine.runAndWait()


if __name__ == "__main__":
    main()
