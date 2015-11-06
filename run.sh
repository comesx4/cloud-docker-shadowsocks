echo "========================================================================"
echo " You can now connect to this ShadowSocks server:"
echo ""
echo " server: $SS_SERVER_ADDR  port: $SS_SERVER_PORT password: $SS_PASSWORD  "
echo " timeout: $SS_TIMEOUT  encryption method: $SS_METHOD "
echo ""
echo " Please remember the password!"
echo "========================================================================"

ssserver -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD -t $TIMEOUT