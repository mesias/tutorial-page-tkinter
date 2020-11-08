#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 5.5
#  in conjunction with Tcl version 8.6
#    Nov 08, 2020 05:08:19 PM -03  platform: Linux

import sys

try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

global valorAtual 
valorAtual = 0
global operacao
operacao = None
global novoValor
novoValor = False

def set_Tk_var():
    global txtValor
    txtValor = tk.StringVar()
    global btnZeroVar
    btnZeroVar = tk.StringVar()

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top
    btnZeroVar.set('0')
    top_level.winfo_toplevel().bind('<Button-1>', lambda x: cmdUm)
    # top_level.winfo_toplevel().bind('<Key-43>', lambda x: cmdSoma())
    # top_level.winfo_toplevel().bind('<Key-45>', lambda x: cmdSub())
    top_level.winfo_toplevel().bind('<Key-61>', lambda x: cmdCalcula())
    # txtValor.set(valorAtual)

def cmdCalcula():
    global valorAtual, operacao
    print('calculadora_support.cmdCalcula')
    sys.stdout.flush()

    if not operacao:
        print('Sem operacao')
    val = txtValor.get()
    if val:
        if operacao == '+':
            valorAtual += int(val)
        if operacao == '-':
            valorAtual -= int(val)

    txtValor.set(str(valorAtual))    
    operacao = None

def cmdCinco():
    print('calculadora_support.cmdCinco')
    sys.stdout.flush()
    txtDefineValor('5')

def cmdDiv():
    print('calculadora_support.cmdDiv')
    sys.stdout.flush()   

def cmdDois():
    print('calculadora_support.cmdDois')
    sys.stdout.flush()
    txtDefineValor('2')

def cmdMulti():
    print('calculadora_support.cmdMulti')
    sys.stdout.flush()
    

def cmdNove():
    print('calculadora_support.cmdNove')
    sys.stdout.flush()
    txtDefineValor('9')

def cmdOito():
    print('calculadora_support.cmdOito')
    sys.stdout.flush()
    txtDefineValor('8')

def cmdPonto():
    print('calculadora_support.cmdPonto')
    sys.stdout.flush()
    

def cmdQuatro():
    print('calculadora_support.cmdQuatro')
    sys.stdout.flush()
    txtDefineValor('4')

def cmdSeis():
    print('calculadora_support.cmdSeis')
    sys.stdout.flush()
    txtDefineValor('6')

def cmdSete():
    global novoValor
    print('calculadora_support.cmdSete')
    sys.stdout.flush()
    txtDefineValor('7')

def txtDefineValor(valor):
    global novoValor
    txt = txtValor.get()
    if novoValor:
        txtValor.set(valor)
        novoValor = False
    else:
        txtValor.set(txt + valor)


def cmdSoma():
    global valorAtual, operacao, novoValor
    print('calculadora_support.cmdSoma')
    sys.stdout.flush()    
    val = int(txtValor.get())
    if not operacao:
        valorAtual = val
    else:
        valorAtual += val
    operacao = '+'
    txtValor.set(valorAtual)
    novoValor = True
    print(f"SOMA novo valor atual: {valorAtual}")

def cmdLimpar():
    print('calculadora_support.cmdLimpar')
    sys.stdout.flush()
    txtValor.set('')
    
def cmdZerar():
    global valorAtual, operacao
    print('calculadora_support.cmdZerar')
    sys.stdout.flush()
    txtValor.set('')
    valorAtual = 0
    operacao = None

def cmdSub():
    global valorAtual, operacao, novoValor
    print('calculadora_support.cmdSub')
    sys.stdout.flush()
    val = int(txtValor.get())
    if not operacao:
        valorAtual = val
    else:
        valorAtual -= val
    operacao = '-'
    txtValor.set(valorAtual)
    novoValor = True
    print(f"SOMA novo valor atual: {valorAtual}")

def cmdTres():
    print('calculadora_support.cmdTres')
    sys.stdout.flush()
    txtDefineValor('3')

def cmdUm():
    print('calculadora_support.cmdUm')
    sys.stdout.flush()
    txtDefineValor('1')

def cmdZero():
    print('calculadora_support.cmdZero')
    sys.stdout.flush()
    txtDefineValor('0')

def txtValidate(*args):
    print('calculadora_support.txtValidate')
    for arg in args:
        print ('another arg:', arg)
    sys.stdout.flush()
    return True

# def txtValidate(*args, **kargs):
#     print('VAlidate:', args)    
#     if value_if_allowed:
#         try:
#             float(value_if_allowed)
#             return True
#         except ValueError:
#             return False
#     else:
#         return False

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import calculadora
    calculadora.vp_start_gui()



