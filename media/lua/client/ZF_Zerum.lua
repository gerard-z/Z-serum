-- Function to inject Z-Serum to the player
function ZF_Zerum_Inject(food, player, percent)

    local bodyDamage = player:getBodyDamage(); -- return the body damage of the player

    -- for debug set to true
    local debugM = false;
    if debugM then
        print("Injection of Zerum")
        print("infection level: ")
        print(bodyDamage:getInfectionLevel())
        print("infection time: ")
        print(bodyDamage:getInfectionTime())
        print("infection Mortality Duration: ")
        print(bodyDamage:getInfectionMortalityDuration())
        print("Hours Survived: ")   
        print(player:getHoursSurvived())
    end

    local IsInfected = bodyDamage:IsInfected();
    if IsInfected == true then
        bodyDamage:setInfectionLevel(0.1); -- set the infection level to 0.1
        bodyDamage:setInfectionTime(player:getHoursSurvived()); -- restart the infection time
        bodyDamage:setInfectionMortalityDuration(player:getHoursSurvived()+24*5); -- the player will die in 5 days
        local player_ModData = player:getModData();
        player_ModData.isZerumInjected = true;
    end

    if debugM then
        print("Injection of Zerum")
        print("infection level: ")
        print(bodyDamage:getInfectionLevel())
        print("infection time: ")
        print(bodyDamage:getInfectionTime()) 
        print("infection Mortality Duration: ")
        print(bodyDamage:getInfectionMortalityDuration())
        print("Hours Survived: ")
        print(player:getHoursSurvived())
    end
end



-- Events --

-- Reduce Stress --

function ZF_Zerum_RStress()
    local player = getPlayer() -- return the player
    local bodyDamage = player:getBodyDamage(); -- return the body damage of the player
    local IsInfected = bodyDamage:IsInfected(); 
    local player_ModData = player:getModData(); -- To obtain the ModData of the player

    -- Check if the player is infected or if he has injected the Z-Serum
    if IsInfected == false or player_ModData.isZerumInjected == nil or player_ModData.isZerumInjected == false then
        player_ModData.isZerumInjected = false
        return
    end

    local player_stats = player:getStats() -- Get the stats of the player like stress, panic, etc.

    local time_after_injection = bodyDamage:getInfectionTime()
    local reduce_stress = 0.6/ ((time_after_injection+1)^0.4)
    if reduce_stress < 0.1 then
        return
    end

    local stress = player_stats:getStress() -- Get the stress of the player
    local stress_final = stress - reduce_stress
    if stress_final < 0 then
        stress_final = 0
    end
    player_stats:setStress(stress_final) -- Set the stress of the player
end

Events.EveryHours.Add(ZF_Zerum_RStress) -- Add the event to the game every hour