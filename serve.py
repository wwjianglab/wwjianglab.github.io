#!/usr/bin/env python3
from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler
import os, webbrowser, threading

ROOT = os.path.dirname(os.path.abspath(__file__))
os.chdir(ROOT)
url = "http://127.0.0.1:8000/"
threading.Timer(0.8, lambda: webbrowser.open(url)).start()
print("Lab website running at:", url)
print("Press Ctrl+C to stop.")
ThreadingHTTPServer(("127.0.0.1", 8000), SimpleHTTPRequestHandler).serve_forever()
