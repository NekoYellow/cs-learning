from enum import Enum
from threading import Timer
from random import randint


class Status(str, Enum):
    """All possible status of a cat.
    """
    SLEEP   = "我在睡觉..."
    AWAKE   = "我醒着但很无聊..."
    WALK    = "我在散步..."
    PLAY    = "我在玩耍..."
    EAT     = "我在进食..."
    DOCTOR  = "我在看医生..."

def validate(x):
    """Validate value x (valid means the value is between 0 and 100).
    """
    if x < 0:       return 0
    elif x > 100:   return 100
    else:           return x

def status_bar(x):
    """Return a status bar (string) representing value x.
    """
    x >>= 1     # x //= 2
    return '+'*x + '-'*(50-x)


class Cat:
    """A cat that can interact with you in the command line.
    """
    def __init__(self, file):
        self._nest = file
        try:
            with open(file) as i:
                x = i.readlines()
                self._hours, self._happiness, self._hungry, self._health = map(int, x[:4])
                self._status = Status[x[4]]
        except ValueError:  # if file is empty (then x does not have index 4)
            self._hours = randint(0, 23)
            self._happiness, self._hungry, self._health = [randint(1, 100) for _ in range(3)]
            self._status = Status.SLEEP if self._hours < 8 else Status.AWAKE

    def _fun_timer(self):
        self._timer = Timer(5.0, self._fun_timer)
        self._timer.start()   # only functions once after instantiated
        self._update_status()

    def _update_status(self):
        self._hours = self._hours + 1 if self._hours < 23 else 0
        if self._hours == 0:    self._status = Status.SLEEP
        elif self._hours == 8:  self._status = Status.AWAKE
        
        if self._status == Status.WALK:
            self._hungry += 3
            self._health += 1
        elif self._status == Status.PLAY:
            self._hungry += 3
            self._happiness += 1
        elif self._status == Status.EAT:
            self._hungry -= 3
        elif self._status == Status.DOCTOR:
            self._health += 4
        elif self._status == Status.SLEEP:
            self._hungry += 1
        elif self._status == Status.AWAKE:
            self._hungry += 2
            self._happiness -= 1

        if self._happiness < 20:
            self._health -= 1
        if self._hungry > 80 or self._hungry < 20:
            self._health -= 2
        
        self._hungry = validate(self._hungry)
        self._health = validate(self._health)
        self._happiness = validate(self._happiness)

    def _show_para(self):
        print(f"\n当前时间: {self._hours}点",
            f"\n当前状态: {self._status.value}",
            f"\nHappiness:\t Sad {status_bar(self._happiness)} Happy\t({self._happiness})",
            f"\nHungry:  \tFull {status_bar(self._hungry)} Hungry\t({self._hungry})",
            f"\nHealth:  \tSick {status_bar(self._health)} Healthy\t({self._health})")

    def _respond(self, command):
        if command == "letalone":
            self._status = Status.SLEEP if self._hours < 8 else Status.AWAKE
            print(self._status.value)
            return
        
        if self._status == Status.SLEEP:
            a = input("你确定要吵醒我吗？我在睡觉，你要是坚持吵醒我，我会不高兴的！（y表示是/其他表示不是）")
            if a != 'y':
                return
            else:
                self._happiness -= 4
        
        if command == "walk":
            self._status = Status.WALK
            print(self._status.value)
        if command == "w":
            self._status = Status.WALK
            print(self._status.value)
        elif command == "play":
            self._status = Status.PLAY
            print(self._status.value)
        elif command == "p":
            self._status = Status.PLAY
            print(self._status.value)
        elif command == "s":
            self._status = Status.DOCTOR
            print(self._status.value) 
        elif command == "seedoctor":
            self._status = Status.DOCTOR
            print(self._status.value)
        elif command == "feed":
            self._status = Status.EAT
            print(self._status.value)
        elif command == "f":
            self._status = Status.EAT
            print(self._status.value)
        else:
            print("我听不懂你在说什么")

    def run(self):
        print("我的名字叫Tommy，一只可爱的猫咪...",
            "\n你可以和我一起散步，玩耍，你也需要给我好吃的东西，带我去看病，也可以让我发呆...",
            "\nCommands:",
            "\n1.walk: 散步\n2.play: 玩耍\n3.feed: 喂我\n4.seedoctor: 看医生",
            "\n5.letalone: 让我独自一人\n6.status: 查看我的状态\n7.bye: 不想看到我\n")
        
        self._fun_timer()
        
        while True:
            command = input("\n你想:")
            if command == "bye":
                break
            elif command == "status":
                self._show_para()
            elif command == "st":
                self._show_para()
            else:
                self._respond(command)

        o = open(self._nest, 'w')
        print(f"{self._hours}\n{self._happiness}\n{self._hungry}\n{self._health}\n{self._status.name}",
            file=o, end='')
        o.close()
        print("记得来找我! Bye...")
        self._timer.cancel()


if __name__ == '__main__':
    tom = Cat('para.txt')  # a cat nesting in this file
    tom.run()                           # start serving