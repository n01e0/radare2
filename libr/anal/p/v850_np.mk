OBJ_V850NP=anal_v850_np.o

STATIC_OBJ+=${OBJ_V850NP}
OBJ_V850NP+=../arch/v850np/v850dis.o
TARGET_V850NP=anal_v850_np.${EXT_SO}

CFLAGS+=-I../arch/v850np/

ALL_TARGETS+=${TARGET_V850NP}

${TARGET_V850NP}: ${OBJ_V850NP} ${SHARED_OBJ}
	${CC} $(call libname,anal_v850_np) ${CFLAGS} \
		-o $(TARGET_V850NP) $(OBJ_V850NP)
