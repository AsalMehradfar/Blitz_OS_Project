header Synch

  -- OS Class: Project 2
  --
  -- <Asal Mehradfar>

  uses Thread

  class Semaphore
    superclass Object
    fields
      count: int
      waitingThreads: List [Thread]
    methods
      Init (initialCount: int)
      Down ()
      Up ()
  endClass

  class Mutex
    superclass Object
    fields
      stat: int                         -- defined by me
      ownMutex: ptr to Thread           -- defined by me
      waitingThreads: List [Thread]
    methods
      Init ()
      Lock ()
      Unlock ()
      IsHeldByCurrentThread () returns bool
  endClass

  class Condition
    superclass Object
    fields
      waitingThreads: List [Thread]
    methods
      Init ()
      Wait (mutex: ptr to Mutex)
      Signal (mutex: ptr to Mutex)
      Broadcast (mutex: ptr to Mutex)
  endClass

endHeader
