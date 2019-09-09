*** Settings ***
Library    SeleniumLibrary
Library    Dialogs



*** Test Cases ***
测试用例001
    ${var}=    set variable    hallo
    ${var1}=    evaluate    "haha"
    log    $var
    log to console    haha
    :for    ${a}  IN RANGE  5
    \    log    $a
    \    log to console    $a


测试用例002
#    @{lis}=    evaluate  ["55","66"]
    @{lis}=    create list    你    好
#    ${lis}=    get value from user    请输入体重
    log to console      $lis
    run keyword if     "你" in $lis
    ...    log    你在里面
    ...    ELSE IF    "好"== "好"    log    好在里面
    ...    ELSE    log to console    都不在里面
