pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- mental (st)health
-- by r/galbo (rcglabo@gmail.com)
-- ft. $the_real_chris$ (1337@bufflabz)
-- wtf

-- globals
t=0

function _init()
 dude={sp=1,x=60,y=60}
 moneyss={}
 pills={}
 buiz_bros={}
 care_providers={}
 dolla=1 
end

function make_it_rain()
	local money = {
		sp=3,
		x=dude.x,
		y=dude.y,
		dx=0,
		dy=-3
	}
	add(moneyss, money)
end

function _update()
 t=t+1

 for money in all(moneyss) do
 	money.x+=money.dx
 	money.y+=money.dy
 	
 	if(t%6<3) then
	  money.sp=3
	  dolla=t%8
	 else
	 
	  money.sp=4
	 
	 end
 	
 	if money.x<0 or money.x>128 or
 				money.y<0 or money.y>128 then
 				del(moneyss, money)
 	end
 end 
 
 if(t%6<3) then
  dude.sp=1
 else
  dude.sp=2
 end
 
 if btn(0) then dude.x-=1 end
 if btn(1) then dude.x+=1 end
 if btn(2) then dude.y-=1 end
 if btn(3) then dude.y+=1 end
 if btnp(4) then make_it_rain() end 
 if btnp(5) then do_survey() end
end

function _draw()
 cls()
 map(0)
 print(#moneyss,9)
 spr(dude.sp,dude.x,dude.y)
 for money in all(moneyss) do
 		--spr(money.sp,money.x,money.y)
  	sspr(dolla,9,8,8,dude.x,dude.y)
  	--sspr(16,9,8,8,dude.x,dude.y)
  	--sspr(24,9,8,8,dude.x,dude.y)
 end
end


--sfx(2)
--sfx(3)
--music(1,1)
--music(2,1)
--spr(2,60,60)
--spr(2,60,60)


__gfx__
000000000000000000000000000000000000000000000000f00000ff0000000100000001ddbdd6b666666666ddddddd511111100cccccc0c03300330000ee000
0000000000fff00000fff000000000000000000000fff00059000955000fff11000fff11ddbb6bb666bbbbb6611111151715111100000ccc33333333000ee000
0070070000fff00000fff000000000000000000000fff000df000fdd000fff11000fff11dd6bbb6666bbbbb661111d1d1111111700cccc0033bbbb33000ee000
0007700000fff00000fff0000cbbba000abbbc0000fff00080000088000fff11000fff11d6bbbbb666bbbbb661bb1b1b171171171000000033bbbb33000ee000
000770000f555f00095559000bbabb000bbabb000f555f008000008000fffff5009fff956bbbbbbb77bbbbb6611b1b1b11111171ccc00000033bb33000eeee00
00700700095559000f555f000abbbc000cbbba0009ddd90000000000009ddd9500fdddf56666b67777bbbbb661bb1b1bdd555171c0c000cc003333000eeeeee0
000000000015100000151000000000000000000000888000f00000ff00099915000999156666b777777777776111111ddd511111ccccccc000033000ee0ee0ee
000000000011100000111000000000000000000000808000f00000ff00091915000919156666b77777777777766666dddd555511c0cc0ccc00000000e00ee00e
00000000000000000000000000000000000090000000000000000000000000010000000100000001777777777666666dddd55511100000000000000000000000
00000000000000000000000000000000333999330000900000000900000fff11000fff11000fff10777777777766666dddd55551100000000000000000000000
03399330333999333333333333399933300009033399993333339993000fff11000fff11090fff19777777777766666dddd55551100000000000000000000000
03090030300900033000000333099900300999033090900333009000000fff11000fff1109099909777777777766666dddd55551100000000000000000000000
0300903030000903300000033309990033339333309090033300900000fffff5009fff95009fff95777777777766666dddd55551100000000000000000000000
03399330333999333333333333399933000000003399993333339993009ddd95005ddd55009ddd95777777777766666dddd55551100000000000000000000000
00000000000000000000000000000000000000000000900000000900000999150009991500099915777777777666666dddd55511100000000000000000000000
0000000000000000000000000000000000000000000000000000000000091915000919150009191577777777766666dddd555511100000000000000000000000
000c000c000dd00d000000000000000000000000000000000000000000000115555dddd66666677777777777666666dddd555511000000000000000000000000
cccccccc000ddddd000000000000000000000000000000000000000000000115555ddddd666666777777777666666ddddd555511000000000000000000000000
c0cc0c0cdddd0d0d0000000000000000000000000000000000000000000001115555dddd666666667777766666666dddd5555111000000000000000000000000
c0ccc0ccd0dddddd0000000000000000000000000000000000000000000000115555ddddd6666666666666666666ddddd5555110000000000000000000000000
c0c00c0cd0dd000d00000000000000000000000000000000000000000000001155555ddddd66666666666666666ddddd55555110000000000000000000000000
c00c000cd00d000d000000000000000000000000000000000000000000000011155555ddddd666666666666666ddddd555551110000000000000000000000000
ccccccccdddddddd000000000000000000000000000000000000000000000001115555ddddddd66666666666ddddddd555511100000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000001155555dddddddd6666666dddddddd5555511000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000111555555ddddddddddddddddddd555555111000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000111555555ddddddddddddddddd5555551110000000000000000000000000000
0000000000000000000000000000011111111100000000000000000000000000001115555555ddddddddddddd555555511100000000000000000000000000000
0000000000000000000000000011111111111111100000000000000000000000000111555555555ddddddd555555555111000000000000000000000000000000
00000000000000000000000111111115555511111111000000000000000000000000111155555555555555555555511110000000000000000000000000000000
00000000000000000000001111155555555555551111100000000000000000000000011115555555555555555555111100000000000000000000000000000000
00000000000000000000111155555555555555555551111000000000000000000000000111115555555555555111110000000000000000000000000000000000
00000000000000000001111555555555555555555555111100000000000000000000000011111111555551111111100000000000000000000000000000000000
0000000000000000001115555555555ddddd55555555551110000000000000000000000000011111111111111100000000000000000000000000000000000000
0000000000000000011155555555ddddddddddd55555555111000000000000000000000000000011111111100000000000000000000000000000000000000000
0000000000000000111555555ddddddddddddddddd55555511100000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000111555555ddddddddddddddddddd5555551110000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000011555555ddddddddd666ddddddddd555555110000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000011155555dddddd66666666666dddddd55555111000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000011155555ddddd666666666666666ddddd5555511100000000000000000000000000000000000000000000000000000000000000000000000000
00000000000001155555ddddd66666666666666666ddddd555551100000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000115555ddddd6666666666666666666ddddd55551100000000000000000000000000000000000000000000000000000000000000000000000000
0000000000001115555dddd666666666777666666666dddd55551110000000000000000000000000000000000000000000000000000000000000000000000000
000000000000115555ddddd666666677777776666666ddddd5555110000000000000000000000000000000000000000000000000000000000000000000000000
000000000000115555dddd66666677777777777666666dddd5555110000000000000000000000000000000000000000000000000000000000000000000000000
000000000001115555dddd66666677777777777666666dddd5555111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000111555dddd6666667777777777777666666dddd555111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666677777777777777766666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666677777777777777766666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666677777777777777766666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666677777777777777766666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666677777777777777766666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
00000000000115555dddd6666667777777777777666666dddd555511000000000000000000000000000000000000000000000000000000000000000000000000
000000000001115555dddd66666777777777777766666dddd5555111000000000000000000000000000000000000000000000000000000000000000000000000
000000000001115555dddd66666677777777777666666dddd5555111000000000000000000000000000000000000000000000000000000000000000000000000
000000000000115555dddd66666667777777776666666dddd5555110000000000000000000000000000000000000000000000000000000000000000000000000
0000000000001155555dddd666666667777766666666dddd55555110000000000000000000000000000000000000000000000000000000000000000000000000
0000000000001115555ddddd6666666666666666666ddddd55551110000000000000000000000000000000000000000000000000000000000000000000000000
00000000000001155555ddddd66666666666666666ddddd555551100000000000000000000000000000000000000000000000000000000000000000000000000
000000000000011155555ddddd666666666666666ddddd5555511100000000000000000000000000000000000000000000000000000000000000000000000000
000000000000001155555dddddd6666666666666dddddd5555511000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000011155555dddddddd6666666dddddddd55555111000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000011155555ddddddddddddddddddddd555551110000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000111555555ddddddddddddddddd55555511100000000000000000000000000000000000011110000000000000000000000000000000000000
000000000000000001115555555ddddddddddddd5555555111000000000000000000000000000000001111111111111100000000000000000000000000000000
00000000000000000011155555555ddddddddd555555551110000000000000000000000000000000111111111111111111000000000000000000000000000000
00000000000000000001115555555555555555555555511100000000000000000000000000000011111155555555551111110000000000000000000000000000
00000000000000000000111155555555555555555551111000000000000000000000000000001111155555555555555551111100000000000000000000000000
00000000000000000000011111555555555555555111110000000000000000000000000000011115555555555555555555511110000000000000000000000000
00000000000000000000000111111155555551111111000000000000000000000000000000111555555555555555555555555111000000000000000000000000
000000000000000000000000011111111111111111000000000000000000000000000000011155555555dddddddddd5555555511100000000000000000000000
000000000000000000000000000011111111111000000000000000000000000000000000111555555dddddddddddddddd5555551110000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000111555555dddddddddddddddddd555555111000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000011155555dddddddddddddddddddddd5555511100000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000001155555ddddddd6666666666ddddddd555551100000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000001115555dddddd66666666666666dddddd55551110000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000001155555ddddd6666666666666666ddddd55555110000000000000000000
000000000000000000000000000000000000000000000000000000000000000000001115555ddddd666666666666666666ddddd5555111000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000115555ddddd66666666666666666666ddddd555511000000000000000000
00000000000000000000000000000000000000000000000000000000000000000001115555dddd6666666677777766666666dddd555511100000000000000000
00000000000000000000000000000000000000000000000000000000000000000001115555dddd6666667777777777666666dddd555511100000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666666777777777777666666dddd55551100000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666666777777777777666666dddd55551100000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666667777777777777766666dddd55551100000000000000000
0000000000000000000000000000000000000000000000000000000000000000001115555dddd666667777777777777766666dddd55551110000000000000000
0000000000000000000000000000000000000000000000000000000000000000001115555dddd666667777777777777766666dddd55551110000000000000000
0000000000000000000000000000000000000000000000000000000000000000001115555dddd666667777777777777766666dddd55551110000000000000000
0000000000000000000000000000000000000000000000000000000000000000001115555dddd666667777777777777766666dddd55551110000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666667777777777777766666dddd55551100000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666666777777777777666666dddd55551100000000000000000
0000000000000000000000000000000000000000000000000000000000000000000115555dddd666666777777777777666666dddd55551100000000000000000
00000000000000000000000000000000000000000000000000000000000000000001115555dddd6666667777777777666666dddd555511100000000000000000
00000000000000000000000000000000000000000000000000000000000000000001115555dddd6666666677777766666666dddd555511100000000000000000
00000000000000000000000000000000000000000000000000000000000000000000115555ddddd66666666666666666666ddddd555511000000000000000000
000000000000000000000000000000000000000000000000000000000000000000001115555ddddd666666666666666666ddddd5555111000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000001155555ddddd6666666666666666ddddd55555110000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000001115555dddddd66666666666666dddddd55551110000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000001155555ddddddd6666666666ddddddd555551100000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000011155555dddddddddddddddddddddd5555511100000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000111555555dddddddddddddddddd555555111000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000111555555dddddddddddddddd5555551110000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000011155555555dddddddddd5555555511100000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000111555555555555555555555555111000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000011115555555555555555555511110000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000001111155555555555555551111100000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000011111155555555551111110000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111100000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110000000000000000000000000000000000000
__map__
2a2a2a2a2a2a2a2a2a2a2a2a2a2a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2424242424242424242424242b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2222222222222222222222242b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2422222222222222222222242b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2422222222222222222222242b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2422222222222222222222242b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2422222222222222221522242b240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2422222224242420240a24242b240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f2424242400242424240a24240f240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f002422220e242424240a24240f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f0000000024002424000000000f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f000c0000240a0a0a0a0a00000f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f0000000000242424242424240f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f0000090020000d24242424240f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f0000000000000000000000000f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010000022765227651e6651406516055170551c0551e055200551a2552205525055290552a0552b0552f05531055320552e055200551c05521052290522c0522e052310523405535052350521f752217521d752
00100000387503675034750194501a4501b4501c4501e4501f4502145022450244502645027450294502b4502b4502c4502d4500d7500d7500c7500b7500b7500a75009750077500675005750047500375001750
001000001c2541d7501d750194501a4501d4501f4502145025450284542a4542b4502e4501a7501a7501c2541c7501c7501d7501d7501d7501a7501a7501a7501a7501a7501a7501d7501a7501d7501a7501c750
001000001a7542e5502b55023550205501c5541a5501f7501f7501d7501a750314502e4502d4542a4502645024450204501d4501b45019450164501545014450144501c7501c7501c7501c7501d7501d7501d754
0010000000000000002e6502e650000002d6502c650000002b6502a65028650246501b650156501465013650146501a6501c65000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000002a7502a75000000287500000000000257500000023750227502275022750227500000022750227502275022750227502375025750277502b750307503275000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000001c2541d2541a2541d2541c2541c2541d2541a2541d2541c2541c2541c2541d2541a2541d2541c2541c2541d2541a2541d2541c2541c25400000000000000000000000000000000000000000000000000
__music__
01 430e4344
03 01424344
03 01020304

