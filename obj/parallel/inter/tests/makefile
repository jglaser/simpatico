OBJ_DIR_REL =../..
include $(OBJ_DIR_REL)/config.mk
include $(OBJ_DIR)/inter/config.mk
include $(OBJ_DIR)/util/config.mk
include $(SRC_DIR)/inter/patterns.mk
include $(SRC_DIR)/inter/sources.mk
include $(SRC_DIR)/util/sources.mk
include $(SRC_DIR)/inter/tests/sources.mk

TEST=inter/tests/Test

all: $(inter_tests_OBJS) $(OBJ_DIR)/$(TEST)

run: $(inter_tests_OBJS) $(OBJ_DIR)/$(TEST)
	$(OBJ_DIR)/$(TEST) $(SRC_DIR)/inter/tests/ > log
	@echo `grep failed log` ", "\
              `grep successful log` "in parallel/inter/tests/log" > count
	@cat count

clean:
	rm -f $(inter_tests_OBJS) $(OBJ_DIR)/$(TEST) $(inter_tests_OBJS:.o=.d)
	rm -f log count

-include $(inter_tests_OBJS:.o=.d)
-include $(inter_OBJS:.o=.d)
-include $(util_OBJS:.o=.d)

