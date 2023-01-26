query 50101 "Item Attribute Value Mapping"
{
    //version v.1.0 RS
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(DEMO; "Assembly BOM")
            {
            }
            dataitem(Item_Attribute_Value_Mapping; "Item Attribute Value Mapping")
            {
                DataItemLink = "No." = Item."No.";
                column(Table_ID; "Table ID")
                {
                }
                column(No; "No.")
                {
                }
                column(Item_Attribute_ID; "Item Attribute ID")
                {
                }
                column(Item_Attribute_Value_ID; "Item Attribute Value ID")
                {
                }

            }
        }
    }
}
