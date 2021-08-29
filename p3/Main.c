code Main

  -- OS Class: Project 3
  --
  -- <Asal Mehradfar>
  --

-----------------------------  Main  ---------------------------------

  function main ()

    InitializeScheduler ()
    SleepingBarberProblem ()
    --  ThreadGeneration ()
    ThreadFinish ()
    endFunction

  ------------------------------------------------------------------------------------- Question 1

  const
    CHAIRS = 5 -- num of chairs
    CUSTUMERS = 10  -- num of customers, changable

  var
    customers: Semaphore = new Semaphore -- # of customers waiting for service
    barbers: Semaphore = new Semaphore  -- # of barbers waiting for customers
    mutex: Semaphore = new Semaphore   -- for mutual exclusion
    waiting: int = 0  -- customer are waiting (not being cut)
    newMutex: Semaphore = new Semaphore -- mutex for print
    newCustumers: array [CUSTUMERS] of Semaphore = new array of Semaphore {CUSTUMERS of new Semaphore} -- semaphore for customers
    threadCustumers:  array [CUSTUMERS] of Thread = new array of Thread {CUSTUMERS of new Thread} -- customer threads
    waitingList: array [CHAIRS] of int = new array of int {CHAIRS of 0} -- a waiting list, each point shows the num of the customer who is waiting
    barberThread: Thread = new Thread -- barber thread
    threadName: String -- a name used for making customer threads

  function Init ()
    -- initialization of mutexes and semaphores, mutexes are implemented with semaphores
    var
      i: int
    customers.Init(0)
    barbers.Init(0)
    mutex.Init(1)
    newMutex.Init (1)
    for i = 1 to CUSTUMERS
      newCustumers[i - 1].Init (0)
    endFor
  endFunction

  function SleepingBarberProblem ()
    -- the main part of sleeping barber problem
    var 
      i: int

    Init ()
    PrintFirstLine ()

    -- make barber thread
    barberThread.Init ("Barber")
    barberThread.Fork (barber, 1)

    -- make customer thread
    for i = 0 to CUSTUMERS - 1
      threadName = "t" -- the input of Init thread should be string not char
      threadName[0] =  intToChar (i)
      threadCustumers[i].Init (threadName)
      threadCustumers[i].Fork (customer, i)
    endFor
  endFunction

  function PrintFirstLine ()
    -- easily print the first line of the output
    var
      i: int
    for i = 1 to CHAIRS
      print (" ")
    endFor
    print ("  Barber  ")
    for i = 1 to CUSTUMERS
      printInt (i)
      print (" ")
    endFor
    nl ()
  endFunction

  function PrintBarber (st: ptr to array of char)
    -- print the barber tasks, start and end
    PrintWaiting ()
    print (st)
    nl ()
  endFunction

  function PrintWaiting ()
    -- print the chairs status in the form of XX---
    var 
      i: int

    if waiting >= 1
      for i = 1 to waiting
        print("X")
      endFor
    endIf

    if waiting < CHAIRS
      for i = 1 to CHAIRS - waiting
        print("-")
      endFor
    endIf
    print ("  ")
  endFunction

  function PrintCustomer (str: ptr to array of char, num: int)
    -- print the customers status, E S L F B
    var 
      i: int
    PrintWaiting ()
    print ("        ")
    for i = 0 to CUSTUMERS - 1
      if i == num -- the customer which changed in status
        print (str)
        nl ()
        break
      else
        print ("  ")
      endIf
    endFor
  endFunction

  function barber(junk: int)
    -- the code was copied from the pdf file, just prints added
    -- input junk added because we want to pass the function to a thread
    while true
      customers.Down()  -- go to sleep if # of customers is 0
      mutex.Down()  -- acquire access to 'waiting'
      waiting = waiting - 1 -- decrement count of waiting customers
      PrintBarber ("start")
      PrintCustomer ("B", waitingList[waiting])
      barbers.Up()  -- one barber is now ready to cut hair
      mutex.Up() -- release 'waiting'
      cut_hair(waitingList[waiting]) --cut hair (outside critical region)
    endWhile
  endFunction

  function customer(num: int)
    -- the code was copied from the pdf file, just prints added
    -- input num shows the number of the customer which enters the room
    mutex.Down()  -- enter critical region
    PrintCustomer ("E", num)
    if waiting < CHAIRS -- if there are no free chairs, leave
      waitingList[waiting] = num
      waiting = waiting + 1 -- increment count of waiting customers
      PrintCustomer ("S", num)
      customers.Up()  -- wake up barber if necessary
      mutex.Up()  -- release access to 'waiting'
      barbers.Down()  -- go to sleep if # of free barbers is 0
      get_haircut(num) -- be seated and be served
    else
      PrintCustomer ("L", num)
      mutex.Up()  -- shop is full; do not wait
    endIf
  endFunction

  function cut_hair(num: int)
    -- cut hair just by printing the tasks of barber which ends and F for finishing
    newMutex.Down ()
    BusyWait ()
    PrintCustomer ("F", num)
    PrintBarber ("end")
    newCustumers[num].Up ()
    newMutex.Up ()
  endFunction

  function BusyWait ()
    var  
      i: int
    for i = 0 to 100
    endFor
  endFunction

  function get_haircut(num: int)
    -- get hair cut just by leaving the room with printing L
    newCustumers[num].Down ()
    newMutex.Down ()
    BusyWait ()
    PrintCustomer ("L", num)
    newMutex.Up ()
  endFunction

  ------------------------------------------------------------------------------------- Question 2

  const
    TOT_DICE = 8 -- num of dices on the desk

  var
    mon: GameParlor = new GameParlor -- making an instance of GameParlor class
    players: array [8] of Thread = new array of Thread {8 of new Thread} -- player threads

  function ThreadGeneration ()
    -- the main part of game parlor, making player threads
    mon.Init ()

    players[0].Init ("A")
    players[0].Fork (Play, 4)

    players[1].Init ("B")
    players[1].Fork (Play, 4)

    players[2].Init ("C")
    players[2].Fork (Play, 5)

    players[3].Init ("D")
    players[3].Fork (Play, 5)

    players[4].Init ("E")
    players[4].Fork (Play, 2)

    players[5].Init ("F")
    players[5].Fork (Play, 2)

    players[6].Init ("G")
    players[6].Fork (Play, 1)

    players[7].Init ("H")
    players[7].Fork (Play, 1)

  endFunction

  function Play (p: int)
    -- each players plays for 5 times, looping this 5 times here
    var
      i: int

    for i = 1 to 5
      mon.Request(p)
      mon.Return (p)
    endFor
  endFunction

  -- the class
  behavior GameParlor  

    method Init ()
      -- initialization
      numberDiceAvail = TOT_DICE
      lock = new Mutex
      lock.Init ()
      condition = new Condition
      condition.Init ()
    endMethod

    method Print (str: String, count: int)
    -- copied from the pdf file
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.

      print (currentThread.name)
      print (" ")
      print (str)
      print (" ")
      printInt (count)
      nl ()
      print ("------------------------------Number of dice now avail = ")
      printInt (numberDiceAvail)
      nl ()
    endMethod

    method Request (numberOfDice: int)
      -- request at first, if the player can pick dice he wants, we will give him
      lock.Lock ()
      self.Print ("requests", numberOfDice)
      while numberDiceAvail < numberOfDice
        condition.Wait (&lock)
      endWhile
      numberDiceAvail = numberDiceAvail - numberOfDice
      self.Print ("proceeds with", numberOfDice)
      lock.Unlock ()
    endMethod

    method Return (numberOfDice: int)
      -- the player releases the dice and put them in desk
      lock.Lock ()
      numberDiceAvail = numberDiceAvail + numberOfDice
      self.Print ("releases and adds back", numberOfDice)
      condition.Signal (&lock)
      lock.Unlock ()
    endMethod
  endBehavior

endCode