#Date/Time/Clock thingy

from datetime import datetime #Get current time?
import time
import os #get host os

now = datetime.now() #define now as datetime.now()

x = 1 #this is always true
while True: #infinite loop begin
    from datetime import datetime
    print("{0}/{1}/{2} {3}:{4}:{5}".format(now.day, now.month, now.year, now.hour, now.minute, now.second))
    #line 12 should set out the time/date like DD/MM/YY HH:MM:SS there is a bug where if a number starts with 0 it is blank.
    os.system('cls' if os.name == 'nt' else 'clear') #clear screen Win/Mac
