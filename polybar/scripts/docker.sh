selected=$(docker ps | sed -n '1!p' | dmenu)

selected=$(echo $selected | awk '{print $1;}')

action=$(echo -e "stop\nrestart\nlogs\nbash" | dmenu)

case "$action" in
    "stop")
        docker stop $selected
        ;;
    "restart")
        docker restart $selected
        ;;
    "logs")
        urxvt -e sh -c "docker logs -f -t $selected"
        ;;
    "bash")
        urxvt -e sh -c "docker exec -ti $selected bash"
        ;;
esac
