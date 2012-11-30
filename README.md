How to make it work:
======
    
### Hardware that I used
   * <a href="https://www.sparkfun.com/products/11021?">Arduino Uno R3</a>
   * <a href="http://www.makershed.com/MakerShield_p/msms01.htm">Makershield (with mini breadboard)</a>
   * <a href="http://www.parallax.com/tabid/768/productid/83/default.aspx">Parallax PIR Sensor (rev B)</a>

### Connections
   * GND (on sensor) to GND (on shield)<br>
   * VCC (on sensor) to 5V (on shield)<br>
   * OUT (on sensor) to Digital pin 2 (on shield)
   
   <a href="http://imgur.com/4uf9J"><img src="http://i.imgur.com/4uf9J.jpg" alt="" title="Hosted by imgur.com" /></a>

### On the Arduino

Open File > Examples > Firmata > StandardFirmata<br>
And run it on your arduino, that's it!

<a href="http://imgur.com/9nvrw"><img src="http://i.imgur.com/9nvrw.png" alt="" title="Hosted by imgur.com" /></a>

### In Processing
Run

    ttMove/ttMove.pde

It'll take a few seconds for the sensor to warm up, but it should be working fine!
<a href="http://imgur.com/9vbLe"><img src="http://i.imgur.com/9vbLe.png" alt="" title="Hosted by imgur.com" /></a>

### Problems I ran in to
Right now, Processing 2.0 is in beta, and not a stable build. To get this to work I had to use Processing v1.5.1 (the last stable build)

When I first tried to connect Processing to Arduino, I got this error:

    WARNING:  RXTX Version mismatch
    Jar version = RXTX-2.2pre1
     native lib Version = RXTX-2.2pre2

I found this extremely useful post from <a href="http://forum.processing.org/user/kobby">kobby</a> on <a href="http://forum.processing.org/topic/warning-rxtx-version-mismatch">this</a> Processing forum thread.

To make this happen<br>
<a href="http://imgur.com/VzGQT"><img src="http://i.imgur.com/VzGQT.jpg" alt="" title="Hosted by imgur.com" /></a>