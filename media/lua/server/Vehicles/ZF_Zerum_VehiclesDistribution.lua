--- Import the distributions of vehicles ---

-- Vanilla vehicles --
require "Vehicles/VehiclesDistribution" 

---------------------------------------

---  Zerum's Items  ---

-- Vanilla Vehicles --


local ZF_Zerum_VehiclesDistribution = {
    --YourItem = {
    --    {"Car1", 100},
    --    {"Car2", probability},
    --}   
    ["ZF_Zerum.ZSerum"] ={
        {"Police",       10},
        {"Ambulance",    10},
        {"Doctor",       10},
    }
}

local ZF_Vehicles_Item = next(ZF_Zerum_VehiclesDistribution, nil) -- Get the first key of the table


while ZF_Vehicles_Item ~= nil do -- item not null
    local ZF_largo = #ZF_Zerum_VehiclesDistribution[ZF_Vehicles_Item]
    local ZF_tabla= ZF_Zerum_VehiclesDistribution[ZF_Vehicles_Item]
    local ZF_indice_i = 1
    while ZF_indice_i <= ZF_largo do
        local ZF_Vehicles_Car = ZF_tabla[ZF_indice_i][1]
        local ZF_Vehicles_Probability = ZF_tabla[ZF_indice_i][2]
        ZF_indice_i = ZF_indice_i + 1

        table.insert(VehiclesDistributions.list[ ZF_Vehicles_Car ].items, ZF_Vehicles_Item)
        table.insert(VehiclesDistributions.list[ ZF_Vehicles_Car ].items, ZF_Vehicles_Probability)
    end
    ZF_Vehicles_Item = next(ZF_Zerum_VehiclesDistribution, ZF_Vehicles_Item) -- Get the next key of the table
end


-- Ver caso particular

