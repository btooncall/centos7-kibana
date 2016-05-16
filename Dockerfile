FROM btooncall/centos7:devel

RUN mkdir -p /opt/ 2>/dev/null; 
WORKDIR /opt

RUN wget -q https://download.elastic.co/kibana/kibana/kibana-5.0.0_alpha2-1.x86_64.rpm \
      && yum -y install /opt/kibana-5.0.0_alpha2-1.x86_64.rpm \
      && rm -f /opt/kibana-5.0.0_alpha2-1.x86_64.rpm \
      && yum clean all
      
