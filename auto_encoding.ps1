# power shell

#enc
#[System.Text.Encoding]::UTF8; # encoding fail
#$PSDefaultParameterValues['*:Encoding'] = 'utf8'; # encoding fail
#[System.Console]::OutputEncoding = [System.Text.Encoding]::UTF8 # encoding fail

#$env:LC_ALL='C.UTF-8';# encoding fail
# variable section
$KEY_WORD1="일산보드게임";
$KEY_WORD2="일산보드게임카페";


$KEY_WORD1_URL="https://search.naver.com/search.naver?query=$KEY_WORD1"
$KEY_WORD2_URL="https://search.naver.com/search.naver?query=$KEY_WORD2"

$KEY_WORD_MAP="https://map.naver.com/v5/entry/place/1733463308";

$PROGRAM_NAME="iexplore"
$WAITTING_TIME=3  #sec
$LOOP_COUNT=1


For ($i=1; $i -le $LOOP_COUNT; $i++) {  # loop

    $ie=New-Object -COM 'InternetExplorer.Application'; # create ie application object
    $ie.visible=$true;  # show visual
    $ie.navigate($KEY_WORD1_URL);   # open first tab
    $ie.navigate($KEY_WORD2_URL, 0x1000);   # create new tab   
    $ie.navigate($KEY_WORD_MAP, 0x1000);   # create new tab   

    while ($ie.Busy -eq $true) {Start-Sleep -seconds 1;}

    sleep $WAITTING_TIME;   # sleep after opening all tabs

    get-Process iexplore | stop-Process;    # kill ie process

    sleep 1; # sleep after ie process
}

 #   $li=$ie.Document.getElementsByTagName('li') | where {$_.getAttributeNode('data-nmb_atl-doc-id').Value -eq '1753908673'}
 #   $a=$li.contentwindow.document.body.getElementsByTagName('a');
 #   $a.click();

# 직접 클릭 방법
# $ie.navigate("https://www.naver.com");  
# $sText=$ie.Document.getElementByID("query");
# $sText.Value=$KEY_WORD1;

# while ($ie.Busy -eq $true) {Start-Sleep -seconds 1;}

# $sform=$ie.Document.getElementByID("sform");
# $sform.submit();