-- Import the distributions tables

------  Vanilla Places  ------
-- require 'Items/Distributions'  It seems that this is not needed, as the game already has this file loaded in the SuburbsDistributions.lua file. Important, it is NOT a good practice moding through the Distribution.lua file.

require "Items/SuburbsDistributions"  
require "Items/ProceduralDistributions" 

------------------------------------------------------

---  Zerum's Items  ---

-- Procedural Distribution --

-- To add an item to a procedural distribution, you need to follow this format:

-- Example Code:
-- table.insert(ProceduralDistributions["list"][ "The_Place_Where_You_Want_It" ].items, "Item_You_Want_To_Add");
-- table.insert(ProceduralDistributions["list"][ "The_Place_Where_You_Want_It" ].items, Probability --(this param is a float!)-- );

local ZF_Zerum_ProceduralDistribution = {
    -- Object in the first value
    --Example:
    --{
    --    {"YourItem"},
    --    {"Place1", 100},
    --    {"Place2", probability},
    --    {"Place3", 0.1},
    --}
    {
        {"ZF_Zerum.ZSerum"},
        {"ArmyStorageMedical",    60},
        {"ArmySurplusBackpacks",   20},
        {"ControlRoomCounter",     20},
        {"DrugLabSupplies",       40},
        {"DrugShackDrugs",        40},
        {"DrugShackMisc",          10},
        {"FireDeptLockers",        4},
        {"HospitalLockers",        10},
        {"LockerArmyBedroom",      10},
        {"MedicalClinicDrugs",    40},
        {"MedicalStorageDrugs",   40},
        {"MorgueChemicals",        20},
        {"PoliceDesk",             10},
        {"PoliceEvidence",         10},
        {"PoliceLockers",          10},
        {"PrisonCellRandom",       10},
        {"PrisonGuardLockers",     10},
        {"SafehouseMedical",      40},
        {"SecurityLockers",        10},
        {"SpiffosKitchenFreezer",  10},
        {"StoreShelfMedical",      10},
        {"TestingLab",             10},
    }
}

local ZF_i_ProceduralDistribution = 1 -- Index of the Procedural Distribution Table
local ZF_Lenght_ProceduralDistribution = #ZF_Zerum_ProceduralDistribution -- Lenght of the Procedural Distribution Table



while ZF_i_ProceduralDistribution <= ZF_Lenght_ProceduralDistribution do -- meanwhile we are inside the table

    local ZF_table_item = ZF_Zerum_ProceduralDistribution[ZF_i_ProceduralDistribution] -- Get the table for the current item
    local ZF_length = #ZF_table_item -- Get the lenght of the table

    local ZF_Item = ZF_table_item[ZF_i_ProceduralDistribution][1] -- Get the item name

    local ZF_indice_i = 2 -- Start the index at 2, because the first value is the item name

    while ZF_indice_i <= ZF_length do -- Meanwhile we are inside the table of places, probabilities of the item

        local ZF_Place = ZF_table_item[ZF_indice_i][1] --Get the place name
        local ZF_Probability = ZF_table_item[ZF_indice_i][2] -- Get the probability
        

        -- We add the item and the probability to the table of Procedural Distributions
        table.insert(ProceduralDistributions["list"][ ZF_Place ].items, ZF_Item);
        table.insert(ProceduralDistributions["list"][ ZF_Place ].items, ZF_Probability);

        ZF_indice_i = ZF_indice_i + 1 
    end
    ZF_i_ProceduralDistribution = ZF_i_ProceduralDistribution + 1
end







-- Suburbs Distribution --
-- Generally we add here the non procedural items, like bags, etc.

local ZF_Zerum_SuburbsDistributions = {
    {
        {"ZF_Zerum.ZSerum"},
        {"Bag_DoctorBag",    20},
        {"Bag_MedicalBag",   20},
        {"Bag_Military",     40},
        {"Bag_SurvivorBag",  20},
        {"FirstAidKit",       10},
    
    }
}

local ZF_i_SuburbsDistributions = 1 -- Index of the Table
local ZF_Lenght_SuburbsDistributions = #ZF_Zerum_SuburbsDistributions -- Lenght of the Table



while ZF_i_SuburbsDistributions <= ZF_Lenght_SuburbsDistributions do -- meanwhile we are inside the table

    local ZF_table_item = ZF_Zerum_SuburbsDistributions[ZF_i_SuburbsDistributions] -- Get the table for the current item
    local ZF_length = #ZF_table_item -- Get the lenght of the table

    local ZF_Item = ZF_table_item[ZF_i_SuburbsDistributions][1] -- Get the item name
    
    local ZF_indice_i = 2 -- Start the index at 2, because the first value is the item name

    while ZF_indice_i <= ZF_length do -- Meanwhile we are inside the table of places, probabilities of the item

        local ZF_Place = ZF_table_item[ZF_indice_i][1] --Get the place name
        local ZF_Probability = ZF_table_item[ZF_indice_i][2] -- Get the probability
        

        -- We add the item and the probability to the table
        table.insert(SuburbsDistributions[ ZF_Place ].items, ZF_Item);
        table.insert(SuburbsDistributions[ ZF_Place ].items, ZF_Probability);  

        ZF_indice_i = ZF_indice_i + 1 
    end
    ZF_i_SuburbsDistributions = ZF_i_SuburbsDistributions + 1
end