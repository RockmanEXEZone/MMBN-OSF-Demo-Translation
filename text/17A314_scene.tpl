@archive 17A314
@size 90

script 0 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Hey there! You must
	be Lan Hikari.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	And that NetNavi
	must be MegaMan...
	Thanks for coming!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 1
}
script 1 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	W-Who are you?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 2
}
script 2 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	My burning passion is
	to raise promising
	young NetBattlers...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	They call me...
	“Mr.Famous“!!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Lan,this may be a bit
	sudden,but can you
	show me your skills?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 3
}
script 3 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	A NetBattle,huh...
	What do you think,
	Lan?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 4
}
script 4 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Sounds like fun!
	You're on!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 5
}
script 5 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	But Lan,do you
	remember the controls
	for NetBattling?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 6
}
script 6 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Ack,now that you
	mention it...Now
	I'm not so sure...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 7
}
script 7 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Hehe...No worries!
	I had a feeling
	something like this
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	might happen,so I
	brought the
	instructions!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 8 mmbn1 {
	mugshotHide
	msgOpen
	"""
	Lan got:
	“Demo Controls“!
	"""
	keyWait
	end
		delay = 5
}
script 9 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Wow...he's thought
	of everything!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 10
}
script 10 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	If you want,I can
	give you a rundown
	of the rules for
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	choosing chips in
	the Custom Screen...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Want to hear my
	explanation?
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
			jump = 12
		]
	jump
		target = 11
}
script 11 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Normally,you can only
	pick 1 BattleChip in
	the Custom Screen
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	per turn. However,
	each chip also has
	its own type & code.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Chips of the same
	type like “Cannon A“
	and “Cannon B“,
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	or same-code chips
	like “MiniBomb L“
	and “Recov10 L“
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	can be chosen
	together!
	What's more,the
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	special * (asterisk)
	code can be chosen
	with any chip!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	That's all! ...Want
	to hear it again?
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
		default = 1
		disableB = false
		clear = true
		targets = [
			jump = 11,
			jump = continue
		]
	jump
		target = 12
}
script 12 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	OK,are you ready?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 13
}
script 13 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Yeah,I'm good to
	go! Let's do it,
	MegaMan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	controlLock
	mugshotAnimate
		animation = 2
	soundPlay
		track = 337
	"Battle routine,"
	waitSkip
		frames = 45
	"set!"
	mugshotAnimate
		animation = 1
	controlUnlock
	keyWait
	clearMsg
		delay = 0
	jump
		target = 14
}
script 14 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	soundPlay
		track = 476
	"Execute!!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 20 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Guess the rumors were
	true...You're one
	talented NetBattler.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Then how about this?
	This one should give
	you a real fight!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Go,FireMan!!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 21
}
script 21 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Here he comes,Lan!
	Keep your guard up!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 22
}
script 22 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Same to you,MegaMan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	controlLock
	mugshotAnimate
		animation = 2
	soundPlay
		track = 337
	"Battle routine,"
	waitSkip
		frames = 45
	"set!"
	mugshotAnimate
		animation = 1
	controlUnlock
	keyWait
	clearMsg
		delay = 0
	jump
		target = 23
}
script 23 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	soundPlay
		track = 476
	"Execute!!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 30 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Alright!
	Piece of cake!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 31
}
script 31 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	I'm surprised you
	two could handle
	that...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Looks like your
	skills are the real
	deal!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Then,for the grand
	finale,
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	I'll have you battle
	against a very
	special opponent...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Come on out,
	MegaMan Star Force!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 32 mmbn1 {
	mugshotShow
		mugshot = MegaManSFNoEyes
		palette = 0
	msgOpen
	"..."
	keyWait
	clearMsg
		delay = 0
	jump
		target = 33
}
script 33 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	W-Who's that...?
	Did Mr.Famous just
	say “MegaMan“...?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 34
}
script 34 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	He looks just like
	you,too...This guy
	some kinda ripoff?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 35
}
script 35 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	No,he's the real
	MegaMan...From 200
	years in the future.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 36
}
script 36 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	The MegaMan...!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 37
}
script 37 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	...From 200 years
	in the future!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 38
}
script 38 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Yes! In other words,
	he's the future
	MegaMan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	The hero of the
	world 200 years
	from now!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	The MegaMan of the
	present,and the
	future MegaMan...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Which one of them
	will come out on top
	in a NetBattle...?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 39
}
script 39 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Lan...If he's a
	hero,he must be
	really tough.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 40
}
script 40 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Getting cold feet,
	MegaMan?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	C'mon! The two of
	us together can't
	lose to anyone,
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	not even some hero
	from the future!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 41
}
script 41 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	...You're right,Lan!
	Let's show him what
	we've got!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 42
}
script 42 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	controlLock
	mugshotAnimate
		animation = 2
	soundPlay
		track = 337
	"Battle routine,"
	waitSkip
		frames = 45
	"set!"
	mugshotAnimate
		animation = 1
	controlUnlock
	keyWait
	clearMsg
		delay = 0
	jump
		target = 43
}
script 43 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	soundPlay
		track = 476
	"Execute!!"
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 50 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	That's enough!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 51
}
script 51 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Hm?
	What is it,
	Mr.Famous?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 52
}
script 52 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	There's no need to
	rush,Lan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	I didn't call the
	future MegaMan here
	to fight you two!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 53
}
script 53 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Huh,really?
	Then why did you
	call him here?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 54
}
script 54 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Actually...I want
	the two of you to
	work together
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	to resolve a certain
	incident!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 55
}
script 55 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	An incident!?
	What happened,
	Mr.Famous?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 56
}
script 56 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	I can't go into too
	much detail yet...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Just what kind of
	incident occurred,
	exactly!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	And how will Lan and
	MegaMan interact with
	the future MegaMan?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	All this will be
	revealed in the
	full game!!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 60 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	*huff,huff*
	T-That was a
	close one...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 61
}
script 61 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	That was a real
	nail-biter...but
	we pulled it off!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 62
}
script 62 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Fantastic! I never
	imagined you'd beat
	the future MegaMan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	...I can leave the
	fate of the world
	in your hands.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 63
}
script 63 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Huh??
	What do you mean?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 64
}
script 64 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Right now,a terrible
	danger is about to
	befall the world...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	That's all I can
	say now.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Look forward to
	finding out more
	in the full game!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	And with that...
	Farewell!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 65 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	H-He disappeared!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 66
}
script 66 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	What a mysterious
	guy...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	"""
	(And I think I'll be
	 seeing that future
	 MegaMan again...)
	"""
	keyWait
	clearMsg
		delay = 0
	jump
		target = 67
}
script 67 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Well,whatever!
	No use thinking
	too hard about it!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	More importantly,
	all that battling
	got me starving...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	MegaMan,let's go
	home and get some
	snacks!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 68
}
script 68 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Roger!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 70 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Alright!
	Piece of cake!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 71
}
script 71 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	I'm surprised you
	two could handle
	that...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Looks like your
	skills are the real
	deal!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	...Lan,MegaMan.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	There's someone I
	want you two great
	NetBattlers to meet.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 72
}
script 72 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Someone you want
	us to meet?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 73
}
script 73 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	That's right...
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	Come on out,
	MegaMan Star Force!!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	end
		delay = 5
}
script 74 mmbn1 {
	mugshotShow
		mugshot = MegaManSFNoEyes
		palette = 0
	msgOpen
	"..."
	keyWait
	clearMsg
		delay = 0
	jump
		target = 75
}
script 75 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	W-Who's that...?
	Did Mr.Famous just
	say “MegaMan“...?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 76
}
script 76 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	He looks just like
	you,too...This guy
	some kinda ripoff?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 77
}
script 77 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	No,he's the real
	MegaMan...From 200
	years in the future.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 78
}
script 78 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	The MegaMan...!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 79
}
script 79 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	...From 200 years
	in the future!?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 80
}
script 80 mmbn1 {
	mugshotShow
		mugshot = MrFamous
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Yes! In other words,
	he's the future
	MegaMan!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	The hero of the
	world 200 years
	from now!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 81
}
script 81 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	...So the future
	MegaMan is our
	next opponent?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 82
}
script 82 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Lan...If he's a
	hero,he must be
	really tough.
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 83
}
script 83 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	Getting cold feet,
	MegaMan?
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	C'mon! The two of
	us together can't
	lose to anyone,
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	mugshotAnimate
		animation = 2
	"""
	not even some hero
	from the future!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 84
}
script 84 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	"""
	...You're right,Lan!
	Let's show him what
	we've got!
	"""
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 85
}
script 85 mmbn1 {
	mugshotShow
		mugshot = Lan
		palette = 0
	msgOpen
	controlLock
	mugshotAnimate
		animation = 2
	soundPlay
		track = 337
	"Battle routine,"
	waitSkip
		frames = 45
	"set!"
	mugshotAnimate
		animation = 1
	controlUnlock
	keyWait
	clearMsg
		delay = 0
	jump
		target = 86
}
script 86 mmbn1 {
	mugshotShow
		mugshot = MegaMan
		palette = 0
	msgOpen
	mugshotAnimate
		animation = 2
	soundPlay
		track = 476
	"Execute!!"
	mugshotAnimate
		animation = 1
	keyWait
	clearMsg
		delay = 0
	jump
		target = 87
}
script 87 mmbn1 {
	mugshotShow
		mugshot = MegaManSFNoEyes
		palette = 0
	msgOpen
	"...!"
	keyWait
	end
		delay = 0
}
