'=====Setting Variable Value=====
gv(UIShowing) = 1 'Show TXT
gv(ResultBGAlpha) = 0 'Initalizing Result Background Alpha Data
gv(isrosielevel) = 1 
gstr(levelname) = "World 1-1"
sysval(gametitle) = "Super Mario Forever v1.0.2 Patch 1"

'=====Setup GUI Panel
call hudset("initialize",0,0,0,0,0,0,0,0,0)'Clear Default GUI
call hudset("bitmap",12,28,0,23,23,689,40,-1,-1)'Ɗͼ꧍
call hudset("bitmap",16,240,122,56,56,372,36,-1,-1)'>߀
call hudset("bitmap",17,0,0,100,100,384,48,5001,-1)'>߀ RCID
call Txtcreate(1,400-Len(gstr(levelname))*4.5,12,32,128,0,16,205,1,gstr(levelname))
call Txtcreate(2,70,40,32,128,0,16,204,1,"x&sys(playerhealth)")
call Txtcreate(4,436,40,32,128,0,16,204,1,"Stars &sys(starcount)")
call Txtcreate(5,436,88,32,128,1,16,205,1,"Rosalina Cards &gvl(rosalinacard)")

do
	
	gv(playerhitpoint) = char(1).hitpoint
	
	if gv(UIShowing) = 1 then
		
		call Berase(1,3)
		call Berase(1,15)
		call Berase(1,16)
		call Berase(1,41)
		
		if gv(isrosielevel) = 1 then
			call hudset("bitmap",6,33,80,33,42,20,82,-1,-1)'1ō
			call hudset("bitmap",7,66,80,33,42,60,82,-1,-1)'2ō
			call hudset("bitmap",8,99,80,33,42,100,82,-1,-1)'3ō
			call hudset("bitmap",9,0,80,33,42,20,82,6000,-1)'1ō
			call hudset("bitmap",10,0,80,33,42,60,82,6001,-1)'2ō
			call hudset("bitmap",11,0,80,33,42,100,82,6002,-1)'3ō
			call Txtcreate(15,20,128,32,128,0,16,205,1,"Rosie Coin x " & cstr(sysval(starcoincount)))
		elseif gv(isrosielevel) = 0 then
			call hudset("bitmap",6,33,80,33,42,820,82,-1,-1)'1ō
			call hudset("bitmap",7,66,80,33,42,860,82,-1,-1)'2ō
			call hudset("bitmap",8,99,80,33,42,900,82,-1,-1)'3ō
			call hudset("bitmap",9,0,80,33,42,820,82,6000,-1)'1ō
			call hudset("bitmap",10,0,80,33,42,860,82,6001,-1)'2ō
			call hudset("bitmap",11,0,80,33,42,900,82,6002,-1)'3ō
			call Txtcreate(15,20,82,32,128,0,16,205,1,"Rosie Coin x " & cstr(sysval(starcoincount)))
		end if
		
		if char(1).id = 0 then'ǉͷϱ
			call hudset("bitmap",0,0,122,48,54,20,20,-1,-1)'ǉͷϱ-­/
		elseif char(1).id = 1 then
			call hudset("bitmap",0,48,122,48,54,20,20,-1,-1)'ǉͷϱ-·җ
		elseif char(1).id = 2 then
			call hudset("bitmap",0,96,122,48,54,20,20,-1,-1)'ǉͷϱ-·җ
		elseif char(1).id = 3 then
			call hudset("bitmap",0,144,122,48,54,20,20,-1,-1)'ǉͷϱ-·җ
		end if
		
		call Berase(1,3)
		
		if sysval(coincount) >= 0 and sysval(coincount) < 10 then
			call Txtcreate(3,184,40,32,128,0,16,204,1,"Coins x 0&sys(coincount)")
		else
			call Txtcreate(3,184,40,32,128,0,16,204,1,"Coins x &sys(coincount)")
		end if
		
		if char(1).id = 0 or char(1).id = 1 then 
			
		elseif char(1).id >= 2 then
			call Txtcreate(16,char(1).x+32,char(1).y,32,128,0,16,205,0,"Lives "&cstr(gv(playerhitpoint)))
		end if
		
		if gv(shopcoin) >= 0 and gv(shopcoin) < 1000 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&cstr(gval(shopcoin)))'ǉɺüʽ
		elseif gv(shopcoin) >= 1000 and gv(shopcoin) < 10^6 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/1000)&"K")'ǉɺüʽ
		elseif gv(shopcoin) >= 10^6 and gv(shopcoin) < 10^9 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/10^6)&"M")'ǉɺüʽ
		elseif gv(shopcoin) >= 10^9 and gv(shopcoin) < 10^12 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/10^9)&"B")'ǉɺüʽ
		elseif gv(shopcoin) >= 10^12 and gv(shopcoin) < 10^15 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/10^12)&"T")'ǉɺüʽ
		elseif gv(shopcoin) >= 10^15 and gv(shopcoin) < 10^18 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/10^15)&"P")'ǉɺüʽ
		elseif gv(shopcoin) >= 10^18 and gv(shopcoin) < 10^21 then
			call Txtcreate(41,436,72,32,128,1,16,205,1,"Shopcoin "&Format("%0.2f",gval(shopcoin)/10^18)&"E")'ǉɺüʽ
		end if
	
		select case lvltimer(count)
			case 0 to 9
				call hudset("text:00",31,712,40,48,57,1,127,-1,-1)'ʣӠʱ䰰*
				call hudset("text:&sys(lvltimer)",14,744,40,48,57,1,127,-1,-1)
			case 10 to 99
				call hudset("text:0",31,712,40,48,57,1,127,-1,-1)'ʣӠʱ䰪*
				call hudset("text:&sys(lvltimer)",14,728,40,48,57,1,127,-1,-1)
			case 100 to 999
				call hudset("text: ",31,712,40,48,57,1,127,-1,-1)'ʣӠʱ䪪*
				call hudset("text:&sys(lvltimer)",14,712,40,48,57,1,127,-1,-1)'ʣӠʱ䪪*
		end select
	
		if char(1).id = 2 and char(1).ysp = 0 then 'RosalinaĉҴϵͳ(ʹӃKPeachǉӎͦʱ)
			select case rnd
				case 0 to 0.33
					call audioset(3,1,0,"")
					call audioset(1,1,1,"RS_Jump1.wav")
				case 0.34 to 0.67
					call audioset(3,1,0,"")
					call audioset(1,1,1,"RS_Jump2.wav")
				case 0.67 to 1
					call audioset(3,1,0,"")
					call audioset(1,1,1,"RS_Jump3.wav")
			end select
		elseif char(1).id=0 or char(1).id = 1 or char(1).id = 3 or char(1).id = 4 then
			if char(1).ysp = 0 then
				call audioset(3,1,0,"")
				call audioset(1,1,1,"player-jump.ogg")
			end if
		end if
	
		select case sysval(score)'֊ϵͳдˣaseʇΪKαӒԆ먻)
			case 0 to 9
				call hudset("text:&sys(score)",13,744,76,48,57,1,127,-1,-1)
			case 10 to 99
				call hudset("text:&sys(score)",13,728,76,48,57,1,127,-1,-1)
			case 100 to 999
				call hudset("text:&sys(score)",13,712,76,48,57,1,127,-1,-1)
			case 1000 to 9999
				call hudset("text:&sys(score)",13,696,76,48,57,1,127,-1,-1)
			case 10000 to 99999
				call hudset("text:&sys(score)",13,680,76,48,57,1,127,-1,-1)
			case 100000 to 999999
				call hudset("text:&sys(score)",13,664,76,48,57,1,127,-1,-1)
			case 1000000 to 9999999
				call hudset("text:&sys(score)",13,648,76,48,57,1,127,-1,-1)
		end select
	end if	
	
	call sleep(1)
loop
