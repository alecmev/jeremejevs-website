#!/bin/sh

TMPSRC=~/google/settings/teamspeak
TMPDST=~/.ts3client

rm -rf "$TMPDST"
ln -s "$TMPSRC" "$TMPDST"
