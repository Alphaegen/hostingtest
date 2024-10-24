# Initial setup:
1. Run `docker compose up -d` on the VPS
2. Git clone the site repository (containing the docker-compose.yml) wherever you like on the VPS
3. Run `docker compose up -d` from each site repository directory

# Add site:
1. Make new repo with docker-compose.yml
2. Change PHP version if needed
3. Change SSH credentials
3. Add new domain to nginx config + ssh stream config
4. Restart Nginx with `docker compose restart nginx` (probably need to find a better way without restarting it completely because everything goes down if you do)
5. Create SQL credentials (can probably be automated using a similar script as `init.sql`)
6. Git clone the site repository wherever you like on the VPS
7. Run `docker compose up -d` in the site directory

# SSH to site
1. ssh root@<domain>

SSH credentials can also be changed in the project specific docker-compose.yml
