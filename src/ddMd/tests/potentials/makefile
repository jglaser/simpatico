OBJ_DIR_REL =../../..
include $(OBJ_DIR_REL)/config.mk
include $(OBJ_DIR)/ddMd/config.mk
include $(OBJ_DIR)/inter/config.mk
include $(OBJ_DIR)/util/config.mk
include $(SRC_DIR)/ddMd/patterns.mk
include $(SRC_DIR)/ddMd/sources.mk
include $(SRC_DIR)/inter/sources.mk
include $(SRC_DIR)/util/sources.mk
include $(SRC_DIR)/ddMd/tests/potentials/sources.mk

all: $(ddMd_tests_potentials_OBJS) $(ddMd_tests_potentials_OBJS:.o=)

clean:
	rm -f $(ddMd_tests_potentials_OBJS) $(ddMd_tests_potentials_OBJS:.o=.d)
	rm -f $(ddMd_tests_potentials_OBJS:.o=)

-include $(ddMd_tests_potentials_OBJS:.o=.d)
-include $(ddMd_OBJS:.o=.d)
-include $(inter_OBJS:.o=.d)
-include $(util_OBJS:.o=.d)

