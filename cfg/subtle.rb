# coding: utf-8
# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
require 'pathname'
ICONS_ROOT = Pathname.new(File.expand_path('~/.config/subtle/icons'))

def xbm(icon)
  icon = icon + '.xbm'
  (ICONS_ROOT + icon).to_s
end

set :step,      5
set :snap,      10
set :gravity,   :center
set :urgent,    false
set :resize,    false
set :tiling,    false

# Set the WM_NAME of subtle (Java quirk)
# set :wmname, "LG3D"

screen 1 do
  top [ :views, :title, :spacer, :keychain, :spacer, :tray, :sublets ]
end

style :separator do
  separator '·'
end

style :all do
  font       "xft:Russo One-8:antialias=true:hinting=true:hintstyle=hintmedium"
  padding     0, 4, 0, 4
  foreground  '#dca3a3'
  background  '#000000'
end

style :title do
  foreground '#dca3a3'
end

style :views do
  style :focus do
    foreground  '#f7e7de'
    border_bottom '#c47858', 1
    background '#4f220e'
  end

  style :occupied do
    foreground '#c47858'
    background '#210C03'
  end

  style :urgent do
  end

  style :visible do
  end
end

style :clients do
  active   '#302f2e', 1
  inactive '#0f0f0f', 1
  width 100
end

style :subtle do
  panel       '#000000'
end

# + Gravities

gravity :top_left,       [   0,   0,  50,  50 ]
gravity :top_left66,     [   0,   0,  50,  66 ]
gravity :top_left33,     [   0,   0,  50,  34 ]

gravity :top,            [   0,   0, 100,  50 ]
gravity :top66,          [   0,   0, 100,  66 ]
gravity :top33,          [   0,   0, 100,  34 ]

gravity :top_right,      [  50,   0,  50,  50 ]
gravity :top_right66,    [  50,   0,  50,  66 ]
gravity :top_right33,    [  50,   0,  50,  33 ]

gravity :left,           [   0,   0,  50, 100 ]
gravity :left66,         [   0,   0,  66, 100 ]
gravity :left33,         [   0,   0,  33, 100 ]

gravity :center,         [   0,   0, 100, 100 ]
gravity :center66,       [  17,  17,  66,  66 ]
gravity :center33,       [  33,  33,  33,  33 ]

gravity :right,          [  50,   0,  50, 100 ]
gravity :right66,        [  34,   0,  66, 100 ]
gravity :right33,        [  67,  50,  33, 100 ]

gravity :bottom_left,    [   0,  50,  50,  50 ]
gravity :bottom_left66,  [   0,  34,  50,  66 ]
gravity :bottom_left33,  [   0,  67,  50,  33 ]

gravity :bottom,         [   0,  50, 100,  50 ]
gravity :bottom66,       [   0,  34, 100,  66 ]
gravity :bottom33,       [   0,  67, 100,  33 ]

gravity :bottom_right,   [  50,  50,  50,  50 ]
gravity :bottom_right66, [  50,  34,  50,  66 ]
gravity :bottom_right33, [  50,  67,  50,  33 ]

gravity :gimp_image,     [  10,   0,  75, 100 ]
gravity :gimp_toolbox,   [   0,   0,  10, 100 ]
gravity :gimp_dock,      [  85,   0,  15, 100 ]

# Custom
gravity :center_colon, [ 17, 0, 66, 100 ]
gravity :bottom_left_right33, [ 0, 50, 34, 50 ]
gravity :bottom_center, [ 34, 50, 34, 50 ]
gravity :left_up, [ 0, 0, 34, 50 ]

# + Grabs

grab "W-1",  :ViewSwitch1
grab "W-2",  :ViewSwitch2
grab "W-3",  :ViewSwitch3
grab "W-4",  :ViewSwitch4
grab "W-5",  :ViewSwitch5
grab "W-F1", :ViewSwitch6
grab "W-F2", :ViewSwitch7
grab "W-F3", :ViewSwitch8
grab "W-F4", :ViewSwitch9
grab "W-F5", :ViewSwitch10
grab "W-F6", :ViewSwitch11

grab "W-C-r",   :SubtleReload
grab "W-C-S-r", :SubtleRestart
grab "W-C-q",   :SubtleQuit
grab "W-B1",    :WindowMove
grab "W-B3",    :WindowResize
grab "W-f",     :WindowFloat
grab "W-space", :WindowFull
grab "W-v",     :WindowStick
grab "W-equal", :WindowZaphod
grab "W-r",     :WindowRaise
grab "W-l",     :WindowLower
#grab "W-Left",  :WindowLeft
grab "W-Right", :WindowRight
grab "W-S-k",   :WindowKill

grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-w", [ :top,          :top66,          :top33          ]
grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-a", [ :left,         :left66,         :left33         ]
grab "W-s", [ :center,       :center66,       :center33       ]
grab "W-d", [ :right,        :right66,        :right33        ]
grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]

grab "W-Return",    "urxvt"
grab "W-Shift_R",   "opera -nomail"
grab "W-Control_R", "urxvt -name weechat -e weechat-curses &"
grab "W-Left",      "urxvt -name ncmpcpp -e ncmpcpp &"
grab "W-o",         "web-clipboard"
grab "W-u",         "dmenu_run -b -i -p 'Launch:' -fn 'Monospace-8'"
grab "W-S-l",         "xlock"

grab "A-Tab" do
  clients = Subtlext::Client.visible

  clients.last.instance_eval do
    focus
    raise
  end
end

grab "A-S-Tab" do
  clients = Subtlext::Client.visible

  clients.first.instance_eval do
    lower
  end
  clients.first.instance_eval do
    focus
  end
end

# + Tags

tag "terms", "xterm|[u]?rxvt" do
  match :instance => "urxvt"
  gravity :center
end

tag "browser" do
  match "navigator|chrom[e|ium]|opera|luakit"
  borderless true
end

tag "dev_editor" do
  match  "[g]?vim|Komodo"
  resize true
end

tag "dev_emacs" do
  match "emacs"
  gravity :center
end

tag "dev_popup" do
  match "pinentry"
  gravity :center
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|gvim"
  resize true
end

tag "gravity" do
  gravity :center
end

tag "float" do
  match "display"
  float true
end

tag("paint_inkscape") { match "inkscape" }
tag("paint_grafx2") { match "grafx2" }
tag("paint_aseprite") { match "allegro" }

tag "paint_gimp" do
  match "gimp|^gimp"
  gravity :center
end

tag "paint_gimp_image" do
  match   :role => "gimp-image-window"
  gravity :gimp_image
end

tag "paint_gimp_toolbox" do
  match   :role => "gimp-toolbox$"
  gravity :gimp_toolbox
end

tag "paint_gimp_dock" do
  match   :role => "gimp-dock"
  gravity :gimp_dock
end

tag "music" do
  match 'ncmpcpp'
  gravity :center
end

tag 'film' do
  match 'mplayer'
  gravity :center
end

tag 'pdf_img' do
  match 'feh|zathura'
  gravity :center
end

tag "vm" do
  match "Qt-subapplication"
  gravity :center
end

tag 'irc' do
  match 'weechat'
  gravity :center
end

tag "flash" do
  match "<unknown>|plugin-container|exe|operapluginwrapper|npviewer.bin"
  stick true
end

tag 'sylpheed' do
  match 'main_window|addressbook|sylpheed'
  gravity :center
end

tag 'gnucash' do
  match 'gnucash'
  gravity :center
end

# + Views

view 'trm' do
  match 'terms'
  icon xbm('terminal')
  icon_only true
end

view 'web' do
  match 'browser'
  icon xbm('world')
  icon_only true
end

view 'dev' do
  match 'dev_.*'
  icon xbm('wrench')
  icon_only true
end

view 'pnt' do
  match 'paint_.*'
  icon xbm('pencil')
  icon_only true
end

view 'default' do
  match 'vrt|default'
  icon xbm('house')
  icon_only true
end

view 'im' do
  match 'irc'
  icon xbm('man')
  icon_only true
end

view 'mail' do
  match 'sylpheed'
  icon xbm('mail')
  icon_only true
end

view 'pdf_img' do
  match 'pdf_img|gnucash'
  icon xbm('binder')
  icon_only true
end

view 'music' do
  match 'music'
  icon xbm('cd')
  icon_only true
end

view 'film' do
  match 'film'
  icon xbm('movie')
  icon_only true
end

view 'vm' do
  match 'vm'
  icon xbm('box')
  icon_only true
end


sublet :mpd do
  show_icons false
end
