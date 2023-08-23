#!/bin/bash

LOG_DIR="logs"
LOG_FILE="$LOG_DIR/server.log"

# Ensure the logs directory exists
mkdir -p "$LOG_DIR"

# Function to start the server
start_server() {
    php -S $2 > "$LOG_FILE" 2>&1 &
    echo "Server started on $2"
}

# Function to stop the server
stop_server() {
    pkill -f "php -S $2"
    echo "Server on $2 stopped"
}

# Function to show logs
show_logs() {
    cat "$LOG_FILE"
}

# Function to show server status
show_status() {
    if pgrep -f "php -S $2" >/dev/null; then
        echo "Server on $2 is running"
    else
        echo "Server on $2 is not running"
    fi
}

# Main script logic
if [ "$1" == "start" ]; then
    start_server "$@"
elif [ "$1" == "stop" ]; then
    stop_server "$@"
elif [ "$1" == "logs" ]; then
    show_logs
elif [ "$1" == "status" ]; then
    show_status "$@"
else
    echo "Usage: ./xamp.sh [start|stop|logs|status] [host:port]"
fi
