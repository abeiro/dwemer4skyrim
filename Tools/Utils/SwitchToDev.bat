@echo "This will update server. Password is 'dwemer'. Are you sure?. If not, close this window"
@pause
wsl -d  DwemerAI4Skyrim3 -u dwemer --  cd /var/www/html/HerikaServer/; git reset --hard HEAD;git checkout aiagent;git branch --set-upstream-to=origin/aiagent aiagent;git pull;/usr/local/bin/update_gws
@pause
