extends GutTest

func test_passes() -> void:
	# this test will NOT pass because 1 does NOT equal 0
	assert_eq(1, 0)
