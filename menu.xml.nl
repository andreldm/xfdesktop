<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xfdesktop-menu>

<!--
     Explanantion of Xfce 4 menu file:
     =================================
     Here we will try to explain the format of the menu file.  Look at the
     actual menu below for the real examples.  You shouldn't really need to
     edit this manually; check out xfce4-menueditor instead.
-->

<!-- Obviously, this is how you make a comment ;-) -->

<!--

  + Everything is between exactly one pair of
    <xfdesktop-menu></xfdesktop-menu> tags.

  + Applications:
    <app name="Name in menu" cmd="Command to run" term="false"
         icon="iconfile"  snotify="false" visible="true" />
    The 'term' attribute determines if the program needs a terminal to run,
    and 'snotify' sets whether or not the program supports startup
    notification.  You can set an icon to be displayed next to the item with
    the 'icon' attribute.  Only 'name' and 'cmd' are required.

  + Separators:
    <separator visible="true" />
    Creates a horizontal separator.  The 'visible' attribute is optional.

  + Submenus:
    <menu name="Name in menu" icon="iconfile" visible="true"></menu>
    Only 'name' is required, but you can also set an icon to be displayed using
    the 'icon' attribute.  Between the menu tags you can define more
    applications, separators and menus.

  + Titles
    <title name="Name in menu" icon="iconfile" visible="true" />
    Creates an insensitive menu title.  You can even add an optional icon to
    the title if you'd like.

  + Including other files:
    <include type="file" src="menu2.xml" visible="true" />
    Includes the file menu2.xml.  A relative path is assumed to be rooted at
    ~/.config/xfce4/desktop/.  An absolute path will be treated as such.

  + Including an autogenerated system menu:
    <include type="system" style="simple" unique="true" visible="true" />
    Includes a system menu.  style can be "simple" or "multilevel".  If unique
    is set to "false", multiple menu items will be generated if the app
    appears in multiple categories.
-->

<xfdesktop-menu>

	<title name="Xfce Menu" icon="xfce4-backdrop"/>

	<separator/>

	<app name="Programma uitvoeren..." cmd="xfrun4" icon="gnome-fs-executable"/>

	<separator/>

	<app name="Terminal" cmd="xfterm4" icon="gnome-terminal"/>
	<app name="Bestandsmanager (xffm)" cmd="xffm" icon="file-manager"/>
	<app name="Web Browser" cmd="xfbrowser4" icon="gnome-globe"/>

	<separator/>

	<menu name="Instellingen" icon="gnome-settings">
		<app name="Configuratiemanager" cmd="xfce-setting-show" snotify="true" icon="gnome-settings"/>
	</menu>

	<separator/>

	<!--
	  The next line includes the autogenerated menu at the current level.  If
	  you want, you can put this in its own submenu.
	-->
	<include type="system" style="simple" unique="true"/>

	<!--
	  Uncomment the following line (and comment the above) if you would rather
	  include a separate menu file instead of using the autogenerated menu.
	-->
	<!-- <include type="file" src="menu2.xml"/> -->

    <separator/>

    <app name="Help" cmd="xfhelp4" icon="gnome-help"/>
    <app name="Xfce Info" cmd="xfce4-about" icon="gnome-info"/>
    <!--
      This will cause xfce4-session to quit, after first displaying a log-out
      dialog box.  If xfce4-session isn't running, it will quit xfdesktop.
    -->
    <builtin name="Afsluiten" cmd="quit" icon="gnome-logout"/>

</xfdesktop-menu>
