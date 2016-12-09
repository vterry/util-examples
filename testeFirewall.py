import sys
import socket
from sys import argv

file = argv[1]

print 'Arquivo de entrada:  ' + file

#Declarando socket
#s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
f = open(file)

print 'Iniciando teste de conexao ...'

for line in iter(f):

        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        cleared_line = line.strip()
        if cleared_line:

                ip,port = cleared_line.split(':')
                ip_dest = socket.gethostbyname(ip)

                try:
                        s.connect((ip_dest, int(port)))

                except:
                        print 'Conexao falhou com servidor: ' + ip_dest + ' na porta ' + port
                else:
                        print 'Conexao OK com sevidor: ' + ip_dest + ' na porta ' + port
                        s.close()

f.close()
