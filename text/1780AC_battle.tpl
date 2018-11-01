@archive 1780AC
@size 17

script 0 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	MegaMan! I'm sending
	more chip data!
	Give me one turn!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 1 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	I can't send
	any more data...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 2 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"I'm jacking in!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 3 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	I'm sending more
	chip data!
	Give me one turn!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Then,you'll be able
	to choose 5 more
	chips for 2 turns!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 4 mmbn1s {
	"PrgAdvance"
	end
}
script 5 mmbn1s {
	printBuffer
		buffer = 0
		minLength = 8
		padZeros = false
		padLeft = true
	"z"
	end
}
script 6 mmbn1 {
	mugshotShow
		mugshot = 65
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Transmission error!
	Canceling battle...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 7 mmbn1 {
	mugshotShow
		mugshot = 11
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Data isn't
	connected,heh!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 1
	mugshotAnimate
		animation = 2
	"""
	Canceling battle,
	heh!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 8 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"Lan,should we run?\n"
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
		clear = true
		targets = [
			jump = continue,
			jump = continue
		]
	end
		delay = 5
}
script 9 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"OK!\n"
	mugshotAnimate
		animation = 2
	"We got away!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 10 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"It's no good!!\n"
	mugshotAnimate
		animation = 2
	"We can't run away!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 11 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Lan,this is no time
	to run away!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 12 mmbn1 {
	mugshotShow
		mugshot = MegaManSF
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"Lan,should we run?\n"
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
		clear = true
		targets = [
			jump = continue,
			jump = continue
		]
	end
		delay = 5
}
script 13 mmbn1 {
	mugshotShow
		mugshot = MegaManSF
		palette = 0
	msgOpen
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"OK!\n"
	mugshotAnimate
		animation = 2
	"We got away!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 14 mmbn1 {
	mugshotShow
		mugshot = MegaManSF
		palette = 0
	msgOpen
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"."
	waitSkip
		frames = 30
	"It's no good!!\n"
	mugshotAnimate
		animation = 2
	"We can't run away!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 15 mmbn1 {
	mugshotShow
		mugshot = MegaManSF
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Lan,this is no time
	to run away!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 16 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Geo! I'm sending
	more chip data!
	Give me one turn!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
