# coding:utf-8 
import requests
from bs4 import BeautifulSoup
import time
import pymysql
while True:
    for i in range(0,33):
        list = ["英镑","港币","美元","瑞士法郎","德国马克","法国法郎","新加坡元","瑞典克朗","丹麦克朗","挪威克朗","日元","加拿大元","澳大利亚元","欧元","澳门元","菲律宾比索","泰国铢","新西兰元","韩国元","卢布","林吉特","新台币","西班牙比塞塔","意大利里拉","荷兰盾","比利时法郎","芬兰马克","印度卢比","印尼卢比","巴西里亚尔","阿联酋迪拉姆","印度卢比","南非兰特","沙特里亚尔","土耳其里拉"]
        data = {"erectDate":"","nothing":"","pjname":list[i]}
        request = requests.post("https://srh.bankofchina.com/search/whpj/search_cn.jsp", data=data)
        request.encoding =  "utf-8" #解码
        bs=BeautifulSoup(request.text,"lxml")
        for response in bs.select(".BOC_main.publish > table > tr:nth-child(2) > td:nth-child(2)"):
            if response.string == "\n":
                for response in bs.select(".BOC_main.publish > table > tr:nth-child(2) > td:nth-child(3)"):
                    currency = float(response.string) * 0.01
            else:   
                currency = float(response.string) * 0.01
            result = format(currency, '.4f')
            conn = pymysql.connect(host='127.0.0.1', port=3306, user='user', password='password', charset='utf8', db='db')#dsn设置
            sql = "update currency_now set v={} where k={}".format(result,i)
            cursor = conn.cursor()
            try:
                cursor.execute(sql)
                conn.commit()
            except Exception as e:
                print(str(e))
                conn.rollback()
            cursor.close()
            conn.close()
        time.sleep(1)