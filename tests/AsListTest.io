doRelativeFile("../LinkedList.io")

d := LinkedList clone
d add("foo")
d add("bar")
d add("baz")

AsListTest := UnitTest clone do(

  testAsListNodes := method(
    assertEquals(d asList, list("foo", "bar", "baz"))
  )

)
