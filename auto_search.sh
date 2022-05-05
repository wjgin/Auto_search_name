#!/bin/bash
# auto_search scrip

echo this is test...

# variable section
KEY_WORD1="보드카페"
KEY_WORD2="일산보드카페"

KEY_WORD1_URL="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=$KEY_WORD1&oquery=&tqi=hFaMBdprvxsssTWhZJCssssstTo-188364"
KEY_WORD2_URL="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=$KEY_WORD2&oquery=&tqi=hFaMBdprvxsssTWhZJCssssstTo-188364"

PROGRAM_NAME="Safari"
WAITTING_TIME=5	#sec


# command section
open $KEY_WORD1_URL $KEY_WORD2_URL

sleep "$WAITTING_TIME"

killall -9 "$PROGRAM_NAME"
