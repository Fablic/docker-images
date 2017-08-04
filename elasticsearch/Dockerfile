FROM elasticsearch:2.4

RUN ./bin/plugin install analysis-kuromoji
RUN ./bin/plugin remove analysis-icu
RUN ./bin/plugin install analysis-icu
RUN touch ./config/synonym.txt
RUN touch ./config/userdict_ja.txt
RUN service elasticsearch restart
