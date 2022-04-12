start-at https://m.facebook.com/
user-agent Safari
timeout 60000

# Login with old passsword
new-action
test-location facebook.com
log Filling login fields
test-selector input[name=email]
fill input[name=email] [#USERNAME#]
fill input[name=pass] [#CURRENT_PASSWORD#]
click input[type=submit][name=login]
sleep 3000

# Is logged
new-action
log Testing if is logged
test-location /home.php
log Acessando pagina de senhas
set-location /settings/account/?password
sleep 3000

# Change password
new-action
test-location /settings/account/?password
log Filling new password fields
test-selector input[name=old_password]
fill input[name=old_password] [#CURRENT_PASSWORD#]
fill input[name=new_password] [#NEW_PASSWORD#]
fill input[name=confirm_password] [#NEW_PASSWORD#]
click input[type=submit][name=save]
sleep 3000

# Logout
new-action
click a:contains(Sair)
sleep 3000

# Login with new password
new-action
test-location facebook.com
log Testing password change
test-selector input[name=email]
fill input[name=email] [#USERNAME#]
fill input[name=pass] [#NEW_PASSWORD#]
click input[type=submit][name=login]
sleep 3000

# Validate
new-action
log Password changed successfully
test-location /home.php
