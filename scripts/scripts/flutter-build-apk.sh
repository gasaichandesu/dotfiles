#!/bin/bash

set -xe

flutter pub get

flutter pub run build_runner build --delete-conflicting-outputs

flutter build apk --release --dart-define=DEVELOPER_MODE=true --obfuscate --split-debug-info=~/Work/Debug

