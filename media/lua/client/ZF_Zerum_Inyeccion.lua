function ZF_Zerum_Inyeccion(food, player, percent)

    local bodyDamage = player:getBodyDamage(); -- retorna el body con sus stats de HP del jugador

    -- si vas a debuguear coloca el siguiente valor en true
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
        bodyDamage:setInfectionLevel(0.1); -- se vuelve a setear la infeccion a 0
        bodyDamage:setInfectionTime(player:getHoursSurvived()); -- se vuelve a setear el tiempo a 0
        bodyDamage:setInfectionMortalityDuration(player:getHoursSurvived()+20*5); -- se le da 5 dias de vida al jugador
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


