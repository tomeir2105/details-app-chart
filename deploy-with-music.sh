#!/bin/bash

AUDIO_FILE="src/audio/audio.wav"

if [ -f "$AUDIO_FILE" ]; then
  aplay "$AUDIO_FILE" >/dev/null 2>&1
fi

SOUND_PID=$!

kubectl apply -f details-app.yaml

sleep 15

kill $SOUND_PID 2>/dev/null

echo "Deployment complete."
