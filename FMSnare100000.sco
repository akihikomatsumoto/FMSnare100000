rtsetparams(48000, 1)

set_option("audio_off","clobber_on")

load("FMINST")
load("FIR")
bus_config("FMINST", "aux 0 out")
bus_config("FIR", "aux 0 in", "out 0")
srand()
makegen(1, 5, 1000, 0, 1, 1,397,0.15,200,0.05,100,0.049,300,0)
makegen(2, 10, 1000, 1,0.41,0.72,0.18,0.4,0.22,0.12)
makegen(3, 7, 1000, 0, 1, 1,999,0)

random_7 = random()
random_8 = random()

	if (random_7 < random_8) {
	random_out_4 = random_7
	}
	else{
	random_out_4 = random_8
	}

dur = random_out_4*1.3+0.05
amp = 62500
random_1 = random()
random_2 = random()

	if (random_1 < random_2) {
	random_out_1 = random_1
	}
	else{
	random_out_1 = random_2
	}

FC = random_out_1*2000 + 20

random_3 = random()
random_4 = random()

	if (random_3 < random_4) {
	random_out_2 = random_3
	}
	else{
	random_out_2 = random_4
	}
	
FM = random_out_2*4000 + 20

indexL = 0

random_5 = random()
random_6 = random()

	if (random_5 < random_6) {
	random_out_3 = random_5
	}
	else{
	random_out_3 = random_6
	}

indexH = random_out_3*1000

FMINST(0,dur, amp, FC,FM, indexL,indexH)

FIR(0, 0, dur, 1, 32, random(),random(),random(),random(),random(),random(),random(),random(), random(),random(),random(),random(),random(),random(),random(),random(), random(),random(),random(),random(),random(),random(),random(),random(), random(),random(),random(),random(),random(),random(),random(),random())

rtoutput("FMSnare"+i_arg(0)+".wav","wav","normfloat")






