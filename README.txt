What is this?
A custom Linux Debian WSL2 image for running the CHIM server.
We provide easy to use scripts to install optional components like MeloTSS, CHIM XTTS, etc.
Requires WSL2. 



WSL2 Installation
=================
* Enable Virtual Machine Platform & Windows Subsystem for Linux under: 
  - Control Panel
  - Programs and Features
  - Turn Windows features on or off
* Ensure you have enabled virtualization enabled (you can check your CPU in task manager)
* If virtualization is not enabled, you will have to enable it in your BIOS



DwemerDistro3 Installation
===================
* Run 1) INSTALL Distro
* Go through installation script, highly recommend to install MeloTTS when given the option

After installation you can use the CHIM.exe, which will be easier
It may get flagged as a virus, but it is safe
It's source code is here: https://github.com/RANGROO/CHIM-Launcher

* Optional: If you want CHIM XTTS, go to Tools/Components/NVIDIA GPU Components and run 1) REQUIRED CUDA INSTALL ME!.bat, then Install CHIM XTTS (Powerful TTS but High System Requirements!).bat
* Run Start Server.bat (Or Start Server in the launcher.

* A browser window should open
* Follow the Quickstart Menu
* Optional: If you want to make more advance changes use the Configuration Wizard
* Run Troubleshooting tests on default profile to verify that your AI services are setup correctly.

* Check the mod page Installation Guide for more information: https://www.nexusmods.com/skyrimspecialedition/mods/126330?tab=description

* Uninstall.bat will delete and deregister the WSL2 machine



Installing Optional Components
==============================
We provide scripts to install optional components under Tools/Components
In the Launcher it is the "Install Components" button

You will have to install components based on your GPU. 
You will have more options for NVIDIA.

Basic NVIDIA Components:

* 1) REQUIRED CUDA INSTALL ME!.bat
  RUN THIS SCRIPT FIRST! 
  Is required for all other NVIDIA based installations to work.

* Install MeloTTS (Small Recommended TTS).bat
  Highly recommended TTS service. All Skyrim voices set up automatically. 
  The quality is not great, but it's free and runs on a potato.

* Install Mimic3 (Small TTS Service).bat
  Will install Mimic3 TTS. 
  Efficient and small service that has a lot of custom (non Skyrim) voices.

* Install Minime-T5 (Tiny helper LLM).bat
  Will install minime-t5. 
  A small AI model to help communication with bigger LLMs. 
  Will assist in action support, Oghma Infinium (RAGs) and memory retrieval.

* Install CHIM XTTS (Powerful TTS but High Requirements!).bat
  Will install CHIM XTTS. 
  This TTS supports instant high-quality voice generation. 
  You only need a single .wav file of a clean audio sample.  
  This is used for local Text-To-Speech support (TTS).
  However will require around 4GB VRAM to run.



Advanced NVIDIA Components:

* Install Llama Lava (ITT Server).bat
  Will install an older llama.cpp implementation with llava support. 
  Can use HuggingFace Models.
  Is meant to be used for SoulGaze.

* Install Local Whisper (STT Server).bat
  Will install Local Whisper. 
  You can choose between several models to be run after installation.
  This is used for local Speech-To-Text support (STT) (Allows you to talk to Follower via mic)
  See: https://github.com/joshuaboniface/remote-faster-whisper. 

* Install Text2Vec (Embeddings).bat 
  DOES NOT WORK CURRENTLY. SKIP THIS!



AMD Components:

* Install MeloTTS (Small Recommended TTS).bat
  MUST RUN IN CPU MODE!
  Highly recommended TTS service. All Skyrim voices set up automatically. 
  The quality is not great, but it's free and runs on a potato.

* Install Mimic3 (Small TTS Service).bat
  Will install Mimic3 TTS. 
  Efficent and small service that has a lot of custom (non Skyrim) voices.

* Install Minime-T5 (Tiny helper LLM).bat
  MUST RUN IN CPU MODE!
  Will install minime-t5. 
  A small AI model to help communication with bigger LLMs. 
  Will assist in action support and memory retrieval.



Other Tools
===========

* Configure Installed Components.bat
  Use to reconfigure installed components.

* Compact Installed Components.bat
  Will try to reduce image file size by using jdupes on python virtual env directories. 
  Will also optionally remove pip cache, which is okay if you're done with component installation.
  After doing this, you will need to use CompactDistro.bat to actually have the disk image reduced.

* CompactDistro.bat
  This will export your current distro and then it will re-import it. 
  Will save some space after installations.

* SwitchToDev/SwitchToProd. 
  Only for beta testers. 
  Change git origin to develop branch/main branch. 
  Don't use if you don't know what you are doing!

* zlog_*.bat
  Will open logs for several services. 
  Mainly to check if a service has been started.

* There are shortcuts scripts that lead to important folders in the DwemerDistro such as Plugins Folder.bat, Server Folder.bat, etc.


For more info please read our manual: https://docs.google.com/document/d/12KBar_VTn0xuf2pYw9MYQd7CKktx4JNr_2hiv4kOx3Q/edit?tab=t.0#heading=h.22ert9k7wlm