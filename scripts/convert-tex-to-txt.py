###############################################################
# Script that convert Psalterio TeX formatted songs to txt
# Author: André Sousa, 2021
#
###############################################################

import re
import os
import csv

def get_title(s):
    title = re.findall("(?s)beginsong{(.*?)}", s, flags = re.MULTILINE)
    return title[0]

def get_sections(s):
    sections = re.findall("(?s)section(.*?)%", s, flags= re.MULTILINE)
    return sections

def get_verse(s):
    verse = re.findall("(?s)beginverse(.*?)endverse", s, flags= re.MULTILINE)
    chorus = re.findall("(?s)beginchorus(.*?)endchorus", s, flags= re.MULTILINE)

    if len(verse) > 0:
        parsed_verse = verse[0]
    elif len(chorus) > 0:
        parsed_verse = chorus[0]

     
    verse_no_chords = re.sub(r'(?s)\\\[(.*?)]','', parsed_verse, flags= re.MULTILINE)
    return verse_no_chords
        
with open('outputlog.csv', 'w', newline='') as csvfile:
    fieldnames = ['title', 'status']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    
    for file in os.listdir("input"):
        try:
            if file.endswith(".tex"):
                with open ('input/'+ file, 'r', encoding="utf8") as input:
                    output = ''
                    latex_file_str = input.read()
                    title = get_title(latex_file_str)
                    sections = get_sections(latex_file_str)
                    output += title + '\n'
                    print(f'Converting "{title}"')
                    for section in sections:
                        verse = get_verse(section)
                        output += verse
                    final = output.replace('\\','')
                    outputfile = open('output/'+ file[:-4] +'.txt', 'w')
                    outputfile.writelines(final)
                    outputfile.close()
                    writer.writerow({'title':title, 'status':'converted'})
        except:
            writer.writerow({'title':title, 'status':'error'})
            

