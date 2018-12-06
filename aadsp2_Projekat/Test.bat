: Delete log files first.
cd OutCmp
del output1_Model0_vs_Model1.txt
del whiteNoise_Model1_vs_Model2.txt
del whiteNoise_Model2_vs_Model3.txt




cd ..

: Execute Model 0, Model 1, Model 2 and Model 3
cd Debug
"Model0.exe" "..//..//TestStreams//MyWhiteNoise.wav" "..//OutStreams//out_MyWhiteNoise_0.wav" "On" "-4" "3_2_1" 
"Model1.exe" "..//..//TestStreams//MyWhiteNoise.wav" "..//OutStreams//out_MyWhiteNoise_1.wav" "On" "-4" "3_2_1"
"Model2.exe" "..//..//TestStreams//MyWhiteNoise.wav" "..//OutStreams//out_MyWhiteNoise_2.wav" "On" "-4" "3_2_1"


cd ..

: Generate new logs
"..//tools//PCMCompare.exe" OutStreams//out_MyWhiteNoise_0.wav OutStreams//out_MyWhiteNoise_1.wav 2> OutCmp//Model01.txt
"..//tools//PCMCompare.exe" OutStreams//out_MyWhiteNoise_1.wav OutStreams//out_MyWhiteNoise_2.wav 2> OutCmp//model12.txt
"..//tools//PCMCompare.exe" OutStreams//out_MyWhiteNoise_2.wav OutStreams//MyWhiteNoise.wav 2> OutCmp//model23.txt



