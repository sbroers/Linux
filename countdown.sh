#!/bin/bash
# Prozedur, um einen Countdown auf dem Bildschirm auszugeben
typeset -i Zahl
echo "Mit welcher Zahl soll der Countdown starten?"
echo "Bitte geben Sie eine Zahl ein:"
read Zahl
clear
echo "Der Countdown startet"
  while test $Zahl -gt 0
    do clear
    echo $Zahl; sleep 2
    Zahl=$Zahl-1
  done
