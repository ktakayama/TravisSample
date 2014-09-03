
PROJECT = TravisSample.xcworkspace
TEST_TARGET = TravisSample

clean:
	xcodebuild \
	   -workspace $(PROJECT) \
	   clean

test:
	xcodebuild \
	   -workspace $(PROJECT) \
	   -scheme $(TEST_TARGET) \
	   -sdk iphonesimulator \
	   -configuration Debug \
	   -destination "name=iPhone Retina (4-inch),OS=7.1" \
	   test

