# -*- coding: utf-8 -*-

"""
Created on Fri Dec 04 13:10:20 2015

@author: bayevskihk
"""

import sys

def main(argv):
    number    = len(argv)
    data_addr = 0
    last_addr = 0 
    
    if(number != 2):
        return
    else:
        try:
            data_addr = int(argv[0])
            last_addr = int(argv[1])
        except:
            print ("Wrong arguments")
            return
        
        if(parse("text.vh", "text.rom", data_addr) < 0):
            print ("Wrong text file")
            return
            
        if(parse("data.vh", "data.rom", last_addr - data_addr) < 0):
            print ("Wrong text file")
            return
        
        print ("Convertion was successfull")
        
        
def parse(file_name, rom_name, addr_last):
    hex_file = open(file_name, 'r')
    rom_file = open(rom_name, 'w')  
#    rom_file.truncate()
    
    hex_parts = hex_file.readline()
    line = ""
    
    try:
        hex_parts.index("@")
    except:
        return -1
        
    attached = 0
    words = 0    
    
    rom_file.write("@00000000\n");
        
    while(1):        
        hex_parts = hex_file.readline()  
#        hex_parts = hex_parts.translate({None: "\n"})
        hex_parts = hex_parts.split();
        
        if(len(hex_parts) < 4):
            break
        
        for part in hex_parts:       
            
            if(len(part) == 0):
                continue
                        
            line += part
            attached += 1
            
            if(attached == 4):
                attached = 0    
                words += 1
                rom_file.write(line + "\n")
                line = ""
                
    
    for i in range(addr_last - words):
        rom_file.write("00000000\n")
    
    rom_file.close()
    
    return 0

if __name__ == '__main__':
    main(sys.argv[1:])
    