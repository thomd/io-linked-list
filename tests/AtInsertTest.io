doRelativeFile("../LinkedList.io")

AtInsertTest := UnitTest clone do(

  _list := LinkedList clone

  testInsertOfNode := method(

    assertRaisesException(_list atInsert(-1, "foo"))

    _list atInsert(0, "foo")
    assertEquals(list("foo"), _list asList)
    assertEquals(1, _list size)

    _list atInsert(1, "baz")
    assertEquals(list("foo", "baz"), _list asList)
    assertEquals(2, _list size)

    _list atInsert(1, "bar")
    assertEquals(list("foo", "bar", "baz"), _list asList)
    assertEquals(3, _list size)

    assertRaisesException(_list atInsert(4, "goo"))
  )

)

