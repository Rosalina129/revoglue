dim frames as integer
dim framex as integer
dim fxcount as integer
dim framey as integer
if v(PipeID1) = 3 and v(PipeID2) = 5 and v(PipeID3) = 2 and v(PipeID4) = 7 then
	call LSet(BarrierS,2,0)
	call TCreate(LockMove,0)
	do
		frames += 1
		v(frames) = frames
		if frames < 64 then
			select case frames mod 2
				case 1
					framex = 2*rnd
				case 0
					framex = -2*rnd
			end select
		end if
		select case frames
			case 65
				call LMove(Barrier,framex,0,1)
				framex = 0
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
				call FXCreate(1,-163328,-160000,10*rnd-5,-9*rnd-4,60,8,0,0,0)
			case 65 to 128
				framey += 1
				call LMove(Barrier,0,framey,1)
				call FXCreate(1,-163328,-160000,15*rnd-7.5,-4*rnd-3,60,8,0,0,0)
			case 129 to 192
				framex -= 1
				framey += 1
				call LMove(Barrier,framex,framey,1)
			case 193 to 320
				framey += 1
				call LMove(Barrier,framex,framey,1)
			case 321
				call Spevent(40)
				call AudioSet(2,37,0,"")
			case 322
				call LSet(Grave,1,1)
				call LMove(Grave,0,-3.875,0)
			case 387 to 515
				call FXCreate(1,-163488+10*32*rnd,-160608,8*rnd-4,2*rnd,60,8,0,0,0)
				call Spevent(55)
				call LMove(Grave,0,1,0)
				call LMove(BarrierBonus,0,1,0)
			case 516
				call LMove(BarrierBonus,0,0,0)
				call LMove(Grave,0,5,0)
		end select
		call sleep(1)
	loop until frames > 532
	call Spevent(55)
	call AudioSet(2,37,0,"")
	call LSet(Grave,2,1)
	call LMove(Grave,0,0,0)
	call LMove(BarrierBonus,0,0,0)
	call TCreate(UnlockMove,0)
	call AudioSet(1,93,1,"TrapActivedSlow.wav")
	call AudioSet(2,93,0,"")
else
	if v(CheckTime) > 1 then
		v(CheckTime) -= 1
		call showmsg("错误的密码！你还有" & val(CheckTime) &"次机会！")
	else
		call showmsg("宝物被锁！")
		call LSet(BarrierS,2,1)
		call LSet(BarrierSP,1,1)
	end if
end if