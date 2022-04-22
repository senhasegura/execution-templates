# 1. At the prompt, type the following:
expect "*]"
exec "passwd [#USERNAME#]"

# 2. The following prompt displays:
#   Changing password for UserID
#   UserID's Old password:
expect "*password:"
exec "[#CURRENT_PASSWORD#]"

# 3. The following prompt is displayed:
#   UserID's New password:
expect "*password:"
exec "[#NEW_PASSWORD#]"

# 4. The following prompt is displayed, asking you to re-type your new password.
#   Enter the new password again:
expect "*again:"
exec "[#NEW_PASSWORD#]"

# Exit
expect "*]"
exec "exit"

end