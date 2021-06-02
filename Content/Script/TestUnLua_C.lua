--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

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
