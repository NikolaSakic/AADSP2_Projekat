: Delete log files first.
cd OutCmp
del output1_Model0_vs_Model1.txt
del whiteNoise_Model1_vs_Model2.txt
del whiteNoise_Model2_vs_Model3.txt




cd ..

: Execute Model 0, Model 1, Model 2 and Model 3
cd Debug
"Model0.exe" "..//..//TestStreams//WhiteNoise.wav" "..//OutStreams//out_WhiteNoise_0.wav" "On" "-4" "3_2_1" 
"Model1.exe" "..//..//TestStreams//WhiteNoise.wav" "..//OutStreams//out_WhiteNoise_1.wav" "On" "-4" "3_2_1"


cd ..

: Generate new logs
"..//tools//PCMCompare.exe" OutStreams//out_WhiteNoise_0.wav OutStreams//out_WhiteNoise_1.wav 2> OutCmp//whiteNoise_Model0_vs_Model1.txt



