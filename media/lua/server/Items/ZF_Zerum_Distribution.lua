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
-- table.insert(ProceduralDistributions.list[ "The_Place_Where_You_Want_It" ].items, "Item_You_Want_To_Add")
-- table.insert(ProceduralDistributions.list[ "The_Place_Where_You_Want_It" ].items, Probability --(this param is a float!)-- )

local ZF_Zerum_ProceduralDistribution = {
    --YourItem = {
    --    {"Place1", 100},
    --    {"Place2", probability},
    --    {"Place3", 0.1},
    --}   
}

local ZF_Procedural_Item = next(ZF_Zerum_ProceduralDistribution, nil) -- Get the first key of the table


while ZF_Procedural_Item do -- item not null
    for ZF_item in pairs (ZF_Zerum_ProceduralDistribution) do -- for each Place and Probability in the item
        local ZF_Procedural_Place = ZF_item[1]
        local ZF_Procedural_Probability = ZF_item[2]
        table.insert(ProceduralDistributions.list[ ZF_Procedural_Place ].items, ZF_Procedural_Item)
        table.insert(ProceduralDistributions.list[ ZF_Procedural_Place ].items, ZF_Procedural_Probability)
        print(ZF_Procedural_Place, ZF_Procedural_Item, ZF_Procedural_Probability)
    end
    ZF_Procedural_Item = next(ZF_Zerum_ProceduralDistribution, ZF_Procedural_Item) -- Get the next key of the table
end

-- Suburbs Distribution --


