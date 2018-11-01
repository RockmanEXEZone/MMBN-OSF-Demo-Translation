@archive 178954
@size 249

script 0 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 1 mmbn1s {
	end
}
/* script 2 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	You can't put in
	more than 5 of the
	same chip.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 0
} */
/* script 3 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	You don't have 30
	chips in your chip
	folder!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 0
} */
/* script 4 mmbn1s {
	"""
	Sort
	
	ID
	ABCDE
	Code
	Attack
	Element
	No.
	"""
	end
} */
/* script 5 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	You can only insert
	max 5 NaviChips.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 0
} */
/* script 6 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	You can't put in
	more than 1 of
	the same NaviChip!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 0
} */
/* script 7 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Move all chips from
	the folder to Pack?
	
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	select
		default = 1
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue
		]
	end
		delay = 0
} */
script 20 mmbn1s {
	"    ?   "
	end
}
script 21 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	end
}
script 22 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 4
		padZeros = false
		padLeft = true
	end
}
script 23 mmbn1s {
	end
}
/* script 40 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"This is my status!"
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 41 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Boost which feature?"
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 45 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Raise Buster attack?"
	mugshotAnimate
		animation = 1
	"\n(PowerUPs left:"
	printItemAmount
		minLength = 0
		padZeros = false
		padLeft = false
		item = 65
	")\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = true
		targets = [
			jump = 46,
			jump = continue
		]
	waitHold
} */
/* script 46 mmbn1 {
	mugshotShow
		mugshot = CurrentMegaMan
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	MegaBuster attack
	power raised!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 47 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Raise Buster speed?"
	mugshotAnimate
		animation = 1
	"\n(PowerUPs left:"
	printItemAmount
		minLength = 0
		padZeros = false
		padLeft = false
		item = 65
	")\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = true
		targets = [
			jump = 48,
			jump = continue
		]
	waitHold
} */
/* script 48 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	MegaBuster rapid
	fire speed raised!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 49 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Raise Buster charge?"
	mugshotAnimate
		animation = 1
	"\n(PowerUPs left:"
	printItemAmount
		minLength = 0
		padZeros = false
		padLeft = false
		item = 65
	")\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = true
		targets = [
			jump = 50,
			jump = continue
		]
	waitHold
} */
/* script 50 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	MegaBuster charge
	level raised!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 51 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	You can't boost this
	feature any more!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 52 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	You don't have
	a PowerUP to use...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 53 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Switch to
	MegaMan SF!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 54 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Switch to
	MegaMan.EXE!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 55 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Do you want to switch
	to MegaMan SF?
	"""
	mugshotAnimate
		animation = 1
	"\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 56 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Do you want to switch
	to MegaMan.EXE?
	"""
	mugshotAnimate
		animation = 1
	"\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 60 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	flagClear
		flag = 1029
	mugshotAnimate
		animation = 2
	"""
	Looks like you
	got new mail!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 61 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	flagClear
		flag = 1029
	mugshotAnimate
		animation = 2
	"Read which mail?"
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 92 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"One moment please!"
	mugshotAnimate
		animation = 1
	mugshotAnimate
		animation = 1
	flagSet
		flag = 1030
	waitHold
} */
/* script 93 mmbn1s {
	"None    "
	end
} */
/* script 95 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Trade complete!
	...But was it 
	really worth it...?
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 90
	flagSet
		flag = 1030
	waitHold
} */
/* script 97 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Transmission error!
	Canceling battle...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 98 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Transmission error!
	Please try again.
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 45
	flagSet
		flag = 1030
	waitHold
} */
/* script 99 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	You picked different
	modes! Pick the same
	mode,OK?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 100 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Neither player is
	ready...
	One moment please!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 120 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Save progress up to
	this point?
	"""
	mugshotAnimate
		animation = 1
	"\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 121 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Saving...
	One moment please!
	"""
	mugshotAnimate
		animation = 1
	flagSet
		flag = 1030
	waitHold
} */
/* script 122 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	soundPlay
		track = 133
	mugshotAnimate
		animation = 2
	"Save complete!"
	mugshotAnimate
		animation = 1
	textSpeed
		delay = 1
	waitSkip
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 123 mmbn1s {
	"PlayTime"
	end
} */
/* script 124 mmbn1s {
	"Library"
	end
} */
/* script 125 mmbn1s {
	"BtlChips"
	end
} */
/* script 126 mmbn1s {
	"Credits"
	end
} */
script 127 mmbn1s {
	"  "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = true
		padLeft = true
	"[:]"
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	end
}
script 128 mmbn1s {
	end
}
script 129 mmbn1s {
	" "
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 130 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
/* script 131 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Save failed..."
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"Try again?"
	mugshotAnimate
		animation = 1
	"\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
script 132 mmbn1s {
	end
}
script 133 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"/"
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	end
}
/* script 134 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	msgOpenQuick
	soundPlay
		track = 133
	mugshotAnimate
		animation = 2
	"""
	Save complete!
	"""
	mugshotAnimate
		animation = 1
	textSpeed
		delay = 1
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 135 mmbn1 {
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Save failed.
	Trying again...
	"""
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 136 mmbn1 {
	textSpeed
		delay = 0
	msgOpenQuick
	"""
	Saving...
	One moment please!
	"""
	flagSet
		flag = 1030
	waitHold
} */
script 140 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	" [×] "
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	" [=] "
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 141 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = false
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = false
	"[:]"
	printBuffer
		buffer = 2
		minLength = 1
		padZeros = false
		padLeft = false
	printBuffer
		buffer = 3
		minLength = 1
		padZeros = false
		padLeft = false
	end
}
script 142 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
/* script 143 mmbn1s {
	"DieBomb"
	end
} */
/* script 150 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 151 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 152 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 153 mmbn1s {
	"""
	1alw+
	2bmx-
	3cny×
	4doz÷
	5ep,=
	6fq.*
	7gr/&
	8hs;\[
	9it'\]
	0ju!(
	 kv?)
	 
	"""
	end
} */
/* script 154 mmbn1s {
	"""
	1◇◇◇◇
	2◇◇◇◇
	3◇◇◇◇
	4◇◇◇◇
	5◇◇◇◇
	6◇◇◇◇
	7◇◇◇◇
	8◇◇◇◇
	9◇◇◇◇
	0◇◇◇◇
	◇◇◇◇◇
	 
	"""
	end
} */
/* script 155 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 156 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 157 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 158 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 159 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 160 mmbn1s {
	"""
	1ALW+
	2BMX-
	3CNY×
	4DOZ÷
	5EP,=
	6FQ.*
	7GR/&
	8HS;\[
	9IT'\]
	0JU!(
	 KV?)
	 
	"""
	end
} */
/* script 161 mmbn1s {
	"*"
	end
} */
/* script 162 mmbn1s {
	"◇"
	end
} */
/* script 163 mmbn1s {
	" "
	end
} */
/* script 164 mmbn1s {
	"0123456789"
	end
} */
/* script 170 mmbn1s {
	"Handle          \n**********      "
	end
} */
/* script 171 mmbn1s {
	"Number          \n**              "
	end
} */
/* script 180 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	" "
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	end
} */
/* script 181 mmbn1s {
	"Name:"
	end
} */
/* script 182 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
} */
/* script 183 mmbn1s {
	"          "
	end
} */
/* script 185 mmbn1s {
	"Trade"
	end
} */
/* script 186 mmbn1s {
	"Battle(Prac)"
	end
} */
/* script 187 mmbn1s {
	"Battle(Real)"
	end
} */
/* script 188 mmbn1s {
	"Change Name"
	end
} */
/* script 189 mmbn1s {
	"End Session"
	end
} */
/* script 194 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	First,let's pick a
	handle to use for
	communication!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 195 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Let's save first!\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 197 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	soundPlay
		track = 133
	mugshotAnimate
		animation = 2
	"Save complete!"
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 198 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Trade BattleChips
	with a friend!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 199 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Practice a NetBattle
	against a friend.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 200 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	NetBattle against a
	friend! If you lose,
	you'll lose a chip.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 201 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Change the name
	you use for
	communication!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 202 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Disconnect from
	the Client.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 204 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	You don't have
	enough BattleChips
	to choose this mode!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 205 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	The Client doesn't
	have enough chips
	to choose this mode!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 206 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Enter your handle
	in the screen below!
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 208 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	End the session?\n
	"""
	mugshotAnimate
		animation = 1
	textSpeed
		delay = 0
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 209 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Disconnecting..."
	mugshotAnimate
		animation = 1
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 210 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Waiting for
	the Host...
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	"\n(B: End Session)"
	waitHold
} */
/* script 211 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Waiting for the
	Client...
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 212 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	It looks like the
	Client canceled.
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 213 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Start a trade?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 214 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Start a practice
	NetBattle?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 215 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Start a real
	NetBattle?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 216 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Good job,Lan!
	Way to go!
	"""
	mugshotAnimate
		animation = 1
	waitSkip
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 217 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Too bad,Lan...
	...I'll try harder
	next time!
	"""
	mugshotAnimate
		animation = 1
	waitSkip
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 218 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	The Host canceled
	the session.
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 219 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	The Client canceled
	the session.
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 60
	flagSet
		flag = 1030
	waitHold
} */
/* script 220 mmbn1s {
	"Host"
	end
} */
/* script 221 mmbn1s {
	"Client"
	end
} */
/* script 222 mmbn1s {
	"SetNumber[bracket1]"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = true
		padLeft = true
	"[bracket2]"
	end
} */
/* script 223 mmbn1s {
	end
} */
/* script 225 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Set up a session as
	the Host and let
	others connect.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 226 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Join a session as a
	Client and search
	for a Host.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 227 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Enter a 2-digit
	number to find a
	specific person.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 229 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Enter a 2-digit
	number below.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 230 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Waiting for a Client
	to connect.
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 231 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Do you want to
	start the connection?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 232 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	The Client canceled
	the session.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 5
	jump
		target = 233
	waitHold
} */
/* script 233 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Begin DS Wireless
	session as Host?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 235 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Looking for a Host...
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 236 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Requesting a
	connection with the
	Host please wait...
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 237 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	The Host canceled
	the connection.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 5
	jump
		target = 238
	waitHold
} */
/* script 238 mmbn1 {
	soundDisableTextSFX
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Begin DS Wireless
	connection as Client?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 240 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Your friend is still
	choosing which chip
	to trade...
	"""
	mugshotAnimate
		animation = 1
	waitHold
} */
/* script 241 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Trade these 2 chips?\n"
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No\n"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 242 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Trade complete!"
	mugshotAnimate
		animation = 1
	wait
		frames = 90
	flagSet
		flag = 1030
	waitHold
} */
/* script 243 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Your friend
	canceled the trade!
	"""
	mugshotAnimate
		animation = 1
	wait
		frames = 45
	flagSet
		flag = 1030
	waitHold
} */
/* script 244 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"Canceled the trade!"
	mugshotAnimate
		animation = 1
	wait
		frames = 45
	flagSet
		flag = 1030
	waitHold
} */
/* script 245 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Get event chip
	“
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	“?\n
	"""
	mugshotAnimate
		animation = 1
	soundDisableTextSFX
	textSpeed
		delay = 0
	option
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 2
	"Yes "
	option
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 2
	"No"
	soundEnableTextSFX
	textSpeed
		delay = 2
	select
		default = 0
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
} */
/* script 246 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	mugshotAnimate
		animation = 2
	"""
	Event chip
	“
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	“
	already received.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 247 mmbn1 {
	mugshotHide
	msgOpenQuick
	"""
	Lan got a chip for
	“
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	“!
	"""
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
/* script 248 mmbn1 {
	mugshotShow
		mugshot = MegaMan2
		palette = 0
	msgOpenQuick
	"""
	I canceled the
	transfer.\n
	"""
	keyWait
	flagSet
		flag = 1030
	waitHold
} */
