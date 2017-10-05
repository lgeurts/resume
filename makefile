#TODO: I'd like to add multiple versions of my resume as different build targets.
# print: black and white, fully qualified urls
# digital: color? hyperlink'ed urls
BUILD_DIR=build

all: caleb_everett.pdf

caleb_everett.pdf: $(BUILD_DIR) caleb_everett.tex
	@echo "Compiling caleb_everett.tex with rubber"
	@rubber --pdf --into $(BUILD_DIR) caleb_everett.tex
	@cp $(BUILD_DIR)/caleb_everett.pdf .

$(BUILD_DIR):
	@echo "Create build directory $(BUILD_DIR)"
	@mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
