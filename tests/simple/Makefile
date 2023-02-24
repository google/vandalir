DEST ?= ./out

SDIR=src
BUILD = $(DEST)/

SRCS := $(patsubst  src/%, %, $(wildcard  src/good/*))
SRCS += $(patsubst src/%, %, $(wildcard src/bad/*))

LL := $(patsubst %.cpp, $(BUILD)/%.ll, $(patsubst %.c, $(BUILD)/%.ll, $(SRCS)))
BC := $(patsubst %.cpp, $(BUILD)/%.bc, $(patsubst %.c, $(BUILD)/%.bc, $(SRCS)))
ELF := $(patsubst %.cpp, $(BUILD)/%.elf, $(patsubst %.c, $(BUILD)/%.elf, $(SRCS)))

$(BUILD)/%.ll: $(SDIR)/%.c
		clang -S -c $< -emit-llvm  -o $@

$(BUILD)/%.ll: $(SDIR)/%.cpp
		clang++ -std=c++1y -S -c $< -emit-llvm  -o $@

$(BUILD)/%.bc: $(SDIR)/%.c
		clang  -c $< -emit-llvm  -o $@

$(BUILD)/%.bc: $(SDIR)/%.cpp
		clang++ -std=c++1y -c $< -emit-llvm  -o $@

$(BUILD)/%.elf: $(SDIR)/%.c
		clang -fsanitize=address -fno-omit-frame-pointer  $< -o $@

$(BUILD)/%.elf: $(SDIR)/%.cpp
		clang++ -std=c++1y -fsanitize=address -fno-omit-frame-pointer  $< -o $@

all: build_dir $(LL) $(BC) $(ELF)

build_dir:
	@mkdir -p $(BUILD)/good
	@mkdir -p $(BUILD)/bad

.PHONY: clean build_dir

clean:
	rm -rf $(BUILD)
