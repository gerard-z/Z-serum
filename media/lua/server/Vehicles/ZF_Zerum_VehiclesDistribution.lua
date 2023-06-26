--- Import the distributions of vehicles ---

-- Vanilla vehicles --
require "Vehicles/VehicleDistribution"

---------------------------------------

---  Zerum's Items  ---

-- Vanilla Vehicles --


local ZF_Zerum_VehiclesDistributions = {
    {   {"ZF_Zerum.ZSerum"},
        {"PoliceTruckBed",       20},
        {"AmbulanceTruckBed",    40},
        {"DoctorTruckBed",       40},
    }
}

local ZF_i_VehiclesDistributions = 1 -- Index of the Table
local ZF_Lenght_VehiclesDistributions = #ZF_Zerum_VehiclesDistributions -- Lenght of the Table



while ZF_i_VehiclesDistributions <= ZF_Lenght_VehiclesDistributions do -- meanwhile we are inside the table

    local ZF_table_item = ZF_Zerum_VehiclesDistributions[ZF_i_VehiclesDistributions] -- Get the table for the current item
    local ZF_length = #ZF_table_item -- Get the lenght of the table

    local ZF_Item = ZF_table_item[ZF_i_VehiclesDistributions][1] -- Get the item name

    local ZF_indice_i = 2 -- Start the index at 2, because the first value is the item name

    while ZF_indice_i <= ZF_length do -- Meanwhile we are inside the table of places, probabilities of the item

        local ZF_Place = ZF_table_item[ZF_indice_i][1] --Get the place name
        local ZF_Probability = ZF_table_item[ZF_indice_i][2] -- Get the probability    

        -- We add the item and the probability to the table
        table.insert(VehicleDistributions[ ZF_Place ].items, ZF_Item);
        table.insert(VehicleDistributions[ ZF_Place ].items, ZF_Probability);

        ZF_indice_i = ZF_indice_i + 1
    end
    ZF_i_VehiclesDistributions = ZF_i_VehiclesDistributions + 1
end


-- Ver caso particular

