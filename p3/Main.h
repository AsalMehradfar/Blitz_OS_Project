header Main

  uses System, Thread, Synch

  functions
    main ()

  class GameParlor
    superclass Object
    fields
      numberDiceAvail: int
      lock: Mutex
      condition: Condition
    methods
      Init ()
      Print (str: String, count: int)
      Request (numberOfDice: int)
      Return (numberOfDice: int)
  endClass

endHeader
