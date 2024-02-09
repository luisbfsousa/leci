with open('conexo5.txt', 'w') as f:
    f.write("1 0\n")  
    f.write("1000\n")  
    f.write("2000\n") 
    for i in range(999): 
        f.write(f"{i} {i+1}\n")
    f.write("999 0\n") 
    for i in range(1000, 2000): 
        f.write(f"{i%1000} {(i+1)%1000}\n")

#Precisei de criar este programa pois nenhum dos txt's do 2o projeto eram fortemente conexos
#Com os digrafos gerados consigo testar melhor a função StronglyConnected
#Até consigo testar grafos orientados de diferentes tamanhos