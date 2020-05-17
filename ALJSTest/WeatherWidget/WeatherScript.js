function test(test)
{
  console.log(test)
  getWeatherData(test)
}

async function getWeatherData(location)
{
  try
    {
        const weatherData = await fetchWeatherData(location, "metric");
        console.log(weatherData);
        updateWeather(weatherData.weather[0].main, Math.round(weatherData.main.temp))
        console.log(weatherData);
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnAfterFetchWeather', [true]);
    }
    catch(err)
    {
        console.log(err);
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnAfterFetchWeather', [false]);
    }
}

async function fetchWeatherData(input, unit) {
    const res = await fetch (
        `https://api.openweathermap.org/data/2.5/weather?q=${input}&mode=JSON&APPID=3090f6281aeed0bbf2ecc5d48ccd80db&units=${unit}`, 
        {mode: 'cors'}
    );
    return new Promise((resolve, reject) => {
      if (res.status === 200) {
        resolve(res.json());
      } else {
        reject('City not found');
      }
    }) 
};

function updateWeather(weather, temp)
{
    let weatherTag = document.getElementById("Weather");
    let tempTag = document.getElementById("Temp");
    weatherTag.innerHTML = "Weather: "+ weather;
    tempTag.innerHTML = "Temp: " + temp;
}