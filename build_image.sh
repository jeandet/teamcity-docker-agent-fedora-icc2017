docker build -t jeandet/teamcity-docker-agent-fedora-icc2017 .
docker run -d=true -e SERVER_URL=https://hephaistos.lpp.polytechnique.fr/teamcity --name=teamcity-docker-agent-fedora-icc2017 -it jeandet/teamcity-docker-agent-fedora-icc2017 &
sleep 300
docker stop teamcity-docker-agent-fedora-icc2017
docker commit teamcity-docker-agent-fedora-icc2017 jeandet/teamcity-docker-agent-fedora-icc2017
docker rm teamcity-docker-agent-fedora-icc2017
