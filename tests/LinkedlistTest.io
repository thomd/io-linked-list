doRelativeFile("../LinkedList.io")

LinkedListTest := UnitTest clone do(

  testNumberOfNodes := method(
    ll := LinkedList
    ll add("foo")
    ll add("bar")
    ll add("baz")
    assertEquals(3, ll size)
  )

)
