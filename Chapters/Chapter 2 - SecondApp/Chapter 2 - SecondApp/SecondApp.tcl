#############################################################################
# Generated by PAGE version 5.5
#  in conjunction with Tcl version 8.6
#  Nov 08, 2020 04:19:12 PM -03  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top37 {base} {
    global vTcl
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 517x386+427+179
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1284 781
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Widget Demo 1"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    frame $top.fra38 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.fra38" "frameTop" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra38
    label $site_3_0.lab39 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Entry or SINGLE LINE Text Widget:} -width 116 -wraplength 110 
    vTcl:DefineAlias "$site_3_0.lab39" "Label1" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent40 \
        -background white \
        -font {-family {} -size 0 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -textvariable entryText 
    vTcl:DefineAlias "$site_3_0.ent40" "entryExample" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but41 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -pady 0 \
        -text {Get The Text} 
    vTcl:DefineAlias "$site_3_0.but41" "btnGetText" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but41 <Button-1> {
        lambda e: btnGetText_lclick(e)
    }
    place $site_3_0.lab39 \
        -in $site_3_0 -x 30 -y 20 -width 146 -relwidth 0 -height 41 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent40 \
        -in $site_3_0 -x 167 -y 30 -width 164 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but41 \
        -in $site_3_0 -x 360 -y 20 -width 103 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    labelframe $top.lab42 \
        -font TkDefaultFont -foreground black -text {Radio Buttons} \
        -background $vTcl(actual_gui_bg) -height 75 -highlightcolor black \
        -width 150 
    vTcl:DefineAlias "$top.lab42" "lframeRadioButtons" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab42
    radiobutton $site_3_0.rad43 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Red -value Red -variable Colors 
    vTcl:DefineAlias "$site_3_0.rad43" "rbRed" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad44 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Blue -value Blue -variable Colors 
    vTcl:DefineAlias "$site_3_0.rad44" "rbBlue" vTcl:WidgetProc "Toplevel1" 1
    radiobutton $site_3_0.rad45 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Green -value Green -variable Colors 
    vTcl:DefineAlias "$site_3_0.rad45" "rbGreen" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -relief sunken \
        -textvariable Colors 
    vTcl:DefineAlias "$site_3_0.lab46" "lblRbInfo" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.rad43 \
        -in $site_3_0 -x 50 -y 50 -anchor nw -bordermode ignore 
    place $site_3_0.rad44 \
        -in $site_3_0 -x 50 -y 80 -anchor nw -bordermode ignore 
    place $site_3_0.rad45 \
        -in $site_3_0 -x 50 -y 110 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 50 -y 150 -width 114 -height 21 -anchor nw \
        -bordermode ignore 
    labelframe $top.lab47 \
        -font TkDefaultFont -foreground black -text {Check Boxes} \
        -background $vTcl(actual_gui_bg) -height 75 -highlightcolor black \
        -width 150 
    vTcl:DefineAlias "$top.lab47" "lframeCheckBoxes" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab47
    checkbutton $site_3_0.che48 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Apples -variable che39 
    vTcl:DefineAlias "$site_3_0.che48" "chkApples" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $site_3_0.che49 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Bananas -variable che40 
    vTcl:DefineAlias "$site_3_0.che49" "chkBananas" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $site_3_0.che50 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text Grapes -variable che41 
    vTcl:DefineAlias "$site_3_0.che50" "chkGrapes" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -pady 0 \
        -text {Print Checks} 
    vTcl:DefineAlias "$site_3_0.but51" "btnPrintChecks" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but51 <Button-1> {
        lambda e: btnGetChecks_lclick(e)
    }
    place $site_3_0.che48 \
        -in $site_3_0 -x 40 -y 40 -anchor nw -bordermode ignore 
    place $site_3_0.che49 \
        -in $site_3_0 -x 40 -y 72 -anchor nw -bordermode ignore 
    place $site_3_0.che50 \
        -in $site_3_0 -x 40 -y 106 -anchor nw -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 60 -y 170 -width 117 -height 24 -anchor nw \
        -bordermode ignore 
    frame $top.fra52 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.fra52" "frameBottom" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra52
    button $site_3_0.but53 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -pady 0 \
        -text Exit 
    vTcl:DefineAlias "$site_3_0.but53" "btnExit" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but53 <Button-1> {
        lambda e: btnExit_lclick(e)
    }
    place $site_3_0.but53 \
        -in $site_3_0 -x 197 -y 26 -width 99 -height 24 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra38 \
        -in $top -x 1 -y 0 -width 515 -height 76 -anchor nw \
        -bordermode ignore 
    place $top.lab42 \
        -in $top -x 1 -y 77 -width 220 -height 235 -anchor nw \
        -bordermode ignore 
    place $top.lab47 \
        -in $top -x 286 -y 77 -width 230 -height 235 -anchor nw \
        -bordermode ignore 
    place $top.fra52 \
        -in $top -x 1 -y 313 -width 515 -height 72 -anchor nw \
        -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top37 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

