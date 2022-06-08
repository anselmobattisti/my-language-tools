FROM erikvl87/languagetool

# Improving the spell checker
# http://wiki.languagetool.org/hunspell-support
USER root

COPY en_spelling_additions.txt en_spelling_additions.txt
RUN  (echo; cat en_spelling_additions.txt) >> org/languagetool/resource/en/hunspell/spelling.txt

COPY en_ignore_additions.txt en_ignore_additions.txt
RUN  (echo; cat en_ignore_additions.txt) >> org/languagetool/resource/en/hunspell/ignore.txt

COPY en_prohibited_additions.txt en_prohibited_additions.txt
RUN  (echo; cat en_prohibited_additions.txt) >> org/languagetool/resource/en/hunspell/prohibited.txt