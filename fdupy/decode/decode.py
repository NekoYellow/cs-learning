import os
import re
cwd = os.getcwd() # 当前目录
x, y = 'x', 'y' # x和y的名称

def get_records(date, user):
    """读取指定用户在某一天的聊天记录"""
    filename = os.path.join(cwd, 'in', user, f'{date}.csv')
    if os.path.exists(filename):
        f = open(filename, 'r', encoding='utf-8')
        lines = f.readlines()
        records = []
        for line in lines:
            records.append(line.split(','))
        return records
    else:
        raise Exception('当天没有聊天记录')

def decode(msg):
    """解密一句话"""
    res = ''
    n = -4
    pat = '\$(.*)\$'
    msg = re.search(pat, msg).groups()[0]
    for i in msg:
        if 'a' <= i <= 'z':
            res += chr(ord('a') + (ord(i) - ord('a') + n) % 26)
        elif 'A' <= i <= 'Z':
            res += chr(ord('A') + (ord(i) - ord('A') + n) % 26)
        elif 0x4E00 <= ord(i) <= 0x9FA5:
            res += chr(ord(i) + n)
        else:
            res += i
    return res

def get_msgs(records):
    """从记录中提取聊天内容"""
    msgs = []
    for r in records:
        msgs.append(r[4])
    return msgs

def wc(msgs):
    """返回单词计数"""
    cnt = 0
    for msg in msgs:
        cnt += len(msg.split(' '))
    return cnt

def longest(msgs):
    """返回最长的句子长度"""
    mx = 0
    for msg in msgs:
        mx = max(mx, len(msg))
    return mx


if __name__ == '__main__':
    date = input()
    try:
        x_records, y_records = get_records(date, x), get_records(date, y)
    except Exception as e:
        print(e)
        exit()

    for r in x_records:
        r[4] = decode(r[4])
    for r in y_records:
        r[4] = decode(r[4])

    records = x_records + y_records
    records.sort(key=lambda x: x[0])

    out_file = os.path.join(cwd, 'out', f'{date}.txt')
    if not os.path.exists(out_file):
        x_wc = wc(get_msgs(x_records))
        y_wc = wc(get_msgs(y_records))
        word_most = x if x_wc > y_wc else y
        
        x_len = longest(get_msgs(x_records))
        y_len = longest(get_msgs(y_records))
        len_most = x if x_len > y_len else y
        
        record_file = os.path.join(cwd, 'out', 'record.csv')
        with open(record_file, 'a') as f:
            f.write(','.join([date, word_most, len_most]) + '\n')

    with open(out_file, 'w') as f:
        for r in records:
            f.write(','.join(r) + '\n')