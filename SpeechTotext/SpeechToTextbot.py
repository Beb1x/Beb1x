import time
import threading
import speech_recognition as sr
import pyaudio
from tkinter import *

def recognize_system_audio(text_widget):
    recognizer = sr.Recognizer()

    def callback(in_data, frame_count, time_info, status):
        try:
            audio_data = recognizer.recognize_google(audio_data=in_data, language="ro-RO", show_all=False)
            if audio_data:
                print("You said:", audio_data)
                text_widget.insert(END, audio_data['alternative'][0]['transcript'] + '\n')
                text_widget.see(END)  # Auto-scroll to the end
        except sr.UnknownValueError:
            pass  # Ignore if the speech is not recognized
        except sr.RequestError as e:
            print(f"Error connecting to Google Speech Recognition service; {e}")

        return in_data, pyaudio.paContinue

    p = pyaudio.PyAudio()

    # Set up stream for capturing system audio
    stream = p.open(format=pyaudio.paInt16,
                    channels=1,
                    rate=44100,
                    input=True,
                    stream_callback=callback)

    stream.start_stream()

    try:
        while stream.is_active():
            time.sleep(0.1)
    except ValueError:
        pass  # Handle the ValueError and break out of the loop

    stream.stop_stream()
    stream.close()
    p.terminate()

if __name__ == "__main__":
    root = Tk()
    root.title("Speech Recognition Bot")

    text_widget = Text(root, height=10, width=50, wrap=WORD)
    text_widget.pack(padx=10, pady=10)

    recognize_system_audio(text_widget)

    # Add your other tasks or code here that can run concurrently with the speech recognition
    root.mainloop()
