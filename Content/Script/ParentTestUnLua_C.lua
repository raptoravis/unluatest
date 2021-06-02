--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

local ParentTestUnLua_C = Class()

--function ParentParentTestUnLua_CC:Initialize(Initializer)
--end

--function ParentTestUnLua_C:UserConstructionScript()
--end

function ParentTestUnLua_C:ReceiveBeginPlay()
    -- self.Super.ReceiveBeginPlay(self)

    UE4.UKismetSystemLibrary.PrintString(self,"Hello World from ParentTestUnLua_C!")

    -- should not call it here as the self is TestUnLua_C!
    -- self.Overridden.ReceiveBeginPlay(self)
end

--function ParentTestUnLua_C:ReceiveEndPlay()
--end

-- function ParentTestUnLua_C:ReceiveTick(DeltaSeconds)
-- end

--function ParentTestUnLua_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function ParentTestUnLua_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function ParentTestUnLua_C:ReceiveActorEndOverlap(OtherActor)
--end

function ParentTestUnLua_C:TestPrint()
    UE4.UKismetSystemLibrary.PrintString(self,"Hello Lua!")
end

return ParentTestUnLua_C
