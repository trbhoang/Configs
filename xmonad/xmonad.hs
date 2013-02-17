import XMonad
import XMonad.Util.EZConfig
import XMonad.Config.Gnome
import XMonad.Layout.ToggleLayouts
import XMonad.Hooks.ManageDocks


main = xmonad $ gnomeConfig
   { modMask = mod4Mask -- set the mod key to the windows key
   , layoutHook = avoidStruts $ toggleLayouts Full $ layoutHook gnomeConfig
   }
   `additionalKeysP`
   [ ("M-f", sendMessage ToggleStruts >> sendMessage ToggleLayout)
   ]

