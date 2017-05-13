# coding: utf-8
import MySQLdb
import sys
reload(sys)
sys.setdefaultencoding("utf-8")


if __name__ == '__main__':
    path ='/home/yun/Documents/'
    conn = MySQLdb.connect(
        host='localhost',
        port=3306,
        user='root',
        passwd='a2713795907',
        charset="utf8",
        db='test',
    )

    cur = conn.cursor()
    with open(path +'department.txt','r') as f:
        for line in f.readlines():
            dept =line.split(' ')
            cur.execute("insert into department values('"+dept[0]+"','"+dept[1]+"','"+dept[2]+"')")

    with open(path +'student.txt','r') as w:
        for line in w.readlines():
            stu =line.split(' ')
            cur.execute("insert into student values('"+stu[0]+"','"+stu[1]+"','"+stu[2]+"','"+stu[3]+"','"+stu[4]+"','"+stu[5]+"')")

    with open(path +'exam.txt','r') as e:
        for line in e.readlines():
            ex =line.split(' ')
            cur.execute("insert into exam values('"+ex[0]+"','"+ex[1]+"','"+ex[2]+"')")
    conn.commit()
    results =cur.fetchall()
    print results
    cur.close()
    conn.close()