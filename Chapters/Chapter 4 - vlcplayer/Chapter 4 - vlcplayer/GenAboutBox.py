#! /usr/bin/env python
#
# GUI module generated by PAGE version 4.11f
# In conjunction with Tcl version 8.6
#    Feb 28, 2018 04:09:49 PM
import sys

try:
    from Tkinter import *
except ImportError:
    from tkinter import *

try:
    import ttk
    py3 = 0
except ImportError:
    import tkinter.ttk as ttk
    py3 = 1

import GenAboutBox_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = Tk()
    top = About (root)
    GenAboutBox_support.init(root, top)
    root.mainloop()

w = None
def create_About(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = Toplevel (root)
    top = About (w)
    GenAboutBox_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_About():
    global w
    w.destroy()
    w = None


class About:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85' 
        _ana2color = '#d9d9d9' # X11 color: 'gray85' 
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("459x535+341+118")
        top.title("About")
        top.configure(highlightcolor="black")



        self.lblProgName = Label(top)
        self.lblProgName.place(relx=0.02, rely=0.04, height=29, width=436)
        self.lblProgName.configure(activebackground="#f9f9f9")
        self.lblProgName.configure(relief=SUNKEN)
        self.lblProgName.configure(text='''Label''')

        self.lblVersion = Label(top)
        self.lblVersion.place(relx=0.02, rely=0.1, height=29, width=436)
        self.lblVersion.configure(activebackground="#f9f9f9")
        self.lblVersion.configure(relief=SUNKEN)
        self.lblVersion.configure(text='''Label''')

        self.lblAuthor = Label(top)
        self.lblAuthor.place(relx=0.02, rely=0.16, height=29, width=436)
        self.lblAuthor.configure(activebackground="#f9f9f9")
        self.lblAuthor.configure(relief=SUNKEN)
        self.lblAuthor.configure(text='''Label''')

        self.lblCopyright = Label(top)
        self.lblCopyright.place(relx=0.02, rely=0.22, height=29, width=436)
        self.lblCopyright.configure(activebackground="#f9f9f9")
        self.lblCopyright.configure(relief=SUNKEN)
        self.lblCopyright.configure(text='''Label''')

        self.Scrolledtext1 = ScrolledText(top)
        self.Scrolledtext1.place(relx=0.02, rely=0.3, relheight=0.54
                , relwidth=0.95)
        self.Scrolledtext1.configure(background="white")
        self.Scrolledtext1.configure(font="TkTextFont")
        self.Scrolledtext1.configure(insertborderwidth="3")
        self.Scrolledtext1.configure(selectbackground="#c4c4c4")
        self.Scrolledtext1.configure(width=10)
        self.Scrolledtext1.configure(wrap=WORD)

        self.btnDismiss = Button(top)
        self.btnDismiss.place(relx=0.28, rely=0.88, height=37, width=177)
        self.btnDismiss.configure(activebackground="#d9d9d9")
        self.btnDismiss.configure(text='''Dismiss''')
        self.btnDismiss.bind('<Button-1>',lambda e:GenAboutBox_support.OnBtnDismiss(e))





# The following code is added to facilitate the Scrolled widgets you specified.
class AutoScroll(object):
    '''Configure the scrollbars for a widget.'''

    def __init__(self, master):
        #  Rozen. Added the try-except clauses so that this class
        #  could be used for scrolled entry widget for which vertical
        #  scrolling is not supported. 5/7/14.
        try:
            vsb = ttk.Scrollbar(master, orient='vertical', command=self.yview)
        except:
            pass
        hsb = ttk.Scrollbar(master, orient='horizontal', command=self.xview)

        #self.configure(yscrollcommand=_autoscroll(vsb),
        #    xscrollcommand=_autoscroll(hsb))
        try:
            self.configure(yscrollcommand=self._autoscroll(vsb))
        except:
            pass
        self.configure(xscrollcommand=self._autoscroll(hsb))

        self.grid(column=0, row=0, sticky='nsew')
        try:
            vsb.grid(column=1, row=0, sticky='ns')
        except:
            pass
        hsb.grid(column=0, row=1, sticky='ew')

        master.grid_columnconfigure(0, weight=1)
        master.grid_rowconfigure(0, weight=1)

        # Copy geometry methods of master  (taken from ScrolledText.py)
        if py3:
            methods = Pack.__dict__.keys() | Grid.__dict__.keys() \
                  | Place.__dict__.keys()
        else:
            methods = Pack.__dict__.keys() + Grid.__dict__.keys() \
                  + Place.__dict__.keys()

        for meth in methods:
            if meth[0] != '_' and meth not in ('config', 'configure'):
                setattr(self, meth, getattr(master, meth))

    @staticmethod
    def _autoscroll(sbar):
        '''Hide and show scrollbar as needed.'''
        def wrapped(first, last):
            first, last = float(first), float(last)
            if first <= 0 and last >= 1:
                sbar.grid_remove()
            else:
                sbar.grid()
            sbar.set(first, last)
        return wrapped

    def __str__(self):
        return str(self.master)

def _create_container(func):
    '''Creates a ttk Frame with a given master, and use this new frame to
    place the scrollbars and the widget.'''
    def wrapped(cls, master, **kw):
        container = ttk.Frame(master)
        return func(cls, container, **kw)
    return wrapped

class ScrolledText(AutoScroll, Text):
    '''A standard Tkinter Text widget with scrollbars that will
    automatically show/hide as needed.'''
    @_create_container
    def __init__(self, master, **kw):
        Text.__init__(self, master, **kw)
        AutoScroll.__init__(self, master)

if __name__ == '__main__':
    vp_start_gui()



