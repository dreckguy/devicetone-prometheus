function get200Response{Invoke-WebRequest localhost}
function get404Response{Invoke-WebRequest localhost/Movies}

Set-Variable ERROR404AMOUNT 10000
For ($i=0; $i -le $ERROR404AMOUNT; $i++) {
get404Response
    }