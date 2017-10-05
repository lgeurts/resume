# TODO: I'd like to add multiple versions of my resume as different build targets.
# print: black and white, fully qualified urls
# digital: color? hyperlink'ed urls
BUILD_DIR=build

all: luc_geurts.pdf

luc_geurts.pdf: $(BUILD_DIR) luc_geurts.tex
	@echo "Compiling luc_geurts.tex with rubber"
	@rubber --pdf --into $(BUILD_DIR) luc_geurts.tex
	@cp $(BUILD_DIR)/luc_geurts.pdf .

$(BUILD_DIR):
	@echo "Create build directory $(BUILD_DIR)"
	@mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
