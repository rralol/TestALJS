page 50102 "Weather Widget"
{
    PageType = CardPart;
    SourceTable = Customer;
    layout
    {
        area(Content)
        {
            usercontrol("Weather Widget"; "Weather Widget")
            {
                ApplicationArea = all;
                //Visible = IsVisible;
                trigger OnAfterFetchWeather(Success: Boolean)
                begin
                    if Success then
                        IsVisible := true
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IsVisible := false;
        if not SentRequest then begin
            Message('Calling Weather App with %1!', City);
            CurrPage."Weather Widget".test(city);
            SentRequest := true;
        end;
    end;

    var
        IsVisible: Boolean;
        SentRequest: Boolean;
}