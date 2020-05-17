controladdin "Weather Widget"
{
    RequestedHeight = 200;
    MinimumHeight = 200;
    MaximumHeight = 200;
    RequestedWidth = 200;
    MinimumWidth = 200;
    MaximumWidth = 200;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts =
        'WeatherWidget\WeatherScript.js';
    StartupScript = 'WeatherWidget\StartWeather.js';

    event OnWidgetStart(Success: Boolean)
    event OnAfterFetchWeather(Success: Boolean)
    procedure GetWeather(Location: Integer)

    procedure test(test: Text)
}