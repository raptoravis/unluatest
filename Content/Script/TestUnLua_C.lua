--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"


package.cpath = package.cpath .. ";D:/dev/unluatest.git/Plugins/luasocketBin/win/x64/socket/?.dll"
-- require('socket.core')

print(package.cpath)
UE4.UKismetSystemLibrary.PrintString(UE4, package.cpath)

require("LuaPanda").start("127.0.0.1",8818)

print("LuaPanda connected")

-- local TestUnLua_C = Class()
local TestUnLua_C = Class("ParentTestUnLua_C")

--function TestUnLua_C:Initialize(Initializer)
--end

--function TestUnLua_C:UserConstructionScript()
--end

function TestUnLua_C:ReceiveBeginPlay()
    self.Super.ReceiveBeginPlay(self)

    UE4.UKismetSystemLibrary.PrintString(self,"Hello World!")

    self.Overridden.ReceiveBeginPlay(self)
end

--function TestUnLua_C:ReceiveEndPlay()
--end

-- function TestUnLua_C:ReceiveTick(DeltaSeconds)
-- end

--function TestUnLua_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function TestUnLua_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function TestUnLua_C:ReceiveActorEndOverlap(OtherActor)
--end

function TestUnLua_C:TestPrint()
    UE4.UKismetSystemLibrary.PrintString(self,"Hello Lua!")
end

return TestUnLua_C
