#SITE="http://weather.yahooapis.com/forecastrss?p=CHXX0008&u=c"
#INFO="Current Conditions"
#curl --silent "$SITE" | grep -E '($INFO:|C<BR)' | sed -e 's/$INFO://' -e 's/<br \/>//' -e 's/<b>//' -e 's/<\/b>//' -e 's/<BR \/>//' -e 's///' -e 's/<\/description>//'

#SITE="http://weather.yahoo.com/china/beijing/beijing-2151330/?unit=c"
#INFO="Feels Like"
#curl --silent "$SITE" | grep -E '($INFO:|C<BR)' | sed -e 's/$INFO://' -e 's/<br \/>//' -e 's/<b>//' -e 's/<\/b>//' -e 's/<BR \/>//' -e 's///' -e 's/<\/description>//'

SITE="http://weather.yahooapis.com/forecastrss?p=CHXX0008&u=c"
INFO="Current Conditions"
curl --silent "$SITE" | grep -E '($INFO:|C<BR)' | sed \
-e 's/\ C/º\ C/' \
-e 's/<BR \/>//' \
#-e 's///' \
#-e 's/<\/description>//'


#-e 's/$INFO://' \
#-e 's/<br \/>//' \
#-e 's/<b>//' \
#-e 's/<\/b>//' \
