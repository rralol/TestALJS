controladdin ChangeColor
{
    Scripts =
        'ColorChange\script1.js';
    event OnAfterColorChange(r: Integer; g: Integer; b: Integer; i: Decimal)
    procedure ChangeBackgroundCssColor(r: Integer; g: Integer; b: Integer; i: Decimal)
    procedure ChangeTextCssColor(r: Integer; g: Integer; b: Integer; i: Decimal)
}