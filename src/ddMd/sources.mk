include $(SRC_DIR)/ddMd/chemistry/sources.mk
include $(SRC_DIR)/ddMd/storage/sources.mk
include $(SRC_DIR)/ddMd/communicate/sources.mk
include $(SRC_DIR)/ddMd/neighbor/sources.mk
include $(SRC_DIR)/ddMd/simulation/sources.mk
include $(SRC_DIR)/ddMd/configIos/sources.mk
include $(SRC_DIR)/ddMd/potentials/sources.mk
include $(SRC_DIR)/ddMd/integrators/sources.mk
include $(SRC_DIR)/ddMd/diagnostics/sources.mk
include $(SRC_DIR)/ddMd/misc/sources.mk
include $(SRC_DIR)/ddMd/user/sources.mk

ddMd_=$(ddMd_chemistry_) $(ddMd_storage_) \
    $(ddMd_communicate_) $(ddMd_neighbor_) \
    $(ddMd_simulation_) $(ddMd_configIos_) \
    $(ddMd_potentials_) $(ddMd_integrators_) \
    $(ddMd_diagnostics_) \
    $(ddMd_misc_) \
    $(ddMd_user_) 

ddMd_SRCS=\
     $(addprefix $(SRC_DIR)/, $(ddMd_))
ddMd_OBJS=\
     $(addprefix $(BLD_DIR)/, $(ddMd_:.cpp=.o))

$(ddMd_LIB): $(ddMd_OBJS)
	$(AR) rcs $(ddMd_LIB) $(ddMd_OBJS)

