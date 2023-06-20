function ZF_Zerum_Inyeccion(food, player, percent)
    
    local bodyDamage = player:getBodyDamage(); -- retorna el body con sus stats de HP del jugador

    local IsInfected = bodyDamage:IsInfected();
    if IsInfected == true then
        bodyDamage:setInfectionLevel(0); -- se vuelve a setear la infeccion a 0
        bodyDamage:setInfectionTime(bodyDamage:getHoursSurvived()); -- se vuelve a setear el tiempo de infeccion como si recien se hubiera infectado
       
        --notar que la infeccion en terminos de tiempo funciona tal que: 
        -- (Tiempo_Infectado - Tiempo_Sobrevivido) = T <-Este debe llegar a T_Death para morir!
        -- Tiempo_Estimado_A_Morir_Luego_De_Infectado = T_Death
       
        local bodyParts = bodyDamage:getBodyParts();
        for i=0, bodyParts:size()-1  do --esta linea la puse pq creo q va a permitir que se les cure
            --esa parte del cuerpo, pero sigan infectados!
            local bodyPart = bodyParts:get(i);
            bodyPart:SetInfected(false);
        end
    end
end    


