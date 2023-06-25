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
    --    {"Car3", 0.1},
    --}   
}

local ZF_Vehicles_Item = next(ZF_Zerum_VehiclesDistribution, nil) -- Get the first key of the table


while ZF_Vehicles_Item do -- item not null
    for ZF_item in pairs (ZF_Zerum_VehiclesDistribution) do -- for each Car and Probability in the item
        local ZF_Vehicles_Car = ZF_item[1]
        local ZF_Vehicles_Probability = ZF_item[2]
        table.insert(VehiclesDistributions.list[ ZF_Vehicles_Car ].items, ZF_Vehicles_Item)
        table.insert(VehiclesDistributions.list[ ZF_Vehicles_Car ].items, ZF_Vehicles_Probability)
        print(ZF_Vehicles_Car, ZF_Vehicles_Item, ZF_Vehicles_Probability)
    end
    ZF_Vehicles_Item = next(ZF_Zerum_VehiclesDistribution, ZF_Vehicles_Item) -- Get the next key of the table
end

