#!/bin/bash

URL="https://bsky.odisha.gov.in/bsky/home"

check_app_status() {
    HTTP_STATUS=$(curl -k -s -o /dev/null -w "%{http_code}" $URL)

    case $HTTP_STATUS in
        200|201|202|203|204|205|206|300|301|302|303|304|307|308)
            echo "The application is Up"
            ;;
        *)
            echo "The application is Down"
            ;;
    esac
}

check_app_status

