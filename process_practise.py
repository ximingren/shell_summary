import multiprocessing
import time
def worker(interval):
    """
    :param interval:  间歇时间
    :return:
    """
    n=5
    while n>0:
        print("The time is {0}".format(time.ctime()))
        time.sleep(interval)
        n -=1

if __name__=='__main__':
    p1=multiprocessing.Process(target=worker,args=(1,),name='p1')  #target表示调用对象，args表示调用对象的位置参数元组，
    p2=multiprocessing.Process(target=worker,args=(2,))  #target表示调用对象，args表示调用对象的位置参数元组，
    p3=multiprocessing.Process(target=worker,args=(3,))  #target表示调用对象，args表示调用对象的位置参数元组，
    # 方法有is_alive,join,run,start,terminate。
    p1.start()
    p2.start()
    p3.start()
    print(p1.pid)
    print(p2.name)
    print(p3.is_alive())
    for p in multiprocessing.active_children():
        print(p.name,p.pid)