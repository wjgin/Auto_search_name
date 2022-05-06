# power shell

#enc
#[System.Text.Encoding]::UTF8;
$env:LC_ALL='C.UTF-8';
# variable section
$KEY_WORD1=get-content -encoding utf8 "var1.txt";    # 보드게임카페
$KEY_WORD1=get-content -encoding utf8 "var2.txt";    # 일산보드게임카페
#$KEY_WORD1_URL="https://search.naver.com/search.naver?query=$KEY_WORD1"
#$KEY_WORD2_URL="https://search.naver.com/search.naver?query=$KEY_WORD2"

#$KEY_WORD2_URL="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=$KEY_WORD2&oquery=&tqi=hFaMBdprvxsssTWhZJCssssstTo-188364"
#$KEY_WORD1_MAP="https://map.naver.com/v5/search/$KEY_WORD1/place/1733463308?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14111718.1952715,4531066.7676903,15,0,0,0,dh"
#$KEY_WORD2_MAP="https://map.naver.com/v5/search/$KEY_WORD2/place/1733463308?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14111718.1952715,4531066.7676903,15,0,0,0,dh"





$PROGRAM_NAME="iexplore"
$WAITTING_TIME=5  #sec
$LOOP_COUNT=1

For ($i=1; $i -le $LOOP_COUNT; $i++) {  # loop

    $ie=New-Object -COM 'InternetExplorer.Application'; # create ie application object
    $ie.visible=$true;  # show visual
    #$ie.navigate($KEY_WORD1_URL);   # open first tab
    #$ie.navigate($KEY_WORD2_URL, 0x1000);   # create new tab   
    
    
    $ie.navigate("https://www.naver.com");  

    while ($ie.Busy -eq $true) {Start-Sleep -seconds 1;}

    $sText=$ie.Document.getElementByID("query");
    $sText.Value=$KEY_WORD1;

    $sform=$ie.Document.getElementByID("sform");
    sleep 3;
    $sform.submit();

    sleep $WAITTING_TIME;   # sleep after opening all tabs

    # get-Process iexplore | stop-Process;    # kill ie process

    sleep 1 # sleep after ie process
}

