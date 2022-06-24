
from flask import Flask, render_template
import pymysql

conn = pymysql.connect (
    host='127.0.0.1',
    user='root',
    password='666666',
    port=3306,
    db='EnterpriseManagerTools',
    charset='utf8'
)

app = Flask("企业管理个人工具")

def query_data():
    """从数据库查询数据"""
    sql = """
        select * from staff
        order by account_number asc
    """
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    cursor.execute(sql)
    return cursor.fetchall()


@app.route("/")
def index():
    datas = query_data()
    #return "Success:" + str(conn.host_info)
    #alt + Enter 快速引入
    return render_template("index.html", datas=datas)

app.run(debug=True)