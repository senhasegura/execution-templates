start-at https://console.aws.amazon.com/console/home
timeout 30000
user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"

new-action
sleep 4000
test-location /signin?redirect_uri
fill #resolving_input [#USERNAME#]
jclick #next_button
sleep 2000

new-action
fill #ap_password [#CURRENT_PASSWORD#]
click #signInSubmit-input

new-action
test-location /console/home
set-location https://signin.aws.amazon.com/updateaccount?redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fbilling%2Fhome%23%2Faccount
sleep 2000

new-action
test-location /ap/cnep
jclick #cnep_1A_change_password_button-input

new-action
fill #ap_password [#CURRENT_PASSWORD#]
fill #ap_password_new [#NEW_PASSWORD#]
fill #ap_password_new_check [#NEW_PASSWORD#]
click #cnep_1D_submit_button-input

new-action
test-selector #message_success
