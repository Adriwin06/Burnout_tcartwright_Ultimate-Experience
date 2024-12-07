# Burnout_tcartwright_Ultimate-Experience
Here you'll see how to play the best Burnout Paradise version, and in the best way possible.

## Introduction
I recommend you to join the [Burnout Hints](https://discord.gg/Cqt5QraKyc) Discord server to get the latest news and updates from the community,  and it's the best place to talk about this incredible game. This is a mirror of a tutorial I made on this server, but since there is a lenght limit on Discord messages, I'm writing it here too for easier access.

## Information about the version
The best version of the game is the 1.0 version, because of lot of things that are simply better than any other versions, like the UI, the sounds, the atmosphere, etc. The one you will learn to install here is the the 1.0 version, but not the retail one. It will be a development build from Jan 2008, that is not diffferent from the retail game, except that there is a work in progress island called *Breaker Island* that never made it to the retail version. The name of the build is [Burnout_tcartwright](https://hiddenpalace.org/Burnout_Paradise_(Jan_30,_2008_prototype))

You will also be able to play **online** on this version thanks to custom servers.

## Getting started

You can watch a video tutorial on [YouTube](https://www.youtube.com/watch?v=2b4YtHb6B1o) by [@JeBobs](https://github.com/JeBobs), and then read the following instruction to improve even more your game experience.

## 60 FPS crashes
The game run at 60 FPS when driving, but the moment you crash, it goes down to 30 FPS, and during showtime, it's stuck at 30 FPS, and this is annoying and not very smooth. To fix this, it is actually quite simple:
- Open the `xenia-burnout5.config.toml` file with a text editor like Notepad ++ or VS Code
- Search for the `vsync = true` line and replace it with `vsync = false`
- Save your changes, but don't launch the game yet, we know have to limit the framerate using an external tool, because the physic in Burnout Paradise are based on the framerate, so if you run the game at 120 FPS, the game will be speed-up by a factor of two (120/60 = 2)
- Now open the NVIDIA Control Panel or AMD/Intel equivalent
- (for Nvidia) Go to `Manage 3D settings` -> `Program Settings`
- Click `Add` -> click `Browse...`, locate and select the Xenia executable -> click `Open` (or double click on it)
- Now that the program is added, search for the `Max Frame rate` setting, enable it and set the limit to **exactly** 60 FPS
- Click on OK and then Apply in the bottom right corner of the window

You now have a locked 60 FPS for Xenia, and the game will **always** run at 60 FPS, even in crashes and showtime.

## Increasing the rendering resolution of the game
If you have a good enough GPU (I think an GTX 1660 is enough), you can increase the rendering resolution of the game, the game will look way better.
To do it follow these steps:
- Open the `xenia-burnout5.config.toml` file with a text editor like Notepad ++ or VS Code
- Search for the `draw_resolution_scale_x` and `draw_resolution_scale_y` lines (they are next to eachother)
- Set the value to `2` if you have something I think below an RTX 4070 *Desktop* (not Laptop, I have one and it is not enough). If you have something better or equal to this GPU, you can set it to `3`. 
  - 2 will be 1440p and 3 will be 4K. There is no way to play the game at 1080p
- Make sure to set the same factor on both `draw_resolution_scale_x` and `draw_resolution_scale_y`

You now have a game that will render at a higher resolution, and that will look **way better**.

## Increasing the graphics quality of the game with patches
If you want better reflection, LODs, etc. and have a some spare GPU usage, follow these steps:
- Open the `patches` folder where the Xenia executable is located
- I recommend to open the whole folder in something like VS Code for easier access to the files, but you can use any text editor
- For each of the following patches, set the `is_enabled` line to true (`is_enabled = true`) [please note that some of them might already be enabled]:
```C
45410806 - Breaker Island Artist Graphics Env Map Boost.patch.toml
45410806 - Breaker Island Artist Graphics LOD High.patch.toml
45410806 - Breaker Island Artist Graphics Traffic Shadow.patch.toml
45410806 - Breaker Island Artist Graphics Bloom.patch.toml
//Only if you have set your draw resolution at something above 1 in the 2nd part
45410806 - Breaker Island Artist Video Mode.patch.toml
```
- Once you have enabled all of these and saved your modifications, you will now have improved LODs, Reflections, etc. in-game.

## Potato mode
If you have a potato PC, disable all the patches we talked about just above, make sure to set the draw resolution to 1, and launch the `external.xex` executable instead of `artist.xex`. As a bonus you wont' have the FPS counter and the 3 squares.

⚠️ Only launch the `external.xex` with a draw resolution of 1 or all reflection will flicker horribly. The `artsit.xex` is the only one where the reflections don't flicker with a resolution higher than 1.

If you still have performances issues, enable the `45410806 - Breaker Island Artist Graphics LOD Low.patch.toml` patch, but be prepared: the game will look horrible. If you want to use this one you will have to switch back to `artist.xex` since it only works on this executable and not on the external one.

## Improve Graphics even more with Reshade
If you still have some spare GPU usage left after all of this, you can install ReShade on the Xenia executable, and use the ReShade preset `Paradise.ini`.
- Go to [their website](https://reshade.me/)
- Scroll down until you find the download button and download it
- Launch the reshade setup
- You will be prompted to choose a program, click on `browse`
- Search for the Xenia executable and select it, now click on *Next*
- Select DirectX 10/11/12 and click on *Next*
- Click *Uncheck all* and then click *Check all*, *Next*
- It should install
- Now drag and drop the `Paradise.ini` file in the root folder or in a sub folder of the Xenia executable where you just insalled ReShade
- Launch Xenia, then the game, there should be a prompt in the top of your screen to show that ReShade is installed, and it should give you a key to press to open the ReShade menu
- Press the key that opens the menu, follow the quick tutorial 
- Finally select my ReShade preset and enjoy


⚠️ 
1. I uses around 10% of my RTX 4070 Super mostly because of maxed out RadiantGI effect. Fi you have less than 10% left of GPU usage, you can disable the RadiantGI effect)
2. This ReShade looks good *for me* **on my screen**, and is not really finished for now. If you don't like it, just don't use it ;) You can even make your own if you want.

## Additional Xenia settings
There are a lot of available settings in the `xenia-burnout5.config.toml`, but here are the ones I recommend to change
Here are the ones I recommend you to enable (that is the first thing I usually do):
```C
postprocess_antialiasing = "fxaa_extreme"
postprocess_scaling_and_sharpening = "fsr"
```
bonus:
```C
show_achievement_notification = true
```
This one will enable achievements in the game, but please note that sometimes it cause large FPS drops when a achievement is unlocked I have no ideas why.

## End
This message might be edited when I discover new interesting things to do, and if you want to know, on my Desktop PC with an RTX 4070 Super, I play with everything mentioned above:
- 60 FPS
- 3x res (4K)
- All patches and Additional patches except the achievement one
- ReShade preset
And my GPU is "only" used at around 70%, so I still have lot of room. I can tell you that the game looks **incredible** with those settings.

## How to automatically launch the game, and in fullscreen with a shortcut?
- Copy the folder path where you have Xenia_Burout5 installed
- Download the `Burnout_Paradise_Xenia_ShortcutCreator.bat` file attached
- Open the script
- Paste the folder path when asked to do so
- Enter
- Enjoy your new shortcut on your Desktop. It launch the game, set it in Fullscreen, and have a beautiful logo

## How do I remove the FPS counter and the 3 squares?
### FPS counter only
- Download the [`45410806 - Breaker Island Artist Disable FPS Counter.patch.toml`](https://github.com/Adriwin06/Game-Patches/blob/main/patches/45410806%20-%20Breaker%20Island%20Artist%20Disable%20FPS%20Counter.patch.toml) file from my other repository.
- Drop it in the `patches` folder
- Done. The FPS counter is now hidden, but the 3 squares are still there.

### FPS counter + 3 squares

**Simple answer**: *you can't.* You either play at a good resolution with a draw resolution above 1x and play the `artist.xex` but you have those, or you play the `external.xex` and you won't have those anymore, but you will need to play at 1x res or the reflections on the cars will flicker horribly.

**Long answer**: *you can* use the keyboard as a 2nd controller with Xenia and press the key that hide it with a script:
- Set `keyboard_user_index = 1`
- Check that `keybind_right_thumb = "K"`
- Download and install [AutoHotkey](https://www.autohotkey.com/) v 2.0
- Download my script `HideFPS.ahk`
- Put it where you can easily access it
- Double click on it to launch it (nothing will show up on screen but it will be running)
- Launch the game, and press **M**. It will press indefinitely **K** until you press **M** again, and will hide the :red_square: :green_square: :green_square:
- When you exit the game, close AutoHotkeys by going down on the taskbar -> Show hiddden icons -> right click AutoHotkey -> Exit
