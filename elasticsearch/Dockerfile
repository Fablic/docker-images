FROM elasticsearch:2.4
ENV PORT 9250
EXPOSE "${PORT}"
RUN ./bin/plugin install analysis-kuromoji
RUN ./bin/plugin remove analysis-icu
RUN ./bin/plugin install analysis-icu
RUN touch ./config/synonym.txt
RUN touch ./config/userdict_ja.txt
RUN echo "http.port: ${PORT}" > ./config/elasticsearch.yml
RUN service elasticsearch restart > /dev/null
