doRelativeFile("../LinkedList.io")

a := LinkedList clone

b := LinkedList clone
b add("foo")

c := LinkedList clone
c add("foo")
c add("bar")
c add("baz")

AddNodesTest := UnitTest clone do(

  testNumberOfNodes := method(
    assertEquals(a size, 0)
    assertEquals(b size, 1)
    assertEquals(c size, 3)
  )

  testHeadNode := method(
    assertNil(a head)

    assertNotNil(b head)
    assertEquals(b head, b tail)

    assertNotNil(c head)
    assertEquals(c head item, "foo")
    assertNotNil(c head next)
    assertNil(c head prev)
    assertEquals(c head next item, "bar")
  )

  testTailNode := method(
    assertNil(a tail)

    assertNil(a tail)

    assertNotNil(b tail)

    assertNotNil(c tail)
    assertEquals(c tail item, "baz")
    assertNotNil(c tail prev)
    assertNil(c tail next)
    assertEquals(c tail prev item, "bar")
  )

)
