# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := pingRead
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=pingRead' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions

INCS_Debug := \
	-I/root/.node-gyp/0.12.1/src \
	-I/root/.node-gyp/0.12.1/deps/uv/include \
	-I/root/.node-gyp/0.12.1/deps/v8/include \
	-I/usr/local/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=pingRead' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-O3 \
	-ffunction-sections \
	-fdata-sections \
	-fno-tree-vrp \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions

INCS_Release := \
	-I/root/.node-gyp/0.12.1/src \
	-I/root/.node-gyp/0.12.1/deps/uv/include \
	-I/root/.node-gyp/0.12.1/deps/v8/include \
	-I/usr/local/include

OBJS := \
	$(obj).target/$(TARGET)/pingRead.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-lwiringPi

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-lwiringPi

LIBS :=

$(obj).target/pingRead.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/pingRead.node: LIBS := $(LIBS)
$(obj).target/pingRead.node: TOOLSET := $(TOOLSET)
$(obj).target/pingRead.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/pingRead.node
# Add target alias
.PHONY: pingRead
pingRead: $(builddir)/pingRead.node

# Copy this to the executable output path.
$(builddir)/pingRead.node: TOOLSET := $(TOOLSET)
$(builddir)/pingRead.node: $(obj).target/pingRead.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/pingRead.node
# Short alias for building this executable.
.PHONY: pingRead.node
pingRead.node: $(obj).target/pingRead.node $(builddir)/pingRead.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/pingRead.node

