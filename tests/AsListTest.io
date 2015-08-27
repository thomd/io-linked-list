doRelativeFile("../LinkedList.io")

d := LinkedList clone
d append("foo")
d append("bar")
d append("baz")

AsListTest := UnitTest clone do(

  testAsListNodes := method(
    assertEquals(d asList, list("foo", "bar", "baz"))
  )

)
