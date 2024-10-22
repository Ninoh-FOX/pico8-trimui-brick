pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
--By Roninloli
function _init()E=0y=0Q=0R=0w=0G=false H=false I=false p=false d={menu_on=false,at=nil,sv=false,nm=false,mm=false,gd=false,bag=0}゜={[104]=1,[54]=2,[102]=2,[51]=3,[103]=3,[50]=4,[105]=4,[60]=5,[106]=5,[59]=6,[92]=6,[49]=7,[56]=7,[100]=7,[55]=8,[58]=9,[53]=10,[99]=10,[108]=10,[91]=11,[97]=11,[48]=12,[98]=12,[17]=13,[107]=13,[57]=14,[96]=14,[52]=15,[101]=15}D=nil j=nil エ=nil オ=nil i=true q={}x={}k={}poke(24365,1)あ()_,g=128,64h,r=0,0い=.2う=.2え=64s,c=nil,nil m=17お()end function _update()か()き()if(e.is_dead==false)く()
け()S()if(i)こ()e.old_a_t=e.current_a_t
さ()end function し()if(e.old_a_t=="dot"and e.current_a_t~="dot")e.xspd*=1.06e.yspd*=1.06
if(e.old_a_t=="water"and e.current_a_t~="water")if(e.yspd<0)e.yspd-=2
if(e.old_a_t=="bld"and e.current_a_t~="bld")if(e.yspd>0)e.yspd+=2
end function _draw()cls()map()す()せ()そ()た()camera(h,r)S()ち(h,r)spr(79,stat(32)+h,stat(33)+r)end function あ()n={grvt=1,grvt_dir="down",grvt_dir_temp="down",current_bst_x="",current_bst_y="",bst_counter_x=0,bst_counter_y=0}f={left_buff=0,right_buff=0,up_buff=0,down_buff=0,hold_jump_buff=0}e={x=2,y=2,o_center_x=0,o_center_y=0,w=1,h=1,xspd=0,yspd=0,initial_acc=.3,final_friction=.66,jump=7,hold_jump=false,max_speed=7,xphysics_action=false,yphysics_action=false,old_x=0,old_y=0,new_x=0,new_y=0,xcorner_coll=0,ycorner_coll=0,collision_at="",previous_collision_at="",select_character=0,portal_dir="dot",current_grab="",has_grab_tool=false,dash_timer=.2,has_dash_tool=false,dashing=false,max_dash=1,has_extra_dash=false,extra_dash_timer=1,has_crown=false,has_init=false,strt_x=nil,strt_y=nil,has_immune=false,is_boxed=false,is_dead=false,facing_x=false,facing_y=false,current_a_t="none",old_a_t="none",ckpt_x=8,ckpt_y=8,plr_has_ckpt=false,is_god=false,is_god_timer=0,is_dead_timer=.3,is_dead_particles=false}end function v(d,n,t,f,l,i,o,h)if h~="cr"do if(e.is_dead)if(e.is_dead_particles)a(0,0,1,1,n+4,t+4,.5,1,1,10,25,20,e.is_dead_timer+1,8,8,2,.8,.8,.8,false,0)e.is_dead_particles=false
if e.has_immune do if(abs(e.xspd)<=1and abs(e.yspd)<=1)if y>=3do T=-1elseif y<=0do T=1end y=y+.1*T?chr(135),n,t-6-y,8
end if(e.is_boxed)a(0,0,0,0,n+4,t+4,.1,0,0,1,19,1,3.3,7,10,9,.1,.1,.1,false,0)
end if(e.is_boxed==false and e.is_dead==false)palt(0,false)palt(12,true)spr(d,n,t,f,l,i,o)palt()
end function た()local i,n,t,d,f,l=e.select_character,n.grvt_dir=="dot"and"down"or n.grvt_dir,e.xspd,e.yspd,e.facing_x,e.facing_y if(abs(t)>0)f=t<0
if(abs(d)>0)l=d>0
local t,d=6,6if n=="up"do t*=0elseif n=="left"do d*=0elseif n=="down"do t*=0d*=-1elseif n=="right"do t*=-1d*=0end if(e.is_god)つ(e.x,e.y)
if n=="up"or n=="down"do v(i,e.x,e.y,e.w,e.h,f,n=="up","ch")if(e.has_crown)v(95,e.x+t,e.y+d,e.w,e.h,f,n=="up","cr")
elseif n=="left"or n=="right"do i+=1v(i,e.x,e.y,e.w,e.h,n=="left",l,"ch")if(e.has_crown)v(111,e.x+t,e.y+d,e.w,e.h,n=="left",l,"cr")
end e.facing_x=f e.facing_y=l end function つ(d,f)local n=7if(e.is_god)for t=.2,1.2,.5do circfill(d+3-e.xspd*t,f+3-e.yspd*t,n,7)n-=2end
end function J()e.old_x,e.old_y=e.x,e.y end function K()e.new_x,e.new_y=e.x,e.y end function て()if(e.is_god)n.grvt_dir_temp="dot"
if n.grvt_dir_temp~="dot"and e.current_a_t~="dot_bst"do if n.grvt_dir_temp=="up"do if(e.yspd>-1and o(e,"floor"))e.yspd-=1else e.yspd-=n.grvt
elseif n.grvt_dir_temp=="down"do if(e.yspd<1and o(e,"floor"))e.yspd+=1else e.yspd+=n.grvt
elseif n.grvt_dir_temp=="left"do if(e.xspd>-1and o(e,"floor"))e.xspd-=1else e.xspd-=n.grvt
elseif n.grvt_dir_temp=="right"do if(e.xspd<1and o(e,"floor"))e.xspd+=1else e.xspd+=n.grvt
end end if(n.bst_counter_y<=0)n.bst_counter_y=0n.current_bst_y=""
if(n.bst_counter_x<=0)n.bst_counter_x=0n.current_bst_x=""
if n.current_bst_y=="up"do z(-1,"y",-7,1)elseif n.current_bst_y=="down"do z(1,"y",7,-1)end if n.current_bst_x=="left"do z(-1,"x",-7,1)elseif n.current_bst_x=="right"do z(1,"x",7,-1)end end function z(d,t,f,l)e[t]+=d if(not o(e,"ceiling"))e[t.."spd"]=f n["bst_counter_"..t]-=1else n["bst_counter_"..t]=0
e[t]-=d end function く()A,B=L()if e.current_a_t~="dot_bst"do if n.grvt_dir_temp=="up"or n.grvt_dir_temp=="down"or n.grvt_dir_temp=="dot"do if(A<0and f.left_buff<3)f.left_buff+=1
if(A>0and f.right_buff<3)f.right_buff+=1
end if n.grvt_dir_temp=="left"or n.grvt_dir_temp=="right"or n.grvt_dir_temp=="dot"do if(B<0and f.up_buff<3)f.up_buff+=1
if(B>0and f.down_buff<3)f.down_buff+=1
end end if stat(28,44)do if(f.hold_jump_buff<30)f.hold_jump_buff+=1
else f.hold_jump_buff=0end end function F(t,n)if t>0do if(n=="left")f.left_buff-=1
if(n=="right")f.right_buff-=1
if(n=="up")f.up_buff-=1
if(n=="down")f.down_buff-=1
if(n=="spacebar"and e.current_a_t~="dot_bst")if(f.hold_jump_buff<=1or f.hold_jump_buff==30)e.hold_jump=true else e.hold_jump=false
return true else return false end end function と()if F(f.right_buff,"right")do if(e.xspd<1)e.xspd+=1else e.xspd+=e.initial_acc
e.xphysics_action=true end if F(f.left_buff,"left")do if(e.xspd>-1)e.xspd-=1else e.xspd-=e.initial_acc
e.xphysics_action=true end if F(f.up_buff,"up")do if(e.yspd>-1)e.yspd-=1else e.yspd-=e.initial_acc
e.yphysics_action=true end if F(f.down_buff,"down")do if(e.yspd<1)e.yspd+=1else e.yspd+=e.initial_acc
e.yphysics_action=true end if(F(f.hold_jump_buff,"spacebar"))な()
end function な()if(e.hold_jump and o(e,"floor"))local t=e.jump if n.grvt_dir_temp=="up"do e.yspd=t elseif n.grvt_dir_temp=="down"do e.yspd=-t elseif n.grvt_dir_temp=="left"do e.xspd=t elseif n.grvt_dir_temp=="right"do e.xspd=-t end
end function o(e,u)local t,d,f,i,o,h,r,a=flr(e.x/8),flr(e.y/8),flr((e.x+7)/8),flr((e.y+7)/8),flr((e.x-1)/8),flr((e.y-1)/8),flr((e.x+8)/8),flr((e.y+8)/8)local function e(o,h,r,a)local e,n=mget(o,h),mget(r,a)local u,d,s,f=mget(t,d)~=e,mget(f,d)~=n,mget(t,i)~=e,mget(f,i)~=n if(l(o,h)==1or l(r,a)==1)return true
for t=25,28do if(e==t or n==t)if(u or d or s or f)return true
end end if u=="ceiling"do if n.current_bst_y=="up"do return e(t,h,f,h)elseif n.current_bst_y=="down"do return e(t,a,f,a)elseif n.current_bst_x=="left"do return e(o,d,o,i)elseif n.current_bst_x=="right"do return e(r,d,r,i)end elseif u=="floor"do if(n.current_bst_x==""and n.current_bst_y=="")if n.grvt_dir_temp=="down"do return e(t,a,f,a)elseif n.grvt_dir_temp=="up"do return e(t,h,f,h)elseif n.grvt_dir_temp=="left"do return e(o,d,o,i)elseif n.grvt_dir_temp=="right"do return e(r,d,r,i)end
end return false end function に()e.xspd=mid(-e.max_speed,e.xspd,e.max_speed)e.yspd=mid(-e.max_speed,e.yspd,e.max_speed)end function ぬ()e.x+=e.xspd e.y+=e.yspd end function ね()if(n.grvt_dir_temp=="up"or n.grvt_dir_temp=="down")if(not e.xphysics_action or e.jumping_action)e.xspd*=e.final_friction
if(n.grvt_dir_temp=="left"or n.grvt_dir_temp=="right")if(not e.yphysics_action or e.jumping_action)e.yspd*=e.final_friction
if n.grvt_dir_temp=="dot"do if(not e.xphysics_action)e.xspd*=e.final_friction*1.4
if(not e.yphysics_action)e.yspd*=e.final_friction*1.4
end end function ひ()if n.grvt_dir_temp=="up"or n.grvt_dir_temp=="down"do if(not e.xphysics_action and abs(e.xspd)<1)e.xspd=0
elseif n.grvt_dir_temp=="left"or n.grvt_dir_temp=="right"do if(not e.yphysics_action and abs(e.yspd)<1)e.yspd=0
end end function ふ()e.current_grab=""if e.old_x==e.new_x and e.old_y==e.new_y do return else local n=0if(へ())M()K()else n+=1
J()if(ほ())N()else n+=1
if(n==2)e.collision_at=""
J()K()end end function ま()if(e.x<0)e.x=0e.xspd=0
if(e.y<0)e.y=0e.yspd=0
if(e.x>_*8-8)e.x=_*8-8e.xspd=0
if(e.y>g*8-8)e.y=g*8-8e.yspd=0
end function O(t,e)local d,i,f,o,h,w,r,p,a,u,s,c=flr(t.x/8),flr(t.y/8),flr((t.x+7)/8),flr((t.y+7)/8),flr(t.old_x/8),flr(t.old_y/8),flr((t.old_x+7)/8),flr((t.old_y+7)/8),false,false,false,false if(l(d,i)==e)a=true
if(l(f,i)==e)u=true
if(l(d,o)==e)s=true
if(l(f,o)==e)c=true
local n,e=0,nil if(a)n+=1
if(u)n+=2
if(s)n+=4
if(c)n+=8
if n==5do e="left"elseif n==10do e="right"elseif n==3do e="up"elseif n==12do e="down"elseif n==1do if(h~=f)e="yupl"else e="xupl"
elseif n==4do if(h~=f)e="ydownl"else e="xdownl"
elseif n==2do if(r~=d)e="yupr"else e="xupr"
elseif n==8do if(r~=d)e="ydownr"else e="xdownr"
elseif n==6do e="diaghitl"elseif n==9do e="diaghitr"elseif n==7or n==13do e="trihitl"elseif n==11or n==14do e="trihitr"end if(e~=nil)t.collision_at=e
return d,i,f,o,h,w,r,p,e end function へ()local t,i,d,o,f,h,l,r,n=O(e,1)if(n==nil)return false
if(n=="diaghitl")if(f==d)e.xcorner_coll=2return true else e.xcorner_coll=1return true
if(n=="diaghitr")if(l==t)e.xcorner_coll=1return true else e.xcorner_coll=2return true
if(n=="trihitl")e.xcorner_coll=2return true
if(n=="trihitr")e.xcorner_coll=1return true
if n=="left"do e.xcorner_coll=2return true elseif n=="right"do e.xcorner_coll=1return true end if n=="xupl"do if(e.previous_collision_at=="xdownl"and e.yspd<0)return false else e.xcorner_coll=2return true
elseif n=="xupr"do if(e.previous_collision_at=="xdownr"and e.yspd<0)return false else e.xcorner_coll=1return true
elseif n=="xdownl"do if(e.previous_collision_at=="xupl"and e.yspd>0)return false else e.xcorner_coll=2return true
elseif n=="xdownr"do if(e.previous_collision_at=="xupr"and e.yspd>0)return false else e.xcorner_coll=1return true
end e.previous_collision_at=""return false end function ほ()local t,d,f,l,i,o,h,r,n=O(e,1)if(n==nil)return false
if n=="up"do e.ycorner_coll=1return true elseif n=="down"do e.ycorner_coll=2return true elseif n=="yupl"do e.ycorner_coll=1return true elseif n=="yupr"do e.ycorner_coll=1return true elseif n=="ydownl"do e.ycorner_coll=2return true elseif n=="ydownr"do e.ycorner_coll=2return true end return false end function M()local t=flr(e.new_x/8)*8if e.xcorner_coll==2do e.x=t+8if(n.grvt_dir=="up"or n.grvt_dir=="down")e.current_grab="left"
elseif e.xcorner_coll==1do e.x=t if(n.grvt_dir=="up"or n.grvt_dir=="down")e.current_grab="right"
end e.xspd=0end function N()local t=flr(e.new_y/8)*8if e.ycorner_coll==1do if(n.grvt_dir=="left"or n.grvt_dir=="right")e.current_grab="up"
e.y=t+8elseif e.ycorner_coll==2do if(n.grvt_dir=="left"or n.grvt_dir=="right")e.current_grab="down"
e.y=t end e.yspd=0end function む()J()e.previous_collision_at=e.collision_at e.xphysics_action,e.yphysics_action=false,false end function め()e.o_center_x=flr((e.x/8+(e.x+7)/8)/2)e.o_center_y=flr((e.y/8+(e.y+7)/8)/2)local n,t=flr(e.x/8),flr(e.y/8)も(e.o_center_x,e.o_center_y)local d,f=l(e.o_center_x,e.o_center_y),{[2]="left_arrow",[3]="up_arrow",[4]="right_arrow",[5]="down_arrow",[6]="dot",[7]="g_c_left",[8]="g_c_up",[9]="g_c_right",[10]="g_c_down",[11]="g_c_dot",[12]="spike",[13]="ckpt",[14]="left_bst",[15]="up_bst",[16]="right_bst",[17]="down_bst",[18]="dot_bst",[19]="portal",[20]="grab_tool",[22]="switch",[25]="crown",[26]="water",[27]="bld",[28]="dash_tool",[29]="extra_dash",[30]="immune",[31]="boxed"}e.current_a_t=f[d]or"none"return n,t end function や()カ,キ=め()local t=e.current_a_t if(t=="dot_bst")U()e.xphysics_action=true e.yphysics_action=true if abs(e.xspd)>abs(e.yspd)do e.yspd=0if e.xspd>0do e.y=e.o_center_y*8n.bst_counter_x=7n.current_bst_x="right"elseif e.xspd<0do n.bst_counter_x=7n.current_bst_x="left"end elseif abs(e.yspd)>0do e.xspd=0e.x=e.o_center_x*8if e.yspd>0do n.bst_counter_y=7n.current_bst_y="down"elseif e.yspd<0do n.bst_counter_y=7n.current_bst_y="up"end else if btn(➡️)or stat(28,7)do n.bst_counter_x=7n.current_bst_x="right"e.yspd=0elseif btn(⬅️)or stat(28,4)do n.bst_counter_x=7n.current_bst_x="left"e.yspd=0elseif btn(⬆️)or stat(28,26)do n.bst_counter_y=7n.current_bst_y="up"e.xspd=0elseif btn(⬇️)or stat(28,22)do n.bst_counter_y=7n.current_bst_y="down"e.xspd=0end end
if t=="left_arrow"do u"left"elseif t=="right_arrow"do u"right"elseif t=="up_arrow"do u"up"elseif t=="down_arrow"do u"down"elseif t=="dot"do u"dot"else n.grvt_dir_temp=n.grvt_dir end local d=""if t=="g_c_left"do d="left"elseif t=="g_c_up"do d="up"elseif t=="g_c_right"do d="right"elseif t=="g_c_down"do d="down"elseif t=="g_c_dot"do d="dot"end if(d~="")n.grvt_dir=d n.grvt_dir_temp=d
if t=="spike"do if e.has_immune~=true do e.xspd=0e.yspd=0if(not e.is_dead)sfx"00"e.is_dead=true e.is_dead_particles=true ゆ=e.is_dead_timer+time()
if(time()-ゆ>e.is_dead_timer)if(e.is_dead)e.is_dead=false
if(not e.is_dead)local t=true if e.plr_has_ckpt and l(e.ckpt_x,e.ckpt_y)==13do e.x=e.ckpt_x*8e.y=e.ckpt_y*8elseif e.has_init do e.plr_has_ckpt=false e.x=e.strt_x*8e.y=e.strt_y*8else e.plr_has_ckpt=false e.x=8e.y=8end n.current_bst_x=""n.current_bst_y=""e.xspd=0e.yspd=0U()if(t)local n=8if e.plr_has_ckpt do n=11elseif e.has_init do n=10end a(0,0,0,0,e.x+4,e.y+4,1,0,0,10,15,10,2,n,n,n,1,1,1,false,0)
end end if t=="ckpt"do if(e.plr_has_ckpt)if(mget(e.ckpt_x,e.ckpt_y)==63)mset(e.ckpt_x,e.ckpt_y,24)
if(mget(e.o_center_x,e.o_center_y)==24)mset(e.o_center_x,e.o_center_y,63)
e.plr_has_ckpt=true e.ckpt_x=e.o_center_x e.ckpt_y=e.o_center_y end if t=="up_bst"do n.bst_counter_y=7n.current_bst_y="up"u"up"elseif t=="down_bst"do n.bst_counter_y=7n.current_bst_y="down"u"down"elseif t=="left_bst"do n.bst_counter_x=7n.current_bst_x="left"u"left"elseif t=="right_bst"do n.bst_counter_x=7n.current_bst_x="right"u"right"end if(t=="portal")よ(e.o_center_x,e.o_center_y)
if t=="grab_tool"do if(i)if(e.has_grab_tool)sfx"02"e.has_grab_tool=false b(3,3,11,19,19,15)else e.has_grab_tool=true sfx"01"b(3,3,11,0,0,5)
end if(t=="switch")if(i)ら()
if(t=="crown")if(i)sfx"05"e.has_crown=true for e=0,15do a(0,0,0,0,rnd(106)+h+15,rnd(106)+r+15,flr(rnd(1.5))+.7,0,0,1,22,24,3,flr(rnd(9))+7,flr(rnd(9))+7,flr(rnd(6))+2,1,1,.1,false,0)end
if t=="water"or t=="bld"do if(t=="water")e.yspd+=.2else e.yspd-=.2
u"dot"e.xspd*=.87e.yspd*=.87end if t=="dash_tool"do if(i)if(e.has_dash_tool)sfx"02"e.has_dash_tool=false b(9,10,7,19,19,15)else sfx"01"e.has_dash_tool=true b(9,10,7,0,0,5)
end if t=="extra_dash"do if i and e.has_extra_dash==false do if e.has_dash_tool and w>0do sfx"06"e.has_extra_dash=true w-=1R=time()+e.extra_dash_timer for e=0,63do for n=0,127do if(mget(n,e)==122)mset(n,e,47)
end end end else end end if t=="immune"do if(i)if(e.has_immune)sfx"02"e.has_immune=false b(2,8,8,19,19,15)else e.has_immune=true sfx"01"b(2,8,8,0,0,5)
end if t=="boxed"do if(i)sfx"07"e.is_boxed=true e.x=e.o_center_x*8e.y=e.o_center_y*8
n.bst_counter_x=0n.bst_counter_y=0if e.is_boxed do local n=false A,B=L()if(f.hold_jump_buff==0and stat(28,44))n=true
if(n)sfx"06"e.is_boxed=false e.xspd=A e.yspd=B
end end end function り()if e.has_dash_tool and time()>R and e.has_extra_dash==true do for e=0,63do for n=0,127do if(mget(n,e)==47)mset(n,e,122)
end end e.has_extra_dash=false end end function こ()D=e.o_center_x j=e.o_center_y i=false end function U()f.left_buff=0f.right_buff=0f.up_buff=0f.down_buff=0end function u(e)n.grvt_dir_temp=e end function V(e,n,t)add(x,{x=e,y=n,sprite=t})end function る(n,t)for d,e in ipairs(x)do if(e.x==n and e.y==t)del(x,e)return
end end function よ(e,n)local t=mget(e,n)for d=64,77do if(t==d)れ(e,n,t)
end end function れ(t,f,l)if i or D~=t and j~=f do for d in all(x)do if d.x==t and d.y==f do local t={}for e in all(x)do if(e~=d and e.sprite==l)add(t,e)
end if(#t>0)local t=t[flr(rnd(#t))+1]e.x=t.x*8e.y=t.y*8e.xspd*=1.1e.yspd*=1.1e.old_x=t.x*8e.old_y=t.y*8n.grvt_dir_temp=n.grvt_dir D=t.x j=t.y sfx"08"i=false
return end end end end function も(e,n)if(e~=D or n~=j)i=true
り()end function お()for n=0,63do for t=0,127do local d,f=l(t,n),mget(t,n)if(d==19)V(t,n,f)
if d==1or d==23do for e=96,107do if(f==e)C(t,n,f)
end end if d==22do local e={[46]=112,[62]=113,[78]=114,[94]=115,[110]=116,[126]=117}local e=e[f]if(e)mset(t,n,e)
for e=112,117do if(mget(t,n)==e)C(t,n,e)
end end local d=l(t,n)if(d==24)e.x=t*8e.y=n*8e.has_init=true e.strt_x=t e.strt_y=n
if(mget(t,n)==47)mset(t,n,122)
end end end function ろ()if e.has_grab_tool do local t=0if(n.grvt_dir=="up"or n.grvt_dir=="left")t=-1else t=1
local function n(n,t)W(11,11,3)e.xspd*=n e.yspd*=t end if e.current_grab=="up"do if(e.xspd*t>0)n(.1,0)
if(f.hold_jump_buff==0and not o(e,"floor")and stat(28,44))e.yspd+=7e.xspd-=5*t P=true
elseif e.current_grab=="down"do if(e.xspd*t>0)n(.1,0)
if(f.hold_jump_buff==0and not o(e,"floor")and stat(28,44))e.yspd-=7e.xspd-=5*t P=true
elseif e.current_grab=="left"do if(e.yspd*t>0)n(0,.1)
if(f.hold_jump_buff==0and not o(e,"floor")and stat(28,44))e.xspd+=7e.yspd-=5*t P=true
elseif e.current_grab=="right"do if(e.yspd*t>0)n(0,.1)
if(f.hold_jump_buff==0and not o(e,"floor")and stat(28,44))e.xspd-=7e.yspd-=5*t P=true
end end end function わ()if(e.old_x==e.new_x and e.old_y==e.new_y)return
local n,t,d,f,l,i,o,h,r=O(e,21)if(e.old_x>e.x and n~=l and(mget(n,t)==28or mget(n,f)==28))e.xcorner_coll=2M()
if(e.old_x<e.x and d~=o and(mget(d,t)==27or mget(d,f)==27))e.xcorner_coll=1M()
if(e.old_y>e.y and t~=i and(mget(n,t)==26or mget(d,t)==26))e.ycorner_coll=1N()
if(e.old_y<e.y and f~=h and(mget(n,f)==25or mget(d,f)==25))e.ycorner_coll=2N()
end function C(e,n,t)add(k,{x=e,y=n,sprite=t})end function X(n,t)for d,e in ipairs(k)do if(e.x==n and e.y==t)del(k,e)return
end end function ら()local n,d,f,t,e=mget(e.o_center_x,e.o_center_y),{},{},{[112]=46,[113]=62,[114]=78,[115]=94,[116]=110,[117]=126},{[46]=96,[62]=97,[78]=98,[94]=99,[110]=100,[126]=101}for e=112,117do if n==e or n==t[e]do for f,n in ipairs(k)do if(n.sprite==e or n.sprite==t[e])add(d,n)
end for d,n in ipairs(d)do if n.sprite==e do sfx"02"n.sprite=t[e]elseif n.sprite==t[e]do sfx"03"n.sprite=e end mset(n.x,n.y,n.sprite)end break end end local e=e[n]or e[t[n]]if e do for t,n in ipairs(k)do if(n.sprite==e or n.sprite==e+6)add(f,n)
end for t,n in ipairs(f)do if n.sprite==e do n.sprite=e+6elseif n.sprite==e+6do n.sprite=e end mset(n.x,n.y,n.sprite)end end end function L()local e,n=0,0if(btn(⬆️)or stat(28,26))n-=7
if(btn(⬇️)or stat(28,22))n+=7
if(btn(⬅️)or stat(28,4))e-=7
if(btn(➡️)or stat(28,7))e+=7
return e,n end function を()if(not e.has_dash_tool)return
local f,t,d=f.hold_jump_buff==0and stat(28,44)and not o(e,"floor"),0,0if(f and w<e.max_dash)t,d=L()
if(w>=e.max_dash and o(e,"floor"))w=0
if((e.current_a_t=="none"or e.current_a_t=="extra_dash")and(abs(t)>0or abs(d)>0)and e.dashing==true)e.xspd=t e.yspd=d e.dashing=true Q=time()+e.dash_timer w+=1return
e.dashing=true if(Q>time())W(10,9,4)e.dashing=false if(e.current_a_t=="none")n.grvt_dir_temp="dot"
end function W(n,t,d)a(0,0,0,0,e.x+4,e.y+4,.16,0,0,1,5,2,4.8,n,t,d,2,1,.5,false,0)end function b(n,t,d,f,l,i)a(f,l,0,0,e.x+4,e.y+4,i,0,0,1,19,12,3,n,t,d,3,2,.1,true,0)end function ん()local n,t=_*8-120,g*8-115local f,l=mid(e.x-56,0,n),mid(e.y-56,0,t)local function d(e,n,t)local t=abs(t-(e+56))local t=い+(t>え and う or 0)return e+(n-e)*t end h=flr(mid(d(h,f,e.x),0,n))r=flr(mid(d(r,l,e.y),0,t))end function Y()local e=stat(34)if e>0do local n,t,e=stat(32)+h,stat(33)+r,e==1and m or 16if(s and c)Z(s,c,n,t,e)
s,c=n,t else s,c=nil,nil end end function Y()if stat(34)>0do local e,n,t=stat(32)+h,stat(33)+r,stat(34)==1and m or 16if(s and c)Z(s,c,e,n,t)
s,c=e,n else s,c=nil,nil end end function っ(n,t,d)if stat(33)<=120do local n,t=flr(n/8),flr(t/8)if n>=0and n<_ and t>=0and t<g do if(mget(n,t)==108and n==e.o_center_x and t==e.o_center_y)e.is_boxed=false
if d==44do if(e.strt_x and e.strt_y)mset(e.strt_x,e.strt_y,16)
e.has_init=true e.strt_x=n e.strt_y=t else if(l(n,t)==24)e.has_init=false e.strt_x=nil e.strt_y=nil
end if(mget(n,t)==63)e.plr_has_ckpt=false
if(l(n,t)==19)る(n,t)
if(l(n,t)==22)X(n,t)
for e=96,107do if(mget(n,t)==e)X(n,t)
end for e=64,77do if(d==e)V(n,t,d)
mset(n,t,d)end for e=96,107do if(d==e)C(n,t,d)
mset(n,t,d)end for e=112,117do if(d==e)C(n,t,d)
mset(n,t,d)end end end end function Z(e,n,d,f,o)local l,i,h,r=abs(d-e),abs(f-n),e<d and 1or-1,n<f and 1or-1local t=l-i while true do っ(e,n,o)if(e==d and n==f)break
local d=2*t if(d>-i)t=t-i e+=h
if(d<l)t=t+l n+=r
end end function そ()local e=8local e,n=flr(h/e),flr(r/e)for t=e,e+16do for d=n,n+16do local e,n,t=mget(t,d),t*8,d*8for d=37,41do if(e==d)a(30,30,0,0,n+4,t+4,flr(rnd(.1))+.1,0,0,.5,2,1,1,7,7,7,.1,.1,.1,true,0)
end for d=64,77do if(e==d)a(0,0,0,0,n+4,t+4,1.24,0,0,1,3,1,1,7,7,7,.1,.1,.1,false,.08)
end if(e==118)a(-17,0,0,4,n+3,t+7,.52,-1,0,.25,12,1,1.5,10,9,2,1.5,1,1,false,0)
if(e==119)a(0,0,7,0,n+3,t+7,1.15,-1,0,.288,12,1,3.1,8,8,2,1,1,.1,false,0)
if(e==42or e==43)a(0,9,7,0,n+5,t+4,.3,0,-1,.614,4,flr(rnd(101))-99,1,7,7,7,.1,.1,.1,false,0)
end end end function す()local e,n=stat(32)+h,stat(33)+r local e,n=flr(e/8),flr(n/8)rect(e*8,n*8,e*8+7,n*8+7,1)end function ゃ(e,n,t,d)rectfill(e,n,e+t,n+d,0)for t=0,t-1do local f=e+t for e=0,d-1do local t=mget(t,e)local t=゜[t]or 0if(t>0)pset(f,n+e,t)
end end end function ゅ(n,t)if(time()-E>.2)pset(n+e.x/8,t+e.y/8,11)if(time()-E>.7)E=time()
end function S()if btn(5)or d.mm do if(btn(5))d.mm=false
゛=true local e,n=_,g local t,d=128-e+h,128-n+r-8ゃ(t,d,e,n)ゅ(t,d)else ゛=false end end function l(e,n)local e=mget(e,n)local e=12288+e local e=peek(e)return e end function ょ(o,h,d,f,r,a,u,i,s,e,t,c,w,p,_,g,b,x,y,k,l)local n,s,i,l={},atan2(i,s),cos(l),sin(l)local function m()local n,e=s+(rnd(e)-1)*e*3.14,u*(1+rnd(e/4)-.25)local t,e=e*cos(n),e*sin(n)local e={x=r+t*-o+flr(rnd(d))-d/2,y=a+e*-h+flr(rnd(f))-f/2,vx=t,vy=e,iterations=0,local_particle_timer=w+time(),current_color=p,current_size=b}return e end for e=1,c do add(n,m())end local function e()for e=#n,1,-1do local e=n[e]local d,f=e.vx*i-e.vy*l,e.vx*l+e.vy*i e.vx,e.vy=d,f if(k)e.x+=e.vx e.y+=e.vy else e.x-=e.vx e.y-=e.vy
e.iterations+=1if e.iterations>=flr(t*2/3)do e.current_color=g e.current_size=y elseif e.iterations>=flr(t*1/3)do e.current_color=_ e.current_size=x end if(time()>e.local_particle_timer or e.iterations>t)del(n,e)
end end local function t()for e in all(n)do circfill(e.x,e.y,e.current_size,e.current_color)end end return{update=e,draw=t,particles=n}end function か()for e in all(q)do e.update()if(#e.particles==0or stat(0)>1200or ゛)del(q,e)
end end function せ()for e in all(q)do e.draw()end end function a(e,n,t,d,f,l,i,o,h,r,a,u,s,c,w,p,_,g,b,x,y)add(q,ょ(e,n,t,d,f,l,i,o,h,r,a,u,s,c,w,p,_,g,b,x,y))end function き()if(not e.is_god)や()し()を()
if(e.is_dead==false and e.is_boxed==false)て()と()ね()に()ぬ()ひ()ま()K()
if(not e.is_god)わ()ふ()ろ()
む()end function け()ん()if(not e.is_dead)Y()
ア()end function ア()if stat(28,5)or d.sv or d.nm do d.sv=false if(e.plr_has_ckpt)mset(e.ckpt_x,e.ckpt_y,24)
イ()if(e.plr_has_ckpt)mset(e.ckpt_x,e.ckpt_y,63)
if(btn(5)or d.nm)d.nm=false ウ(17)
end end function イ()cstore(4096,4096,4096)cstore(8192,8192,4096)end function ウ(e)local n,t=_,g for n=0,n-1do mset(n,0,e)mset(n,t-1,e)end for t=0,t-1do mset(0,t,e)mset(n-1,t,e)end for e=1,n-2do for n=1,t-2do mset(e,n,16)end end end function さ()if stat(28,18)do if not I do if(not d.menu_on)d.menu_on=true else d.menu_on=false
I=true end return elseif stat(28,6)do if not H do if(d.at~=4)d.at=4else d.at=nil
H=true end return elseif stat(28,12)do if not G do if(d.at~=0)d.at=0else d.at=nil
G=true end return elseif stat(28,10)or d.gd do d.gd=false if not e.is_dead do if time()-e.is_god_timer>.3do if(e.is_god)e.is_god=false else e.is_god=true e.is_boxed=false e.current_a_t="none"
e.is_god_timer=time()end end return end G=false H=false I=false end function ち(n,t)local l,f,i=stat(34)==1,flr(stat(32)/8),flr(stat(33)/8)rectfill(n,t+120,n+128,t+119,5)rectfill(n,t+120,n+128,t+128,0)if(d.menu_on==false)spr(29,n+120,t+120,1,1)else d.at=nil d.mm=false spr(45,n+120,t+120,1,1)
if(f==15and i==15)if(l and not p)d.menu_on=not d.menu_on
if d.menu_on do local e=0for d=61,125,16do spr(d,n+e,t+120,1,1)e+=8end for e=0,4do if(f==e and i==15and stat(34)>0)d.menu_on=false d.at=e e+=1p=l
end end if d.at==0do local e,o,r,h=0,16,0,0if l and not p do if f==13and i==15do if(d.bag<6)d.bag+=1else d.bag=0
elseif f==14and i==15do if(d.bag>0)d.bag-=1else d.bag=6
end end for e=0,d.bag do o+=16r=o+12h=o end for d=o,r,1do spr(d-16,n+e,t+120,1,1)e+=8end for d=30,31do spr(d,n+e,t+120,1,1)e+=8end if l and not p do for e=0,12do if(f==e and i==15)m=f+h-16break
end end for e=0,9do if(stat(28,e+30))m=e+h-16
end for e=10,12do if(stat(28,e+3))m=e+h-16
end end if(d.at==1)d.at=nil if(d.gd)d.gd=false else d.gd=true
if d.at==2do if(stat(34)==2)d.nm=true else d.sv=true
d.at=nil end if(d.at==3)d.at=nil if(d.mm)d.mm=false else d.mm=true
if d.at==4do local d=0palt(0,false)palt(12,true)for e=0,15,2do spr(e,n+d,t+120,1,1)d+=8end palt()if l and not p do for n=0,7do local t=2*n if(f==n and i==15)e.select_character=t break
end end end p=l end
__gfx__
cc89882cc222cccc4cccc4ccccccc870ccc777ccccccc6dcccccb3ccccccc22ec4ff99cccc9cc9c4cc9aaaccccaa700cc6cccc6cc66d202cce8eeeccccee700c
c888888228920adc24ccc24cc420a202cc7777dcc7d09e6dcccb3cccccc901822fffff9cc9ff0ffcc9aaaaaccaaaa99966888c6666280a82eaa8eeecceeeeee2
898888928882206d2044422c42220472c77777dc777d0666c9333bcc3cb990222ffffff99ffff0f49aaaaaaaaaaaaa0962888826cc888802889eeeeeeeeeeee2
888882228888266d0402420ccc442402c6777d0c777776669029999cb33999882f09fff09fff9ffc9aaaaaaaaaaaaa996682888dc8888802e8eeeeeeeeeeeee2
2822220c988820ad240a20accc42a242c60d709c7777d9668019990ccb3998882f009f00fff90f449aaaaaaaaaaa0009d6208802c8820a82007eeee7e8eeeee2
222060ac8888220d44224428cc400242660966e6c77700ed82889012cc32188224fff0f9fff00f4c9970aa979aaa7009880a88a0c8882082e00eeee08a9e7002
cd0a66dcc89882dcc2440707c404442cd6e6666dcc76666d22888282cc900222c244fffc4ffff42c99009090c9aaa9992288008266266822200eeee0ea880002
ccddddcccc8822cccc22222c422024cccdd666dcccccc6dcc228822cccc9882cccc4c4c4c22222ccc999999ccc99999cc222222cc666d82cc222222cce8e0e2c
001100106666666500000000000000000000000000000000000000000000000000dddd007676d6dd000000007500000000000057001001000000000000000000
1000000065dddd550000444000044000044400000444444000000000000000000d0000d050d50d0500000000605000000000050601d11d100000000000000000
000000016dddddd50044a940004a940004aa940004aa99200004400000000000d00d500505505550000000007d500000000005d71d1dd1510007d00000777d00
000000016dddddd504aa9920004a940004a9994004a99940004a940002000020d0d005010000000000000000605000000000050601d015100007d00000777d00
100000006dddddd50499994004a9994004999940004994000049920002400240105001050000000000000000d500000000000d5d01511d1000777d000007d000
100000006dddddd50024992004999920049942000049920000022000024002405001500100000000055055506d500000000005d61d15d15100777d000007d000
00000001d5dddd55000022200424222002420000000420000000000014441444050000500000000050d50d05d05000000000050d015115100000000000000000
010011005555555500000000000000000000000000000000000000002222222200551500000000007676d6ddd50000000000000d001001000000000000000000
0aa9a9400aa9a9400aa9a9400aa9a9400aa9a9401699999117999971199999610991199007999970cccccccc8888888800aaaa00005005000000000000000000
a0000009a0000009a0000009a0000009a00000097999769969999996996799979999999979999997cccccccc888888880a0000a0016556100000000000020000
90009904900a900490a9000490a99404900440049997699999977999999679999699996999966999cccccccc88888888a00a9009565765d50002200000402200
40a99404400990044099940440999204404a94049976999199766799199967999769967999677699cccccccc88888888a0a7790405701d500022820000220200
90949404909944049094420490094004904992049976999197699679199967999976679999677699cccccccc888888884097740905d116500022220000402400
20004202202442022042000220042002200220029997699996999969999679999997799999966999cccccccc8888888890049004565d65d50002200000220200
40000004400000044000000440000004400000047999769999999999996799976999999679999997cccccccc888888880900009001d55d100000000000002000
02222220022222200222222002222220022222201699999119911991199999611799997117999971cccccccc8888888800994900005005000000000000000000
cc7ccccc67777777442444441bb33bbbffff9fff4aa99aaa8110881280888080776777760eeeeeee7ffffff97676d6dd666d516d000000000000000000bbbb00
c7777ccc77777777422224443b33333bfffff9ff9a99999a220821222888828876767777eeeeeeeef7ffff946d0110556ddd15dd04444420000000000b0000b0
cc77cccc777c777744224444333433339fffffff999f99998222822888828228777777774eeee444ff99994471700d1dddd515d50444442000033000b00b3003
cccc7cccccccc77c4444244444444334f99ffffff9ff999f2821210288212112aa7777aa99444999ff9999446007600555551151014994100033b300b0b00301
cccccccccccccccc4444444444424444ff99fff9ff9ff99f101218101202120177aaaa7779999797ff99994461055d1d1111666d041111200033330010300103
cccccc7cc7cccccc4444442442442244fff9fffffff9ff9f21018128211021287777a67777977777ff999944d65005d56516dddd024444200003300030013001
cc7cccccccccc7cc4424444444442444fffff9fff9fffff912181221022812217777676777aaaa77f42222246501105ddd5ddddd002222000000000003000030
cccccccccccc7ccc4444444224444442ff9fffffff9fffff0212220112128210777777766a7777aa42222222666d6ddd55155d55000000000000000000331300
00777700007777000077770000777700007777000077770000777700007777000077770000777700007777000077770000777700000000000000000077000000
0700007007111170072222700733337007444470075555700766667007777770078888700799997007aaaa7007bbbb7007cccc7000777700000000006d000000
700000077111111772222227733333377444444775555557766666677777777778888887799999977aaaaaa77bbbbbb77cccccc7077997700001100000500000
700000077111111772222227733333377444444775555557766666677777777778888887799999977aaaaaa77bbbbbb77cccccc7079aa9700011c10000000000
700000077111111772222227733333377444444775555557766666677777777778888887799999977aaaaaa77bbbbbb77cccccc7070aa0700011110000000000
700000077111111772222227733333377444444775555557766666677777777778888887799999977aaaaaa77bbbbbb77cccccc7077997700001100000000000
0700007007111170072222700733337007444470075555700766667007777770078888700799997007aaaa7007bbbb7007cccc70007777000000000000000000
00777700007777000077770000777700007777000077770000777700007777000077770000777700007777000077770000777700000000000000000000000000
00000000a0a900000000000000000000340204009204040082040200000000000000400000000000000000000bb0bb31767666660000000000000000cccccccc
000000000a94aa00000000000000000003200023092000290820004800000000000009000000000000000000b1b30b0b6555555d0067766000000000cccccccc
00000000aa49900000000000000006d0040404020404020204040208000000000900090000000000000000001b03b1b1606d0606007010d000044000cccccccc
0c000000099300003000000000066660400340004009200020084000000087800f90f9400700070000000000b30b13136060060d0061016000449400cccccccc
c70000c0000300000b0000b000d666670234020402940204048204020cc0888740f4f94007ee87000007aaa0b13103b060d00d0d006010d000444400caccaccc
00c0307c000030b0030b00030d66667d404000204020004040200040cc0109864ff9f94f0e8e8820007aaaa01b0b3131d0d0dd0d00676d5000044000c9acacac
30300300303b03033300b3035dd677dd000204330004049900020288c902198849f9fff9008802201090a900b3b013036555555d0055550000000000c9a99aac
0333c033030330333033303355dd5dd54020404340402049204040281f929912f9fff9f9182222211199999113130130dddddddd0000000000000000cc9999cc
ee0ee0eebb0bb0bbcc0cc0ccaa0aa0aa77077077990880ff020220200303303001011010040440400505505004022040a9a999990000000000000000cccccccc
e1111112b1111113c111111da11111197111111d9412214f220000223300003311000011440000445500005544000044922222240007c00000000000cccccaac
01eeee1001bbbb1001cccc1001aaaa1001777710017777100000000000000000000000000000000000000000000000009094090900ccba0000055000cccccca9
e1e0021eb1b0031bc1c00d1ca1a0091a71700d16a470072e20022002300330031001100140044004500550054005500290900904033cc3c000550500ccccaa99
e1e00212b1b00313c1c00d1da1a0091971700d1da470072e2002200230033003100110014004400450055005400550029040040403b3cb3000555500cccccc99
012222100133331001dddd100199991001dddd10017777100000000000000000000000000000000000000000000000004040440400cccc0000055000cccccaa9
e111111eb111111bc111111ca111111a71111116b311115d22000022330000331100001144000044550000553300005592222224000c700000000000cccca99c
220e2022330b3033dd0cd0dd990a9099dd06d0ddbb0cc0dd020220200303303001011010040440400505505003011050444444440000000000000000cccccccc
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000dddd0000dddd000009000000dddd000000000000aaea000000000000000000
00088000000bb000000cc000000aa00000077000000880000000000000000000071b336007a0996000a0990007228160000000000aaaaea00002200000800800
0088780000bb7b0000cc7c0000aa7a000077070000967f000000000000000000063313600699096000990900061888600a00a0000aaaaaa00045d40000088000
0088820000bbb30000cccd0000aaa9000077760000b66e000000a0000000000006b13b6006a09a6000a09a000621826009a0a0a0001aa1000035520000088000
0002200000033000000dd0000009900000066000000cc0000000a900000000000633b36006990960009909700688186009a99aa0091991900001100000800800
000000000000000000000000000000000000000000000000000999000000000000555500005555000000977700555500089c9ba0009999000000000000000000
00000000000000000000000000000000000000000000000000009000822882220000000000000000000000700000000000666600000000000000000000000000
b3b3b3b3b3b3b3b3b37101b301010101710101030303030303030301010101232301019601230101010101012323010101012323232323238223010101414141
0101010101010101014141730143244343434343430101010171017101010101010101010101710171a371017101710171017101710171017101710171017101
b3b3b3b334b3b301010101017101010171010116711603030303010101c60123232515c205550101010101257523410101010123232323234423010101014141
0101010101010101010101010143434343434343430101017101710171010101010101010101017101a3111111c3c3c31111c311c311111111c3c311c3c31111
b51134c517c501017101010101010101010101011671011601010101010101012333333333333305010101333323414101010101452323232323710101010141
410101010101010101730101014343434343434343010171017101a301710101010101010101010171a3c3c3c3c3c301c355c301c355c301c301c355c355c3c3
b51132c5a1c571010171010171010171010171017116710516010101010101052523230123232333010101232333333301010101012323232323710101710101
410101010101010101010101014343434301b54343227101710101a371010101017101710171017101a311c3c3c301010155010101010101010101010155c3c3
b525010181c5017101010101010171010101010125b513131305010101c6013333332333c7232323010101232323230101010101012323232363717101710101
010101010101010101010101014343434385b54343a70101010101a301010101710171017101710171a3c3c3c3550101015501010101010101010101015501c3
b516052501010101017101710101010171012501b5b5b50303130101010101232323232333232323016201232323010101010101012323232323737171710171
017301710101017101010171014343435353535343010101010101a3010101010171939393939393939393930155010101010101010101010155010101010101
b51616161501017101010101017101710501b505b5b5b50303030101010101232323232323232323010101232323717171710101412323232363737371717171
01710171017101710171017101434343434343434301010101010145010101017101838383838383838383010155010101010101015501010155550101010155
b516b516162501010501017101250125b505b5b5b503b5030303010101c601b5b50101b5b5012323016701a52323333333330101212323232323637373737371
717171717171717171717171715353434343434343a50101010101450101010101718383830183838383010101010101010101010155010101555501c7015555
b5b5014501162571b525712515b525b5b5b5b50125b503030303010101010101b50101b501012333333333332323232323010101212323632363637363737373
73737373737373737373737373434343934393939393a5010101014501010101710183830193838383010172010101010101010101555585015555a5a3955555
b5b50101010116b516b5b5b5b5b5b516b5014501b52503030313130101010101b5010101010101232323232323232323010101212101232363b7637363656363
6363636363636363636363637171717171717171838393250101010101010101017183839383838301010192010101010101010101a355a385a355a3a3a355a3
b50101010101014501b5b51601b501014501010101b5030303030313010101010101010101010101232323232323230101012121010101770101017363650163
63636363630163636363630101010101a701010183838393a5010101010101017101838383838301017171c671010101010101010111a311a311a311a311a311
0101010101010145010101010145010145010101010103b503030303a2a2a2a2a2a2010101012501454545452323010101212101010101737575010101650101
73636375757363636363010101010101a701010183018383930101010101010101718383838301010171c671710101010101010101c3c3c3c3c3c3c3c3c3c3c3
01c50101010101010101010101010101450101010101b50303b503032626262633a2a20101013333334545452301010101333301010101236363630101650101
63636373736363636301010101010171717171018393838383930101010171017101838383550101017171c6710101010101010101c3c3c3c3c3c3c3c311c3c3
c5c50101010101010171717101010101010101010101b5b5030313131333333323a2a2010101b5b5233333450101010101232301010101632363630101650101
636363636363636301010101010171719393710183838383838301012571257101718383015501017171c671710101010101010101c3c3c3c3c3c3c3c3c3c3c3
c5b5018101c501010161616101010101010101010101b5b5b503b5030323232323a2a2010101b501232323452501010101232301010101236323633501010101
6563636363636301010101010171719383839381523252875201010193939393939393930155010171c67171010101010101010101c3c3c3c31111c3c3c3c311
b5c5010101b501010161616101010101010101010101b582b5b501b51313132323a2a20101010101232333333301010101230101014501016363636375010101
650163636363010101010101717193838383839393939393930101018383838383838383010101017192710101010101010101010155c3c3c31111c3c3c31111
b5b5c5c5b5c5010101616161010101010101010101b5b5b5b5450101b503b52323a2a2a2a2a20101b5b523232301010101016701454501052563636363010101
6501016363630101010101717193838383838383838383838301010183838383838383830101010101c601010101010101010101015501c3c3c3c3c3c3c31111
b5c5b582b5b501010101620101010101010101010101010101450101b5b503233333333333a2a20101b523232301450101013333333333333363016501010101
6501016363630101010171719383838383838383830183838301010183258383838383830101010101010101010101010101010101a501c3c3c301c3c3c31111
b5b5b5b5b5b50101010145010101010101010101010182010101010145b5b5232323232323a2a20101b523016725454525152523232323636301010101010101
0101016375630101017171717171717171717183259383830101010183930183838383010101010101010101010101018501010101a385c3c3c31101c3c31111
b501010101b5010101014501010101010101010101616161010101014501b5010101010123a2a20101b501013333333333333333236323630101010101010101
010101637363010171710101010101010171718393838301010101018383938383835501010101010101010101010101c60101010111111111c3c3c3c3c3c3c3
010101010101010101014501010101010101010101616161010101014501b5010701330123a2a201010101010123232323232323232363010101010101010101
0101016363630101710101010101010101017171838383717171717183838383830155010101010101010101010101019201010101c3c3c3c3c3c31111c3c3c3
010101010101010101014501010101010101010101616161010101010101b5919191230623a2a201010101010123012323232363636301010101777777770101
017701633563010171010101010101010101010183839393939393938383838301015501010101010171710101010101c601010101c3c3c3c3c3c3c311c3c3c3
c5c5c5010101010101014501010101010101010101717171010101010101b501010123a2a2a2a2a2a2a2a20101b501b363230101018101010177737373738282
8273016373630101010101010101010101010101838383838383838383838301010101010101010101c67101010101019201010101c3c3c3c3c3c3c3c3c3c3c3
c562b5010101010101717171010101010101010101014501010101010101b50101012333333333333333a2a20101010601630101017301010173636363636161
616362636363010101010101717171010101010183838383830101550101550101010101010101010101010101010101c6010101015501c3c3c301c3c3c30155
b5b5b5010101010101616161010101717171010101014501010101010101010101012323012301012323a2a20101010601010101016301010163636363116161
6173316301630101010101017373730101010101838383830101010101015501010101850101010101010101010101018501010101550101c38511c3c3010155
b5b5b501010101010161616101010171c57171010101450101010101010101010101230101a2a2a2a2a2a2a2a2a2a20675950101356301010163636363636161
6163316373630101010101016363630101010101010101810101010101015501010101c6010101010101010101850101c601010101010101c311c3c3c3010195
c5b5b571710101010161616101010171b5c5717101014501010101010101620101014501a2a2339133333333333333b373737373736301010163636301636161
616331636363010101010101637563010101010101010173730101010101010101010101010101010101010101c601010101010101a30195c3c311c3c3a585a3
b5b5b5b5717101010101620101017171b5b5c57101014501010101010101010101014501a2a22301232323232323236363636363636371927163637573636161
616331636363010101010101637363010101010101017363630101c601010101010101010101010101010101010101010101010101111111c3c31111c3111111
b5b5b5b5c571710101010101017171b5b5b5b57171717171717171010101010101010101a2a22391232323232363636373016363636331313163637363636161
616331636301010101010101636363010101010175736363630101010101010101010101010101010101010101010101010101010111c3c3c3111111c3c3c3c3
b5c5b5c5c5c57171010101017171b5b5b5b5b5b5b5c5b5c5c5c501010101010101010101a2a22327232323232363636363736363636331313131636363633131
3131316371717171717171716363630101010101736363636301010101010101010101010101010101010101010101010101010101c3c3c3c31111c3c3c31111
b5b5b5b5b5b5c5717171717171b5b5b5b5b5b5b5b5b5b5b5b5b5a2a2a2a2a2a2a2a2a2a2a2a28601232323232363636363636363633131313131316363630101
0101016373737373637363636363637171717171636363636371717171717171717171717171717171717171717171717171717171c3c3c3c3c3c3c3c3c31111
b5b5b5b5b5b5b5c5b5c5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5232323232323636363636363232323232323232363777777
777777636363636363636363636363737373737363636363631111111111111111111111111111111111111111111111111111111111c3111111111111111111
__label__
c7ccccccc7ccccccc7cccf99fffff40044004f99fffff00000000f99fffff0000000100000001000000010000000140092000000000010000000100000001000
cccccccccccccccccccccff99fff940044004ff99fff900000000ff99fff91000000010000000100000001000000002940204100000001000000010000000100
ccc7ccccccc7ccccccc7cfff9ffff00000000fff9ffff05505550fff9ffff1000000010000000100000001000000040200040100000001000000010000000100
ccccccc7ccccccc7cccccfffff9ff44000044fffff9ff50d50d05fffff9ff0000000100000001000000010000000100040499000000010000000100000001000
cccccccccccccccccccccff9fffff04044040ff9fffff7676d6ddff9fffff0100110001001100010011000100110040402049010011000100110001001100010
ccccccc7ccccc0011001000110010001100100011001000110010ffff9fff00110010001100100bb0bb310011001000110010001100100011001000110010001
77cccc7777ccc1000000010000000100000001000000010000000fffff9ff1000000010000000b1b30b0b1000000010000000100000001000000010000000100
7cccccc77cccc00000001000000010000000100000001000000019fffffff00000001000000011b03b1b10000000100000001000000010000000100000001000
c7ccccccc7ccc0000000100000001000000010000000100000001f99fffff0000000100000001b30b13130000000100000001000000010000000100000001000
ccccccccccccc1000000010000000100000001000000010000000ff99fff91000000010000000b13103b01000000010000000100000001000000010000000100
ccc7ccccccc7c1000000010000000100000001000000010000000fff9ffff10000000100000001b0b31311000000010000000100000001000000010000000100
ccccccc7ccccc0000000100000001000000010000000100000001fffff9ff0000000100000001b3b013030000000100000001000000010000000100000001000
ccccccccccccc0100110001001100010011000100110001001100ff9fffff0100110001001100131301300100110001001100010011000100110001001100010
ccccc00110010001100100011001000110010001100100011001000110010001100100bb0bb310bb0bb310bb0bb3100110010001100100011001000110010001
77ccc1000000010000000100000001000000010000000100000001000000010000000b1b30b0bb1b30b0bb1b30b0b10000000100000001000000010000000100
7cccc00000001000000010000000100000001000000010000000100000001000000011b03b1b11b03b1b11b03b1b100000001000000010000000100000001000
c7ccc0000000100000001000000010000000100000001000000010000000100000001b30b1313b30b1313b30b131300000001000000010000000100000001000
ccccc1000000010000000100000001000000010000000100000001000000010000000b13103b0b13103b0b13103b010000000100000001000000010000000100
ccc7c10000000100000001000000010000000100000001000000010000000100000001b0b31311b0b31311b0b313110000000100000001000000010000000100
ccccc0000000100000001000000010000000100000001000000010000000100000001b3b01303b3b01303b3b0130300000001000000010000000100000001000
ccccc010011000100110001001100010011000100110001001100010011000100110013130130131301301313013001001100010011000100110001001100010
1001000110010001100100011001000000000001100100011001000110010001100100bb0bb310bb0bb310bb0bb3100110010001100100011001000110010001
000001000000010000000100000000000000010000000100000001000000010000000b1b30b0bb1b30b0bb1b30b0b10000000100000001000000010000000100
0000100000001000000010000000100000000000000010000000100000001000000011b03b1b11b03b1b11b03b1b100000001000000010000000100000001000
000010000000100000001000000010000000000000001000000010000000100000001b30b1313b30b1313b30b131300000001000000010000000100000001000
000001000000010000000100000000007aaa010000000100000001000000010000000b13103b0b13103b0b13103b010000000100000001000000010000000100
00000100000001000000010000000007aaaa0100000001000000010000000100000001b0b31311b0b31311b0b313110000000100000001000000010000000100
000010000000100000001000000011090a90000000001000000010000000100000001b3b01303b3b01303b3b0130300000001000000010000000100000001000
01100010011000100110001001100119999910100110001001100010011000100110013130130131301301313013001001100010011000100110001001100010
100100011001000110010001100101bb33bbb000000000011001000110010001100100bb0bb310bb0bb310bb0bb3100110010001100100011001000110010000
000001000000010000000100000003b33333b00000000100000001000000010000000b1b30b0bb1b30b0bb1b30b0b10000000100000001000000010000000000
0000100000001000000010000000133343333000000000000000100000001000000011b03b1b11b03b1b11b03b1b100000001000000010000000100000001000
000010000000100000001000000014444433430000000000000010000000100000001b30b1313b30b1313b30b131300000001000000010000000100000001000
00000100000001000000010000000444244440b0000b0100000001000000010000000b13103b0b13103b0b13103b01000000010000000100000001000000000d
0000010000000100000001000000042442244030b00031000000010000000100000001b0b31311b0b31311b0b3131100000001000000010000000100000000d6
00001000000010000000100000001444424443300b303000000010000000100000001b3b01303b3b01303b3b01303000000010000000100000001000000015dd
0110001001100010011000100110024444442303330330100110001001100010011001313013013130130131301300100110001001100010011000100110055d
0000000110010a9a9999900110010442444441bb33bbb001100100011001000110010001100104424444400110010001100100011001000110010001100101bb
00000100000009222222410000000422224443b33333b100000001000000010000000100000004222244410000000100000001000000010000000100000003b3
00000000000019094090900000001442244443334333300000001000000010000000100000001442244440000000100000001000000010000000100000001333
00000000000019090090400000001444424444444433400000001000000010000000100000001444424440000000100000001000000010000000100000001444
000c0100000009040040410000000444444444442444410000000100000001000000010000000444444441000000010000000100000001000000010000000444
0307c100000004040440410000000444444244244224410000000100000001000000010000000444444241000000010000000100000001000000010000000424
00300000000019222222400000001442444444444244400000001000000010000000100000001442444440000000100000001000000010000000100000001444
3c033010011004444444401001100444444422444444201001100010011000100110001001100444444420100110001001100010011000100110001001100244
77777001100100011001000110010442444444424444400110010001100100011001000110010442444440011001000110010111111110011001000110010442
77777100000001000000010000000422224444222244410000000100000001000000010000000422224441000000010000000100000011000000010000000422
c7777000000010000000100000001442244444422444400000001000000010000000100000001442244440000000100000001100000010000000100000001442
cc77c000000010000000100000001444424444444244400000001000000010000000100000001444424440000000100000001100000010000000100000001444
ccccc100000001000000010000000444444444444444410000000100000001000000010000000444444441000000010000000100000011000000010000000444
ccccc100000001000000010000000444444244444442410000000100000001000000010000000444444241000000010000000100770011000000010000000444
cc7cc0000000100000001000000014424444444244444000000010000000100000001000000014424444400000001000000011006d0010000000100000001442
c7ccc010011000100110001001100444444424444444201001100010011000100110001001100444444420100110001001100111115110100110001001100444
10010001100100011001000110010442444444424444400110010001100100404404000110010442444440011001000110010001100100011001000110010001
00000100000001000000010000000422224444222244410000000100000004400004410000000422224441000000010000000100000001000000010000000100
00001000000010000000100000001442244444422444400000001000000010000000000000001442244440000000100000001000000010000000100000001000
00001000000010000000100000001444424444444244400000001000000014004400400000001444424440000000100000001000000010000000100000001000
00000100000001000000010000000444444444444444410000000100000004004400410000000444444441000000010000000100000001000000010000000100
00000100000001000000010000000444444244444442410000000100000000000000010000000444444241000000010000000100000001000000010000000100
00001000000010000000100000001442444444424444400000001000000014400004400000001442444440000000100000001000000010000000100000001000
01100010011000100110001001100444444424444444201001100010011000404404001001100444444420100110001001100010011000100110001001100010
1001000110010a9a9999900110010442444444424444400000000a0a900000089882000000000920404000011001000110010001100100011001000110010000
000001000000092222224100000004222244442222444000000000a94aa000888888200000000092000291000000010000000100000001000000010000000000
00001000000019094090900000001442244444422444400000000aa4990008988889200000000040402020000000100000001000000010000000100000001000
0000100000001909009040000000144442444444424443000000009930000888882220c000000400920000000000100000001000000010000000100000001300
0000010000000904004041000000044444444444444440b0000b00003000028222209c70000c00294020410000000100000001000000010000000100000000b0
000001000000040404404100000004444442444444424030b0003000030b0222060a400c0307c402000401000000010000000100000001000000010000000030
0000100000001922222240000000144244444442444443300b303303b03030d0a66d030300300000404990000000100000001000000010000000100000001330
011000100110044444444010011004444444244444442303330330303303300dddd000333c033404020490100110001001100010011000100110001001100303
1001000110010001100100011001000110010442444441bb33bbb1bb33bbb1bb33bbb1bb33bbb1bb33bbb1bb33bbb000000000011001000110010001100101bb
0000010000000100000001000000010000000422224443b33333b3b33333b3b33333b3b33333b3b33333b3b33333b000000001000000010000000100000003b3
00001000000010000000100000001000000014422444433343333333433333334333333343333333433333334333300000000000000010000000100000001333
0000100000001000000010000000100000001444424444444433444444334444443344444433444444334444443340c000000000000010000000100000001444
000001000000010000000100000001000000044444444444244444442444444424444444244444442444444424444c70000c0100000001000000010000000444
00000100000001000000010000000100000004444442442442244424422444244224442442244424422444244224400c0307c100000001000000010000000424
00001000000010000000100000001000000014424444444442444444424444444244444442444444424444444244430300300000000010000000100000001444
0110001001100010011000100110001001100444444422444444224444442244444422444444224444442244444420333c033010011000100110001001100244
1001000110010001100100011001000000000000000004424444444244444001100104424444444244444442444441bb33bbb001100100011001000110010442
0000010000000100000001000000000000000000000004222244442222444100000004222244442222444422224443b33333b100000001000000010000000422
00001000000010000000100000001000000000000000044224444442244440000000144224444442244444422444433343333000000010000000100000001442
000010000000100000001000000010c0000003000000044442444444424440000000144442444444424444444244444444334000000010000000100000001444
00000100000001000000010000000c70000c00b0000b044444444444444441000000044444444444444444444444444424444100000001000000010000000444
0000010000000100000001000000000c0307c030b000344444424444444241000000044444424444444244444442442442244100000001000000010000000444
00001000000010000000100000001303003003300b30344244444442444440000000144244444442444444424444444442444000000010000000100000001442
011000100110001001100010011000333c0333033303344444442444444420100110044444442444444424444444224444442010011000100110001001100444
1001000110010a9a99999001100101bb33bbb1bb33bbb1bb33bbb442444441bb33bbb00000000442444444424444444244444001100100011001000110010442
000001000000092222224100000003b33333b3b33333b3b33333b422224443b33333b00000000422224444222244442222444100000001000000010000000422
00001000000019094090900000001333433333334333333343333442244443334333300000000442244444422444444224444000000010000000100000001442
0000100000001909009040000000144444334444443344444433444442444444443340a00a000444424444444244444442444000000010000000100000001444
00000100000009040040410000000444244444442444444424444444444444442444409a0a0a0444444444444444444444444100000001000000010000000444
00000100000004040440410000000424422444244224442442244444444244244224409a99aa0444444244444442444444424100000001000000010000000444
000010000000192222224000000014444244444442444444424444424444444442444089c9ba0442444444424444444244444000000010000000100000001442
01100010011004444444401001100244444422444444224444442444444422444444200666600444444424444444244444442010011000100110001001100444
1001000110010001100100011001044244444442444444424444444244444442444441bb33bbb442444444424444444244444001100101799997100110010442
0000010000000100000001000000042222444422224444222244442222444422224443b33333b422224444222244442222444100000006999999610000000422
00001000000010000000100000001442244444422444444224444442244444422444433343333442244444422444444224444000000019997799900000001442
00001000000010000000100000001444424444444244444442444444424444444244444444334444424444444244444442444000000019976679900000001444
00000100000001000000010000000444444444444444444444444444444444444444444424444444444444444444444444444100000009769967910000000444
00000100000001000000010000000444444244444442444444424444444244444442442442244444444244444442444444424100000009699996910000000444
00001000000010000000100000001442444444424444444244444442444444424444444442444442444444424444444244444000000019999799900000001442
01100010011000100110001001100444444424444444244444442444444424444444224444442444444424444444244444442010011001991199101001100444
10010001100100011001000110010442444444424444444244444442444444424444444244444442444444424444444244444001100100011001000110010442
00000100000001000000010000000422224444222244442222444422224444222244442222444422224444222244442222444100000001000000010000000422
00001000000010000000100000001442244444422444444224444442244444422444444224444442244444422444444224444000000010000000100000001442
00001000000010000000100000001444424444444244444442444444424444444244444442444444424444444244444442444000000010000000100000001444
00000100000001000000010000000444444444444444444444444444444444444444444444444444444444444444444444444100000001000000010000000444
00000100000001000000010000000444444244444442444444424444444244444442444444424444444244444442444444424100000001000000010000000444
00001000000010000000100000001442444444424444444244444442444444424444444244444442444444424444444244444000000010000000100000001442
01100010011000100110001001100444444424444444244444442444444424444444244444442444444424444444244444442010011000100110001001100444
1001000110010a9a99999001100100bb0bb310bb0bb3100110010001100100bb0bb310bb0bb31001100104424444444244444001100100020000000110010000
00000100000009222222410000000b1b30b0bb1b30b0b1000000010000000b1b30b0bb1b30b0b100000004222244442222444100000000222020010000000000
000010000000190940909000000011b03b1b11b03b1b100000001000000011b03b1b11b03b1b1000000014422444444224444000000010029222000000001000
00001000000019090090400000001b30b1313b30b13130000000100000001b30b1313b30b131300000001444424444444244400000001009999a000000001000
00000100000009040040410000000b13103b0b13103b01000000010000000b13103b0b13103b01000000044444444444444441000000000099aaa10000000000
000001000000040404404100000001b0b31311b0b313110000000100000001b0b31311b0b313110000000444444244444442410000000000999aaa0000000007
00001000000019222222400000001b3b01303b3b013030000000100000001b3b01303b3b0130300000001442444444424444400000001009999aaa0000001109
01100010011004444444401001100131301301313013001001100010011001313013013130130010011004444444244444442010011000009900a01001100119
10010001100100011001000110010001100100bb0bb3100110010001100100bb0bb310011001000110010442444441bb33bbb1bb33bbb1bb33bbb1bb33bbb1bb
0000010000000100000001000000010000000b1b30b0b1000000010000000b1b30b0b1000000010000000422224443b33333b3b33333b3b33333b3b33333b3b3
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500500
0444442000777700006776600007c00000aaea000000000000000000000000000000000000000000000000000000000000000000000000000000000001655610
0444442007799770007010d000ccba000aaaaea000000000000000000000000000000000000000000000000000000000000000000000000000000000565765d5
01499410079aa97000610160033cc3c00aaaaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000005701d50
04111120070aa070006010d003b3cb30001aa1000000000000000000000000000000000000000000000000000000000000000000000000000000000005d11650
024444200779977000676d5000cccc000919919000000000000000000000000000000000000000000000000000000000000000000000000000000000565d65d5
002222000077770000555500000c7000009999000000000000000000000000000000000000000000000000000000000000000000000000000000000001d55d10
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500500

__gff__
00000000000000000000000000000000000102030405060c0d151515150000000708090a0b0e0f1011121a1b1800161d0101010101010101010101010100160d13131313131313131313131313001601000000000000000000000001010016000101010101011717171717171f0016001616161616160c0c141c1d1e19001600
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
383939101010103939393839383838113c3c113c11112b2b2b11113c3c3c3c3c3c3c111111111111111111113c3c3c3c3c3c343434343434343434343434343434281010343434343434343434343434341056103434343431313131313110101010101010101031313030303032323232333233333333331717171717171717
3838101010101010383838383838113c3c3c3c3c3c2b2b2b2b3c3c1079103c3c3c3c3c16161616161616161616161616161616343434345a343434343434343434281010343434345858583434344234341056103434343434303030301010101010101010101030303030313131323232323232323232171717171717171717
381010101010101010383838383c3c3c3c3c573c3c2b2b2b2b3c3c1a11193c3c103c3c13131311113c3c11113c3c3c111111183434343435583434343434343434281010103434343535353434342834341056103410343430303030101010101010101010101030303030303030141414141414141416101610161212121212
381010101010101010103838383c3c3c3c3c11593c2b2b2b2b3c3c183c103c3c113c3c1010101010103c3c3c3c3c3c3c3c3c103434343434353434343434343410281010101234343434343434341627101056103435343434303010101010101010101010101010303030303014141414141414141416101610161212121212
1010101010101010101038383c3c3c3c3c3c3c113c2b2b2b2b3c3c1010103c3c3c3c10101010101010103c3c3c103c3c3c3c1a3410161016101610161016101610281010101212343434345858343434101056103434343430303010101010101010101010101010103030303014141414141414141417171717161212121212
1010101010171010101038383c3c3c3c2b2b2b2b2b2b2b2b2b2b3c2b2b2b3c3c3c101010101010101010103c10103c3c3c3c16161016101610161016101610161028101010121212343434353534343410105610343434343430301010101c1010101c1010101010101030303014141414141414141717171717121212121212
17101010103917101010383838113c3c77101010101010101010111010103c3c101010103c1010101010103c10101012143c111010161016101610161016101610281610101212121234343434343434101056101034343430303010101010101010101010101010101010303014141414141414171717171712121212121212
39101017173839171710383839113c11111010101010101010103c2b2b2b3c1111101010101010101010101610101011193c3c1717171717171010161016101610281616101712121212343434343434101056101010343434303010101010101010101010101010101010103014141414141417171717171212121212121212
387a7a39393838393910383838103c3c3c102b10102b2b1010103c1010103c3c5a101010101010101010101110101010103c3c111111111111101016101610161028161616171712121212343434343410105610101010543030301010101b101010101010101010101010103014141414141417171717171212121212121212
3810101038383838101038383810103c3c102b10102b2b1010103c2b2b2b3c1111101010101010101010103c10101010103c3c3c3c141414141010161016101610171016161617171212121234343434101056101010105430301010101010101010101010101b10101010103014141414141417171717171212121212121212
3810101010101038521038103910101810102b10102b2b101010111010103c3c17101010101010101010101110101010583c3c3c3c141414141010161016101710171017161616171712121212343434101070101010105430101010101010101017171710101010101010103014311717171717171717171212121212121212
3810101010391039391038103810101010102b10592b2b2b10103c1010103c3c3c171010171010101010103c10101010111111503c141414141010161017101710171017101616161717121212123434101066101010105430171717171717171c10311010101010101010101c18301414141416101610161212121212121212
10101010103810383810101039101119112b2b2b3c3c2b2b2b2b2b2b2b2b3c3c111117175b17101010101016101010103c3c3c113c141711111010171717101710171017101016161617121212121212101010101010105431313131313131101b10301010101010101010103131301414141416101610161212121212121212
10101010103979383839521023103c783c3c2b2b3c3c3c2b2b2b2b2b2b2b3c3c3c3c3c175b1710101010103c10101010103c3c3c3c141427101010161717101710171017101010161616121212121212121212141010105430303030303030101c10301010101010101b10103030301414141416171717173333333333333333
10101010103828381038393931313c74313c3c2b3c3c311710171017103c3c11593c11175b171010101010161010101010103c3c3c111111101010161017171717171717101010101616121212121235353535101010105410101010303030101b10301717171710101010103030301414141414171717173232323232323232
1717171717381a383938383830303021303c3c3c3c31301017101710173c3c3c113c3c35353558101010103c1010101010103c1010101010101010161016101610353535101010101016121212121034343434101010105410101010103030101c10303131311010101010103030301414141414141717171732323232323232
393939393938183838383838303030463031303131301010101010103c313131313c3c3434343510171010101010101010103c1010101017171010161016101610341034101010101010101010101034343434101010105410101010103030101b10303030301010101010103030301414141414141417171717171717323232
383838383b3b293b3b3b5c3830301130303030303010101010101010103030303c3c3c34341034175b17101010171010101016101010175b171010101016101610343534171717171717171717171734343434101010105410101010103030101010303030301010101010103030301414141414141414171717171717325232
5c385c3b3b29292929293b5c303046111010103010101010101010101010303030313134343534175b171010175b1710101011101010175b171010101010103510343435353535353535353535353535343410101010107110101010103030101010303030301717171717173030301414141414141414161016101610323332
5c5c3b3b292929291729173b3b306a101010101010311010101010105050303030303031343434175b171058175b1758581010101010175b171717171717173418343410341616161616161616161634341010101010106710171717103030101810303030303131313131313130301414141414141414161016101610323232
5c172929292929291c6c29293031311010101010103031101010103131313030303434103434353535353535353535353535353519191935353535353535353416103435341313131335353535351034345810101010101010103510103030191919303030303030303030303030301414141414141414161016101610323232
5c17291729293b29172917293030301050311010103030101010103030303430343434351034343434343434343434343434343410101034343434343434343434103410341012121010343434341034343535101010101010103410101010101010303030503030303030103030301414141414141414161016101610323232
3b296c1b29292929292929292917301031301017103030101050103034343430344a34343534343434343434343434341010101710181034443434343434343434103435341014141010343410342834343434101010101010103410101010101010303030311030303030313030333333333333333333171717171710321032
3b172917293b29293b17292929313117103017101730301010311030353434343473343434343434343410343410551010101017106410341a343410101034341010343434101212101034341034182525252525252525252525341010105010505030303030313030303030282828281010103232323233333333331a323332
3b2929292917292929292929292930101730101010101010103010303035344a347834341010105510101055101010101010101752521018103410101010101010143434101014141010343435342835353535353535353535353410101031313131313030303030303030302828282810101054323232103232523279323232
3b293b2929292929292929291710301710101010101010101030103030303469341a341010101055101010101010101010101033333333336433101010101010141410101010121210103434343427602770173434103410343434721010103030303030303017105410107a2828282810101054103232333232333228323232
3b2929292929293b29292929381a30313110101010501010101010303010101010103410105b101010101010101010101710103232323232703210101010101414101010101014141010343434346635351717343435343534343468101010103030303030171010541010103a3a3a3a10101054101010545410101018323232
3b38292929292929293b29293b18173030311010103131101010103010101010101010105b5b5b1010101010101010103310693232323232713210101010141410101010101014141010343434342761277117343434343434341010101010103030303017101010101710101010101010101010101010541010101010103232
3b3b292929293b29292929293b2410103030101010303010101010101010105a101010105b5b5b1010101010523333333269103232323232723210101014141410101010101014141010103434346735351717343430303030171717171717173030301710101010171017101010101010101010101010541010101010105410
3b3b172917291729172917293b38101030303110503030103110101010101033521010105b5b5b1010101053333232323210123232523232733210101014141410101010101014141410101034342762277217343430303031303031303131313030171010101017101710171010101010101010101010101010101010101010
3b3b381738173817381738173b3b1017303030313130303130505050106c1032331010101032101010101033323254101012123232331032743210101014141410101010101010141414101010346835351717343410541010141012101054541010101010101710171017101710101010101010101010101010101018101023
3b3b3b383b383b383b383b383b171010101030303030303030313131101010323210101010321010101010323232101010333333323233327b3210101014141410101010101010101414141010342834343434343410101010141012101054101010101010171017103a1017101710171017101710171017101710173a171017
__sfx__
000100001475014750137500b7500b7500a7500a7500a750067500975002750027500475002750047500275002750027200272001720017100375001710037300370000700007200072000700007200072000700
000100001975015750127500f7500f7500c7500a750087500675006750057500475004750037500375003750047500675007750087500a7500c7500e7500f7501075015750197501a7501d7501f7502175024750
000100001975015750127500f7500f7500c7500a75008750067500675005750047500475003750037500375004750067500775008750007500075000750007400073000730007200072000710007100070000700
000200000d7401073013730167501d750107000e7000b700097000670005700047000370002700007000070001700007000470005700057000770007700077000770006700057000370001700007000070000700
000100001975010750137500975005750107000e7000b700097000670005700047000370002700007000070001700007000470005700057000770007700077000770006700057000370001700007000070000700
000600001e750207502375026750297502b750307503075030750307503075030750307503075030750307502e7002e7002e7002e7002f7502f7502d7002d7002d7002d7002e7003075030750307503075030750
0000000004c5008c500bc500fc5013c500fc500dc500cc500ec5014c5019c5017c501ac501ec5026c502dc5033c5017c0015c0013c0011c000fc000dc000bc0013c0014c0000c0000c0000c0000c0000c0000c00
000a00001095010950109501095000900239001890017900169001490012900109000e9000d9000c9000b9000b9000b9001590013900119000f9000d9000b9001390014900009000090000900009000090000900
0002000025c5027c502ac502dc502dc502ac5028c5029c502ac502bc502dc502fc4031c502ec3029c202ac202bc102ec2031c2033c2034c002cc002cc002dc002ec002fc0030c0031c0000c0000c0000c0000c00
0001000000b1000b1000b1000b1000b1001b1001b1001b1001b1001b1001b1001b1001b1000b1000b1000b1000b1000b1000b1000b1001b1002b1001b1000b1000b1000b1000b1000b1000b1000b1000b1002b10
000100000161000610006100061000610006100061000610006100061000610006100061000610006100061000610006100061000610006100061000610006100061000610006100261006610016100261001610
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0020000018f5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 4a4a4b44

