#!/bin/bash
# auto_search scrip

echo this is test...

#path=/Applications
#program=Google\ Chrome.app
#open "$path/$program

query_name1="보드카페"
query_name2="일산보드카페"

query_result1="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=$query_name1&oquery=&tqi=hFaMBdprvxsssTWhZJCssssstTo-188364"


query_result2="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=$query_name2&oquery=&tqi=hFaMBdprvxsssTWhZJCssssstTo-188364"

open $query_result1 $query_result2
