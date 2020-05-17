pageextension 50100 "Weather Widget Customer Ext" extends "Customer Card"
{
    layout
    {
        addlast(factboxes)
        {
            part("Weather Widget"; "Weather Widget")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}