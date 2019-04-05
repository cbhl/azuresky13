---
title: "libnvidia-encode1"
created_at: 2019-04-05 14:57:00 -0700
kind: article
published: true
---

## How it all started...

> "I just want to record my screen."
> 
> "Oh, you can use ffmpeg to do that."
> 
> (the next day)
> 
> "My recording is flickering. Is it supposed to do that?"
>
> "Oh, hmm..."

## Prerequisites

* You have a Debian Linux computer with a supported NVidia GPU.
* You have the proprietary NVidia drivers installed.

## Hardware-accelerated screen recording with ffmpeg

**tl;dr:** Try installing `libnvidia-encode1`.

From a Google search, the canonical article on the ffmpeg wiki appears to be
here: <https://trac.ffmpeg.org/wiki/Capture/Desktop>

It include the following example:

    $ ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 output.mp4

Let's try a minimal case:

    $ ffmpeg -f x11grab -i :0.0 output.mp4
    ...
    s speed=0.59x

Hmm, just outputting a 640x480 video with software encoding is not consistently
real-time on this computer, when using software encoding.

But I know this computer has a recent NVidia card and the proprietary driver, so
maybe we can use hardware encoding?

    $ ffmpeg -encoders
    ...
     V..... h264_nvenc           NVIDIA NVENC H.264 encoder (codec h264)
    ...

Okay, looks like this `ffmpeg` was built with `h264_nvenc`. Let's use it:

![A screenshot of the following shell snippet.](/images/2019/libnvidia-encode-error.png)

    $ ffmpeg -f x11grab -i :0.0 -c:v h264_nvenc output.mp4
    ...
    [h264_nvenc @ 0x55a55bb9c360] The minimum required Nvidia driver for nvenc is 378.13 or newer
    Error initializing output stream 0:0 -- Error while opening encoder for output stream #0:0 - maybe incorrect parameters such as bit_rate, rate, width or height
    Conversion failed!

Huh? I'm pretty sure a more recent driver is installed. I have 390.87, and I'm
pretty sure that's newer than 378.13.

![A screenshot of the NVidia X Server Settings app.](/images/2019/nvidia-version-390-87.png)

Let's look at that error message again...

    Cannot load libnvidia-encode.so.1
    [h264_nvenc @ 0x55a55bb9c360] The minimum required Nvidia driver for nvenc is 378.13 or newer
    Error initializing output stream 0:0 -- Error while opening encoder for output stream #0:0 - maybe incorrect parameters such as bit_rate, rate, width or height
    Conversion failed!

`Failed to load libnvidia-encode.so.1`? What package provides that? Turns out
it's a separate package called `libnvidia-encode1`:

    $ sudo apt-get install libnvidia-encode1

And now our screen recording works:

    $ ffmpeg -video_size 2560x1600 -f x11grab -i :0.0 -c:v h264_nvenc output.mp4

## Hardware-accelerated screen recording with OBS

Install OBS, and `libnvidia-encode1`:

    $ sudo apt-get install libnvidia-encode1 obs-studio

### Configuring OBS to use NVENC

Hardware (NVENC) should just show up in the list of Encoders after installing
libnvidia-encode1. (You may need to restart Open Broadcaster Software.)

If you don't get the first-run wizard, delete `${HOME}/.config/obs-studio/`.
(Obviously, make a backup before you go deleting your OBS configuration...)

1.  Select *optimize just for recording*. (Unless you plan to stream, in which
    case you might want the  extra dialogs for setting up the service you want
    to stream to.) Click *Next*.
2.  Pick some video settings. Click *Next*.
3.  Verify *Recording Encoder: Hardware (NVENC)*. If it says Software, or tries
    to run an encoding benchmark, double-check that you installed
    libnvidia-encode1 and obs-studio. Click *Apply Settings*.
4.  Under Sources, click *+*, then *Screen Capture (XSHM)*.
5.  In *Create/Select Source* dialog, click *OK*. In the *Properties for 'Screen
    Capture (XSHM)'* dialog, click *OK*. Your screen should now show in the
    preview area.

### Recording only part of the screen with OBS

1. Right-click the preview of the source you configured. Select
   *Transform > Edit Transform...*
2. Specify the *Crop* in the *Scene Item Transform* dialog. Click *Close*.
3. Click the *Settings* button (or *File > Settings*).
4. Under *Video*, modify *Base Resolution* and *Output Resolution* as needed.
   You can type a custom resolution into the drop-down, like `1280x800`, for
   both. Click *OK*.

### Making a recording with OBS.

1.  Verify your screen capture source is selected.
2.  Click *Start Recording*. (You can also set a hotkey for this in Settings.)
3.  Perform the actions you want to record.
4.  Click *Stop Recording*. (You can also set a hotkey for this.)
5.  Recorded file will be created in the directory you set under *Settings >
    Output > Recording Path*. (By default, this is your home directory.)

