doRelativeFile("../LinkedList.io")

AtTest := UnitTest clone do(

  testEmptyList := method(
    _list := LinkedList clone
    assertNil(_list at(-1))
    assertNil(_list at(0))
    assertNil(_list at(1))
  )

  testListWithMultipleNodes := method(
    _list := LinkedList clone
    _list append("foo")
    _list append("bar")
    _list append("baz")
    assertNil(_list at(-1))
    assertEquals(_list at(0) item, "foo")
    assertEquals(_list at(1) item, "bar")
    assertEquals(_list at(2) item, "baz")
    assertNil(_list at(3))
  )

)

