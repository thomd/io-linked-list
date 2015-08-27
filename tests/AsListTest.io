doRelativeFile("../LinkedList.io")

AsListTest := UnitTest clone do(

  _list := LinkedList clone
  _list append("foo")
  _list append("bar")
  _list append("baz")

  testAsListNodes := method(
    assertEquals(_list asList, list("foo", "bar", "baz"))
  )

)
