BUILD_DIR = build


all: test test-run


test: $(BUILD_DIR)
	cd $(BUILD_DIR); cmake $(CURDIR); make


test-run:
	$(BUILD_DIR)/lib1_test


$(BUILD_DIR):
	mkdir -p $@


clean:
	rm -rf $(BUILD_DIR)


.PHONY: all cmake clean
