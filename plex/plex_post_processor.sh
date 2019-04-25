#!/bin/sh

#******************************************************************************
#******************************************************************************
#
#            Plex DVR Post Processing w/Handbrake (H.264) Script
#
#******************************************************************************
#******************************************************************************
#
#  Version: 1.0
#
#  Pre-requisites:
#     HandBrakeCLI
#
#
#  Usage:
#     'plex_post_processor.sh %1'
#
#  Description:
#      My script is currently pretty simple.  Here's the general flow:
#
#      1. Creates a temporary directory in the home directory for
#      the show it is about to transcode.
#
#      2. Uses Handbrake (could be modified to use ffmpeg or other transcoder,
#      but I chose this out of simplicity) to transcode the original, very
#      large MPEG2 format file to a smaller, more manageable H.264 mp4 file
#      (which can be streamed to my Roku boxes).
#
#	   3. Copies the file back to the original filename for final processing
#
#******************************************************************************

#******************************************************************************
#  Do not edit below this line
#******************************************************************************

if [ ! -z "$1" ]; then
# The if selection statement proceeds to the script if $1 is not empty.

   FILENAME=$1 	# %FILE% - Filename of original file

   OUT_FILENAME="${FILENAME%.ts}.mp4"  # Temporary File for transcoding

   # Uncomment if you want to adjust the bandwidth for this thread
   #MYPID=$$	# Process ID for current script
   # Adjust niceness of CPU priority for the current process
   #renice 19 $MYPID

   echo "********************************************************"
   echo "Transcoding, Converting to H.264 w/Handbrake"
   echo "********************************************************"
   HandBrakeCLI -i "$FILENAME" -Z "Fast 1080p30" -o "$OUT_FILENAME"

   echo "********************************************************"
   echo "Cleanup $FILENAME"
   echo "********************************************************"

   rm -f "$FILENAME"
   chmod 777 "$OUT_FILENAME" # This step may not be neccessary, but hey why not.

   echo "Done.  Congrats!"
else
   echo "PlexPostProc by nebhead"
   echo "Usage: $0 FileName"
fi
