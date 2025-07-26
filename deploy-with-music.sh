#!/bin/bash

AUDIO_FILE="src/audio/audio.wav"

if [ -f "$AUDIO_FILE" ]; then
    aplay "$AUDIO_FILE" >/dev/null 2>&1 &
fi

SOUND_PID=$!

kubectl apply -f details-app.yaml

echo "Sound PID is $SOUND_PID or killall aplay"

echo "Deployment complete."
