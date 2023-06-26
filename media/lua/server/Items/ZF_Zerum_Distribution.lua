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
-- table.insert(ProceduralDistributions.list["list"][ "The_Place_Where_You_Want_It" ].items, "Item_You_Want_To_Add")
-- table.insert(ProceduralDistributions.list["list"][ "The_Place_Where_You_Want_It" ].items, Probability --(this param is a float!)-- )

local ZF_Zerum_ProceduralDistribution = {
    --YourItem = {
    --    {"Place1", 100},
    --    {"Place2", probability},
    --    {"Place3", 0.1},
    --}    
    ["ZF_Zerum.ZSerum"] ={
        {"ArmyStorageMedical",    30},
        {"ArmySurplusBackpacks",   5},
        {"ControlRoomCounter",     5},
        {"DrugLabSupplies",       30},
        {"DrugShackDrugs",        10},
        {"DrugShackMisc",          5},
        {"FireDeptLockers",        1},
        {"HospitalLockers",        2},
        {"LockerArmyBedroom",      5},
        {"MedicalClinicDrugs",    30},
        {"MedicalStorageDrugs",   30},
        {"MorgueChemicals",        5},
        {"PoliceDesk",             1},
        {"PoliceEvidence",         1},
        {"PoliceLockers",          1},
        {"PrisonCellRandom",       1},
        {"PrisonGuardLockers",     1},
        {"SafehouseMedical",      20},
        {"SecurityLockers",        1},
        {"SpiffosKitchenFreezer",  1},
        {"StoreShelfMedical",      1},
        {"TestingLab",             1},
    }
}


local ZF_Procedural_Item = next(ZF_Zerum_ProceduralDistribution, nil) -- Get the first key of the table
while ZF_Procedural_Item ~= nil do -- item not null

    local ZF_largo = #ZF_Zerum_ProceduralDistribution[ZF_Procedural_Item]
    local ZF_tabla= ZF_Zerum_ProceduralDistribution[ZF_Procedural_Item]
    local ZF_indice_i = 1
    while ZF_indice_i <= ZF_largo do
        local ZF_Procedural_Place = ZF_tabla[ZF_indice_i][1]
        local ZF_Procedural_Probability = ZF_tabla[ZF_indice_i][2]
        ZF_indice_i = ZF_indice_i + 1
        table.insert(ProceduralDistributions.list["list"][ ZF_Procedural_Place ].items, ZF_Procedural_Item)
        table.insert(ProceduralDistributions.list["list"][ ZF_Procedural_Place ].items, ZF_Procedural_Probability)        
    end
    ZF_Procedural_Item = next(ZF_Zerum_ProceduralDistribution, ZF_Procedural_Item) -- Get the next key of the table
end







-- Suburbs Distribution --
-- Generally we add here the non procedural items, like bags, etc.

local ZF_Zerum_SuburbsDistributions = {
    --YourItem = {
    --    {"Place1", 100},
    --    {"Place2", probability},
    --    {"Place3", 0.1},
    --}   
    ["ZF_Zerum.ZSerum"] ={
    
        {"Bag_DoctorBag",    10},
        {"Bag_MedicalBag",   10},
        {"Bag_Military",     20},
        {"Bag_SurvivorBag",  10},
        {"FirstAidKit",       5},
    
    }
}


local ZF_Suburbs_Item = next(ZF_Zerum_SuburbsDistributions, nil) -- Get the first key of the table
while ZF_Suburbs_Item ~= nil do -- item not null

    local ZF_largo = #ZF_Zerum_SuburbsDistributions[ZF_Suburbs_Item]
    local ZF_tabla= ZF_Zerum_SuburbsDistributions[ZF_Suburbs_Item]
    local ZF_indice_i = 1
    while ZF_indice_i <= ZF_largo do
        local ZF_Suburbs_Place = ZF_tabla[ZF_indice_i][1]
        local ZF_Suburbs_Probability = ZF_tabla[ZF_indice_i][2]
        ZF_indice_i = ZF_indice_i + 1
        table.insert(SuburbsDistributionss.list[ ZF_Suburbs_Place ].items, ZF_Suburbs_Item)
        table.insert(SuburbsDistributionss.list[ ZF_Suburbs_Place ].items, ZF_Suburbs_Probability)     
    end
    ZF_Suburbs_Item = next(ZF_Zerum_SuburbsDistributions, ZF_Suburbs_Item) -- Get the next key of the table
end