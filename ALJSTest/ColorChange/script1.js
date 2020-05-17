document.write("<html><body><p>This is a piece of Text!</p></body></html>")

function ChangeBackgroundCssColor(r, g, b, i) 
{
    let base = document.getElementsByTagName("html");
    base[0].style.backgroundColor = "rgb(" + r + "," + g + "," + b + ")";
    base[0].style.opacity = i;
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnAfterColorChange', [r, g, b, i]);
}

function ChangeTextCssColor(r, g, b, i)
{
    let text = document.getElementsByTagName("p");
    text[0].style.color = "rgb(" + r + "," + g + "," + b + ")";
    text[0].style.opacity = i;
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnAfterColorChange', [r, g, b, i]);
}