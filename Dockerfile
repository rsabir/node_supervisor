FROM jonbaier/pod-scaling:0.1
RUN apt-get update && apt-get install -yq supervisor
ADD node_supervisor.conf /etc/supervisor/conf.d/node_supervisor.conf
ADD index.js /src/index.js
ADD kill_supervisor.py /usr/bin/kill_supervisor.py
RUN chmod 777 /usr/bin/kill_supervisor.py
CMD /usr/bin/supervisord -n
