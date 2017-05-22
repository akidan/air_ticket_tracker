#!/bin/bash
#flight information
hiddenSearchMode=ONE_WAY
departureAirportCode=MYJ
arrivalAirportCode=OKA
departureDate=20170815
returnDate=20170815
adultCount=1

t=`date +%Y%m%d%H%M%S`
curl1=`curl -D - 'https://aswbe-i.ana.co.jp/international_asw/pages/revenue/search/roundtrip/search_roundtrip_input.xhtml?rand=20170519175704&CONNECTION_KIND=CHN&LANG=ja' -H 'Cookie: unique=userId_::::; A_STATUS=0; amcglobal=cn%2Fja; w_no=1; mbox=session#1495184224644-757089#1495186085|PC#1495184224644-757089.18_21#1528880225; s_fv=flash%20enabled%20%28no%20version%29; s_cc=true; aam_uuid=09412270874919733490066750665928422415; _ga=GA1.3.1165350919.1495184226; _gid=GA1.3.708616076.1495184226; _dc_gtm_UA-43246109-2=1; __utmt_UA-43246109-1=1; __utma=204229440.1165350919.1495184226.1495184226.1495184226.1; __utmb=204229440.1.10.1495184226; __utmc=204229440; __utmz=204229440.1495184226.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); s_fid=0077E824639EA1F6-24EF34EAAE76CAA0; s_sq=anaglobal%3D%2526pid%253DGLV_TOP_CN_JP%2526pidt%253D1%2526oid%253D%2525E6%2525A4%25259C%2525E7%2525B4%2525A2%2525E3%252581%252599%2525E3%252582%25258B%2526oidt%253D3%2526ot%253DSUBMIT' -H 'Origin: https://www.ana.co.jp' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: ja,zh-CN;q=0.8,zh;q=0.6,en;q=0.4,zh-TW;q=0.2' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Referer: https://www.ana.co.jp/asw/wws/cn/j/' -H 'Connection: keep-alive' --data 'hiddenSearchMode='$hiddenSearchMode'&departureAirportCode%3Afield='$departureAirportCode'&DepApoText=%E6%9D%BE%E5%B1%B1%2FMatsuyama%5BMYJ%5D&arrivalAirportCode%3Afield='$arrivalAirportCode'&ArrApoText=%E6%B2%96%E7%B8%84%28%E9%82%A3%E8%A6%87%29%2FOkinawa%28Naha%29%5BOKA%5D&departureDate%3Afield='$departureDate'&returnDate%3Afield='$returnDate'&comparisonSearchType=on&adultCount='$adultCount'&youngAdultCount=0&childCount=0&infantCount=0&boardingClass=JDE&promotionCode=&STATIC=STATIC' --compressed -k`
session=`echo $curl1 | sed -e 's/.*Set-cookie: //' -e 's/; path.*//'`
curl2https=`echo $curl1 | sed -e 's/X-powered.*//' -e 's/.*Location: //'`
curl2=`curl -D - $curl2https -H 'Accept-Encoding: gzip, deflate, sdch, br' -H 'Accept-Language: ja,zh-CN;q=0.8,zh;q=0.6,en;q=0.4,zh-TW;q=0.2' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: https://www.ana.co.jp/asw/wws/cn/j/' -H 'Cookie: unique=userId_::::; A_STATUS=0; amcglobal=cn%2Fja; w_no=1; mbox=session#1495184224644-757089#1495186085|PC#1495184224644-757089.18_21#1528880225; s_fv=flash%20enabled%20%28no%20version%29; s_cc=true; aam_uuid=09412270874919733490066750665928422415; _ga=GA1.3.1165350919.1495184226; _gid=GA1.3.708616076.1495184226; _dc_gtm_UA-43246109-2=1; __utmt_UA-43246109-1=1; __utma=204229440.1165350919.1495184226.1495184226.1495184226.1; __utmb=204229440.1.10.1495184226; __utmc=204229440; __utmz=204229440.1495184226.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); s_fid=0077E824639EA1F6-24EF34EAAE76CAA0; s_sq=anaglobal%3D%2526pid%253DGLV_TOP_CN_JP%2526pidt%253D1%2526oid%253D%2525E6%2525A4%25259C%2525E7%2525B4%2525A2%2525E3%252581%252599%2525E3%252582%25258B%2526oidt%253D3%2526ot%253DSUBMIT; '$session'\' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed -k`
curl3https=`echo $curl2 | sed -e 's/X-powered.*//' -e 's/.*Location: //'`
curl3=`curl -D - $curl3https -H 'Accept-Encoding: gzip, deflate, sdch, br' -H 'Accept-Language: ja,zh-CN;q=0.8,zh;q=0.6,en;q=0.4,zh-TW;q=0.2' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: https://www.ana.co.jp/asw/wws/cn/j/' -H 'Cookie: unique=userId_::::; A_STATUS=0; amcglobal=cn%2Fja; w_no=1; mbox=session#1495184224644-757089#1495186085|PC#1495184224644-757089.18_21#1528880225; s_fv=flash%20enabled%20%28no%20version%29; s_cc=true; aam_uuid=09412270874919733490066750665928422415; _ga=GA1.3.1165350919.1495184226; _gid=GA1.3.708616076.1495184226; _dc_gtm_UA-43246109-2=1; __utmt_UA-43246109-1=1; __utma=204229440.1165350919.1495184226.1495184226.1495184226.1; __utmb=204229440.1.10.1495184226; __utmc=204229440; __utmz=204229440.1495184226.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); s_fid=0077E824639EA1F6-24EF34EAAE76CAA0; s_sq=anaglobal%3D%2526pid%253DGLV_TOP_CN_JP%2526pidt%253D1%2526oid%253D%2525E6%2525A4%25259C%2525E7%2525B4%2525A2%2525E3%252581%252599%2525E3%252582%25258B%2526oidt%253D3%2526ot%253DSUBMIT; '$session'\' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed -k`
echo $curl3 > 'ticket_'$t'.html'

