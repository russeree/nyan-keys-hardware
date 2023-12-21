# PRODUCTION FPGA BITSTREAMS
This directory is for production ready FPGA bitstreams that have been tuned for for various switch types. If you are having trouble with key double pressing just use a 10ms debounce bitstream. Nyan keys uses eager debouncing so unless you can press and release a switch in less than the debounce time it wont matter at all.

You can flash these using the [Nyan-GUI](russeree.github.io) just click write bitstream, select the file, wait and you will see a sha256 hash of the data written when the process is complete.

#  ⚠️ Warning ⚠️
You are dealing with FPGA bitstreams, this dictates the way your keyboard will read keys as such flashing the wrong bitstream can make it incredibly hard to flash back a working one. If you flash a bitstream for the wrong switches then you can get random and very fast input. This can make it near impossible to go to the Nyan-GUI to flash a working bitstream. 

The only way right now to fix the worst case is to disable the FPGA Init in the nyan keys firmware and use an 
STM32F411 Discovery kit as an ST-LINK interface and flash a modified recovery firmware. Then you can get into the Nyan-GUI and flash the correct bitstream. Then you have to reflash Nyan Keys to reenable the FPGA.

Version 0.9b boards have a soft DFU enable that might be able to be used to avoid having to open up you Nyan Keys board.

# Switches -> Bitstream Files
| Switches | Bitstream File | Notes | 
| -------- | -------------- | ----- |
| Kailh Box Jade | kailh_box_jade_Xms.bin | Datasheet Debounce 5ms Actual 3-4ms worst case |
| Cherry MX2A brown | cherry_mx2a_brown_10ms.bin | Datasheet Debounce ~1ms Actual 6-8ms worst case |