function get200Response{Invoke-WebRequest localhost}
function get404Response{Invoke-WebRequest localhost/Movies}


$progressPreference = 'silentlyContinue'

For ($i=0; $i -le 100; $i++) {
get404Response
    }