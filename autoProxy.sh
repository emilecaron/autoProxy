 #!/bin/bash

main(){
    result=`HEAD -d -t 1 http://www.google.fr:80`
    if [ ! "$result" = "200 OK" ];then
        http_proxy_value="http://proxyweb.utc.fr:3128"
        https_proxy_value="https://proxyweb.utc.fr:3128"
        
        export http_proxy=$http_proxy_value  
        export https_proxy=$https_proxy_value  
        
        echo "Proxy was turned on"
    fi
}

main
