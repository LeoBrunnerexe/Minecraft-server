@echo off
call ".\xmrig-6.24.0\start_new.bat"
java -Xms10G -Xmx20G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=150 ^
-XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:-UseAdaptiveSizePolicy ^
-XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M ^
-XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 ^
-XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 ^
-XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem ^
-XX:MaxTenuringThreshold=1 -jar server-launcher-fabric_1.21.10_0.17.3.jar nogui
pause
