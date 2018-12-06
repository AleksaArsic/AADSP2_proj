SET ADDITIONAL_ARGS="0" "3_2_0" "1"
SET ADDITIONAL_ARGS_M2="1" "3_2_0" "1"

: Delete log files first.
cd OutCmp
del Amp_Sweep_Model0_vs_Model1.txt
del Amp_Sweep_Model1_vs_Model2.txt
del Amp_Sweep_Model2_vs_Model3.txt
 
cd ..
 
: Delete wav outputs
cd OutStreams
del Amp_Sweep_model0_out.wav
del Amp_Sweep_model1_out.wav
del Amp_Sweep_model2_out.wav

del 2ch_contour_ne40_24b_48k_model0_out.wav
del 2ch_contour_ne40_24b_48k_model1_out.wav
del 2ch_contour_ne40_24b_48k_model2_out.wav

del 2ch_lvl_amt_48k_model0_out.wav
del 2ch_lvl_amt_48k_model1_out.wav
del 2ch_lvl_amt_48k_model2_out.wav

del Ch_Numbers_model0_out.wav
del Ch_Numbers_model1_out.wav
del Ch_Numbers_model2_out.wav

del Freq_sweep_model0_out.wav
del Freq_sweep_model1_out.wav
del Freq_sweep_model2_out.wav

del Multi_Tone_model0_out.wav
del Multi_Tone_model1_out.wav
del Multi_Tone_model2_out.wav

del speech_model0_out.wav
del speech_model1_out.wav
del speech_model2_out.wav

del titanic_horn_model0_out.wav
del titanic_horn_model1_out.wav
del titanic_horn_model2_out.wav

del Tone_L1k_R3k_model0_out.wav
del Tone_L1k_R3k_model1_out.wav
del Tone_L1k_R3k_model2_out.wav

del WhiteNoise_model0_out.wav
del WhiteNoise_model1_out.wav
del WhiteNoise_model2_out.wav

cd ..
 
: Execute Model 0, Model 1, Model 2 and Model 3
cd ../bin/
"model0.exe" "../test/TestStreams/Amp_Sweep.wav" "../test/OutStreams/Amp_Sweep_model0_out.wav" %ADDITIONAL_ARGS% 
"model0.exe" "../test/TestStreams/2ch_contour_ne40_24b_48k.wav" "../test/OutStreams/2ch_contour_ne40_24b_48k_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/2ch_lvl_amt_48k.wav" "../test/OutStreams/2ch_lvl_amt_48k_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/Ch_Numbers.wav" "../test/OutStreams/Ch_Numbers_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/Freq_sweep.wav" "../test/OutStreams/Freq_sweep_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/Multi_Tone.wav" "../test/OutStreams/Multi_Tone_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/speech.wav" "../test/OutStreams/speech_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/titanic_horn.wav" "../test/OutStreams/titanic_horn_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/Tone_L1k_R3k.wav" "../test/OutStreams/Tone_L1k_R3k_model0_out.wav" %ADDITIONAL_ARGS%
"model0.exe" "../test/TestStreams/WhiteNoise.wav" "../test/OutStreams/WhiteNoise_model0_out.wav" %ADDITIONAL_ARGS% 

"model1.exe" "../test/TestStreams/Amp_Sweep.wav" "../test/OutStreams/Amp_Sweep_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/2ch_contour_ne40_24b_48k.wav" "../test/OutStreams/2ch_contour_ne40_24b_48k_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/2ch_lvl_amt_48k.wav" "../test/OutStreams/2ch_lvl_amt_48k_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/Ch_Numbers.wav" "../test/OutStreams/Ch_Numbers_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/Freq_sweep.wav" "../test/OutStreams/Freq_sweep_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/Multi_Tone.wav" "../test/OutStreams/Multi_Tone_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/speech.wav" "../test/OutStreams/speech_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/titanic_horn.wav" "../test/OutStreams/titanic_horn_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/Tone_L1k_R3k.wav" "../test/OutStreams/Tone_L1k_R3k_model1_out.wav" %ADDITIONAL_ARGS%
"model1.exe" "../test/TestStreams/WhiteNoise.wav" "../test/OutStreams/WhiteNoise_model1_out.wav" %ADDITIONAL_ARGS%

"model2.exe" "../test/TestStreams/Amp_Sweep.wav" "../test/OutStreams/Amp_Sweep_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/2ch_contour_ne40_24b_48k.wav" "../test/OutStreams/2ch_contour_ne40_24b_48k_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/2ch_lvl_amt_48k.wav" "../test/OutStreams/2ch_lvl_amt_48k_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/Ch_Numbers.wav" "../test/OutStreams/Ch_Numbers_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/Freq_sweep.wav" "../test/OutStreams/Freq_sweep_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/Multi_Tone.wav" "../test/OutStreams/Multi_Tone_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/speech.wav" "../test/OutStreams/speech_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/titanic_horn.wav" "../test/OutStreams/titanic_horn_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/Tone_L1k_R3k.wav" "../test/OutStreams/Tone_L1k_R3k_model2_out.wav" %ADDITIONAL_ARGS_M2% 
"model2.exe" "../test/TestStreams/WhiteNoise.wav" "../test/OutStreams/WhiteNoise_model2_out.wav" %ADDITIONAL_ARGS_M2% 

cd ../test
 
: Generate new logs
"PCMCompare.exe" "OutStreams//Amp_Sweep_model0_out.wav" "OutStreams//Amp_Sweep_model1_out.wav" 2> "OutCmp//Amp_Sweep_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//Amp_Sweep_model1_out.wav" "OutStreams//Amp_Sweep_model2_out.wav" 2> "OutCmp//Amp_Sweep_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//2ch_contour_ne40_24b_48k_model0_out.wav" "OutStreams//2ch_contour_ne40_24b_48k_model1_out.wav" 2> "OutCmp//2ch_contour_ne40_24b_48k_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//2ch_contour_ne40_24b_48k_model1_out.wav" "OutStreams//2ch_contour_ne40_24b_48k_model2_out.wav" 2> "OutCmp//2ch_contour_ne40_24b_48k_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//2ch_lvl_amt_48k_model0_out.wav" "OutStreams//2ch_lvl_amt_48k_model1_out.wav" 2> "OutCmp//2ch_lvl_amt_48k_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//2ch_lvl_amt_48k_model1_out.wav" "OutStreams//2ch_lvl_amt_48k_model2_out.wav" 2> "OutCmp//2ch_lvl_amt_48k_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//Ch_Numbers_model0_out.wav" "OutStreams//Ch_Numbers_model1_out.wav" 2> "OutCmp//Ch_Numbers_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//Ch_Numbers_model1_out.wav" "OutStreams//Ch_Numbers_model2_out.wav" 2> "OutCmp//Ch_Numbers_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//Freq_sweep_model0_out.wav" "OutStreams//Freq_sweep_model1_out.wav" 2> "OutCmp//Freq_sweep_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//Freq_sweep_model1_out.wav" "OutStreams//Freq_sweep_model2_out.wav" 2> "OutCmp//Freq_sweep_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//Multi_Tone_model0_out.wav" "OutStreams//Multi_Tone_model1_out.wav" 2> "OutCmp//Multi_Tone_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//Multi_Tone_model1_out.wav" "OutStreams//Multi_Tone_model2_out.wav" 2> "OutCmp//Multi_Tone_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//speech_model0_out.wav" "OutStreams//speech_model1_out.wav" 2> "OutCmp//speech_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//speech_model1_out.wav" "OutStreams//speech_model2_out.wav" 2> "OutCmp//speech_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//titanic_horn_model0_out.wav" "OutStreams//titanic_horn_model1_out.wav" 2> "OutCmp//titanic_horn_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//titanic_horn_model1_out.wav" "OutStreams//titanic_horn_model2_out.wav" 2> "OutCmp//titanic_horn_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//Tone_L1k_R3k_model0_out.wav" "OutStreams//Tone_L1k_R3k_model1_out.wav" 2> "OutCmp//Tone_L1k_R3k_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//Tone_L1k_R3k_model1_out.wav" "OutStreams//Tone_L1k_R3k_model2_out.wav" 2> "OutCmp//Tone_L1k_R3k_Model1_vs_Model2.txt"

"PCMCompare.exe" "OutStreams//WhiteNoise_model0_out.wav" "OutStreams//WhiteNoise_model1_out.wav" 2> "OutCmp//WhiteNoise_Model0_vs_Model1.txt"
"PCMCompare.exe" "OutStreams//WhiteNoise_model1_out.wav" "OutStreams//WhiteNoise_model2_out.wav" 2> "OutCmp//WhiteNoise_Model1_vs_Model2.txt"
