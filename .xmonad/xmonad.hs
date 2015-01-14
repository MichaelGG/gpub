import XMonad
import XMonad.Layout.ResizableTile
import XMonad.Config.Xfce 
import XMonad.Util.EZConfig 

myLayout = ResizableTall 1 (3/100) (1/2) [] 
main = xmonad $ xfceConfig
            { modMask = mod4Mask 
              , layoutHook = myLayout
              , terminal = "xfce4-terminal" 
              , focusFollowsMouse = False
              , clickJustFocuses = True }
            `additionalKeys`
             [  ((mod4Mask, xK_a          ), sendMessage MirrorShrink)
              , ((mod4Mask, xK_z          ), sendMessage MirrorExpand) 
             ]
