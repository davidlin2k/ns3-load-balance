FROM gcc:4.9

WORKDIR /ns3-load-balance

COPY . .

RUN ./waf -d optimized --enable-examples configure
RUN ./waf

CMD ["/bin/bash"]
