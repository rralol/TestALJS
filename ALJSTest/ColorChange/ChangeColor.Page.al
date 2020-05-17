page 50101 "Change Color"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;

    layout
    {
        area(Content)
        {
            group("Color")
            {
                usercontrol(ChangeColor; ChangeColor)
                {
                    ApplicationArea = all;

                    trigger OnAfterColorChange(r: Integer; g: Integer; b: Integer; i: Decimal)
                    begin
                        Message('Color Changed');
                    end;
                }
                field(red; red)
                {
                    ApplicationArea = all;
                    MinValue = 0;
                    MaxValue = 255;
                }
                field(green; green)
                {
                    ApplicationArea = all;
                    MinValue = 0;
                    MaxValue = 255;
                }
                field(blue; blue)
                {
                    ApplicationArea = all;
                    MinValue = 0;
                    MaxValue = 255;
                }
                field(intensity; intensity)
                {
                    ApplicationArea = all;
                    MinValue = 0;
                    MaxValue = 1;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Change Background Color")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CurrPage.ChangeColor.ChangeBackgroundCssColor(red, green, blue, intensity);
                end;
            }
            action("Change Text Color")
            {
                ApplicationArea = all;

                trigger OnAction()
                begin
                    CurrPage.ChangeColor.ChangeTextCssColor(red, green, blue, intensity);
                end;
            }
        }
    }

    var
        red: Integer;
        green: Integer;
        blue: Integer;
        intensity: Decimal;
}