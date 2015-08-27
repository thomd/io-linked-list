doRelativeFile("../LinkedList.io")

e := LinkedList clone
e append("foo")
e append("bar")
e append("baz")

AtInsertTest := UnitTest clone do(

  testInsertOfNode := method(
    e atInsert(2, "goo")
    assertEquals(e asList, list("foo", "bar", "goo", "baz"))
  )

)

