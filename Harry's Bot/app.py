from flask import Flask, render_template, request
import pyttsx3
import google.generativeai as genai
import re

app = Flask(__name__)

api_key = "..."
model_name = "gemini-pro"
genai.configure(api_key=api_key)
model = genai.GenerativeModel(model_name)


start = -1

Name = None
Location = None
Mark = None
Subject = None
Interest = None
Hobbies = None
Goal = None
Salary = None
job_study = None
Ambition = None

@app.route("/")
def index():
    global start
    start = -1
    chat = model.start_chat()
    return render_template("chat.html")

@app.route("/chat",methods=["POST","GET"])
def chat():
    global start, Name, Location, Mark, Subject, Interest, Hobbies, Goal, Salary, job_study, Ambition
    if request.method == "POST":
        input = request.form['input']
        if input.lower()=="hi" and start==-1:
            start+=2
            return "Welcome to the Career Assistant Bot!\nwhat is your name?"
        elif start==1:
            start+=1
            Name = input
            return "In which city are you located?"
        elif start==2:
            start+=1
            Location = input
            return "What was your percentage in 12th standard?"
        elif start==3:
            start+=1
            Mark = input
            return "What subjects did you excel in during 12th standard?"
        elif start==4:
            start+=1
            Subject = input
            return "What topics or activities do you find interesting?"
        elif start==5:
            start+=1
            Interest = input
            return "What do you like to do in your free time?"
        elif start==6:
            start+=1
            Hobbies = input
            return "What do you want to achieve in your career?"
        elif start==7:
            start+=1
            Goal = input
            return "Do you want a job that pays well? (y/n)"
        elif start==8:
            start+=1
            Salary = input
            return "Do you plan to pursue higher studies or enter the job market?"
        elif start==9:
            start+=1
            job_study = input
            return "What do you think you'd like to work in the future (Ambition)?"
        elif start==10:
            start+=1
            Ambition = input
            
            career_start = f"""
                Let's explore your academic achievements, interests, and career aspirations to find the perfect higher studies course and college for you. Your Name is {Name}

                You are located in {Location} and achieved {Mark}% in your 12th standard exams. It's great to know that you excelled in {Subject} compared to other subjects.

                You are interested in {Interest} and enjoy {Hobbies} in your free time. Your career goal is to {Goal}, with a preference for a high-paying job. Currently, you are considering {job_study} and aspire to work as a {Ambition} in the future. A good salary is important to you, and you're willing to relocate if necessary.

                Considering your academic performance and interests, as well as your career aspirations, let's explore suitable higher studies courses that align with your profile and recommend reputable colleges in your {Location}.
                """
            chat = model.start_chat()
            response = chat.send_message(career_start)
            
            txt = response.text.replace(" * ", "<br>")
            txt = re.sub(r'\*\*(.*?)\*\*', r'<b>\1</b>', txt)
            return txt
    else:
        return "error"
