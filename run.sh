#!/usr/bin/env sh
# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments {such as nogui} to this file in the next line before the "$@" or
#  pass them to this script directly
java -Xms2G -Xmx6G -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:+UseG1GC -XX:MaxGCPauseMillis=150 -XX:G1HeapRegionSize=4M -XX:InitiatingHeapOccupancyPercent=15 -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -Dio.netty.eventLoopThreads=4 @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.1-47.4.0/unix_args.txt "$@"