from datetime import datetime
import pyttsx3
import re
import win32clipboard

speech = pyttsx3.init(driverName='sapi5', debug=True)
speech.setProperty('rate', 150)
speech.setProperty('voice', speech.getProperty('voices')[1].id)


def say(text):
    speech.say(text)
    speech.runAndWait()


def get_clipboard():
    try:
        win32clipboard.OpenClipboard()
        data = win32clipboard.GetClipboardData()
    finally:
        win32clipboard.CloseClipboard()
    return data


# Vocola function: Jarpy.Downcase
def downcase(text):
    return text.lower()


# Vocola function: Jarpy.Snakecase
def snakecase(text):
    text = text.lower()
    text = text.replace(' . ', '.')
    text = text.replace(' ', '_')
    return text


# Vocola function: Jarpy.Kebabcase
def kebabcase(text):
    text = text.lower()
    text = text.replace(' ', '-')
    return text


# Vocola function: Jarpy.Camelcase
def camelcase(text):
    words = text.lower().split(' ')
    camel = words.pop(0)
    for word in words:
        camel += word.capitalize()
    return camel


# Vocola function: Jarpy.Numeralise
def numeralise(text):
    text = re.sub('\s*[Zz]ero\s*', '0', text)
    text = re.sub('\s*[Oo]ne\s*', '1', text)
    text = re.sub('\s*[Tt]wo\s*', '2', text)
    text = re.sub('\s*[Tt]hree\s*', '3', text)
    text = re.sub('\s*[Ff]our\s*', '4', text)
    text = re.sub('\s*[Ff]ive\s*', '5', text)
    text = re.sub('\s*[Ss]ix\s*', '6', text)
    text = re.sub('\s*[Ss]even\s*', '7', text)
    text = re.sub('\s*[Ee]ight\s*', '8', text)
    text = re.sub('\s*[Nn]ine\s*', '9', text)
    return text

# Vocola function: Jarpy.UTCNow
def utcnow():
    return datetime.utcnow().isoformat()

# Vocola procedure: Jarpy.Speak
def speak(text):
    say(text)
    return ''

# Vocola procedure: Jarpy.SpeakNews
def speak_news():
    say("It's all bad, mate.")
    return ''

# Vocola procedure: Jarpy.SpeakClipboard
def speak_clipboard():
    say(get_clipboard())
    return ''
