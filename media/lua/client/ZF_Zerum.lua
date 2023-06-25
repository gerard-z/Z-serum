-- Function to inject Z-Serum to the player
function ZF_Zerum_Inject(food, player, percent)

    local bodyDamage = player:getBodyDamage(); -- return the body damage of the player

    -- for debug set to true
    local debugM = false;
    if debugM then
        print("Inyeccion de Zerum")
        print("Infeccion level: ")
        print(bodyDamage:getInfectionLevel())
        print("Infeccion time: ")
        print(bodyDamage:getInfectionTime()) 
        print("Infeccion Mortality Duration: ")
        print(bodyDamage:getInfectionMortalityDuration()) 
        print("Hours Survived: ")   
        print(player:getHoursSurvived())
    end

    local IsInfected = bodyDamage:IsInfected();
    if IsInfected == true then
        bodyDamage:setInfectionLevel(0.1); -- set the infection level to 0.1
        bodyDamage:setInfectionTime(player:getHoursSurvived()); -- restart the infection time
        bodyDamage:setInfectionMortalityDuration(player:getHoursSurvived()+20*5); -- the player will die in 5 days
    end

    if debugM then
        print("Inyeccion de Zerum")
        print("Infeccion level: ")
        print(bodyDamage:getInfectionLevel())
        print("Infeccion time: ")
        print(bodyDamage:getInfectionTime()) 
        print("Infeccion Mortality Duration: ")
        print(bodyDamage:getInfectionMortalityDuration()) 
        print("Hours Survived: ")   
        print(player:getHoursSurvived())
    end
    
end    


