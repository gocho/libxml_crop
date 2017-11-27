#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Static_Library_x86
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/libxml_crop/src/SAX.o \
	${OBJECTDIR}/libxml_crop/src/SAX2.o \
	${OBJECTDIR}/libxml_crop/src/buf.o \
	${OBJECTDIR}/libxml_crop/src/catalog.o \
	${OBJECTDIR}/libxml_crop/src/chvalid.o \
	${OBJECTDIR}/libxml_crop/src/dict.o \
	${OBJECTDIR}/libxml_crop/src/encoding.o \
	${OBJECTDIR}/libxml_crop/src/entities.o \
	${OBJECTDIR}/libxml_crop/src/error.o \
	${OBJECTDIR}/libxml_crop/src/globals.o \
	${OBJECTDIR}/libxml_crop/src/hash.o \
	${OBJECTDIR}/libxml_crop/src/legacy.o \
	${OBJECTDIR}/libxml_crop/src/list.o \
	${OBJECTDIR}/libxml_crop/src/parser.o \
	${OBJECTDIR}/libxml_crop/src/parserInternals.o \
	${OBJECTDIR}/libxml_crop/src/pattern.o \
	${OBJECTDIR}/libxml_crop/src/relaxng.o \
	${OBJECTDIR}/libxml_crop/src/threads.o \
	${OBJECTDIR}/libxml_crop/src/tree.o \
	${OBJECTDIR}/libxml_crop/src/uri.o \
	${OBJECTDIR}/libxml_crop/src/valid.o \
	${OBJECTDIR}/libxml_crop/src/xinclude.o \
	${OBJECTDIR}/libxml_crop/src/xlink.o \
	${OBJECTDIR}/libxml_crop/src/xmlIO.o \
	${OBJECTDIR}/libxml_crop/src/xmlmemory.o \
	${OBJECTDIR}/libxml_crop/src/xmlreader.o \
	${OBJECTDIR}/libxml_crop/src/xmlsave.o \
	${OBJECTDIR}/libxml_crop/src/xmlschemas.o \
	${OBJECTDIR}/libxml_crop/src/xmlschemastypes.o \
	${OBJECTDIR}/libxml_crop/src/xmlstring.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibxml_crop.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibxml_crop.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibxml_crop.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibxml_crop.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibxml_crop.a

${OBJECTDIR}/libxml_crop/src/SAX.o: libxml_crop/src/SAX.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/SAX.o libxml_crop/src/SAX.c

${OBJECTDIR}/libxml_crop/src/SAX2.o: libxml_crop/src/SAX2.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/SAX2.o libxml_crop/src/SAX2.c

${OBJECTDIR}/libxml_crop/src/buf.o: libxml_crop/src/buf.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/buf.o libxml_crop/src/buf.c

${OBJECTDIR}/libxml_crop/src/catalog.o: libxml_crop/src/catalog.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/catalog.o libxml_crop/src/catalog.c

${OBJECTDIR}/libxml_crop/src/chvalid.o: libxml_crop/src/chvalid.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/chvalid.o libxml_crop/src/chvalid.c

${OBJECTDIR}/libxml_crop/src/dict.o: libxml_crop/src/dict.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/dict.o libxml_crop/src/dict.c

${OBJECTDIR}/libxml_crop/src/encoding.o: libxml_crop/src/encoding.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/encoding.o libxml_crop/src/encoding.c

${OBJECTDIR}/libxml_crop/src/entities.o: libxml_crop/src/entities.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/entities.o libxml_crop/src/entities.c

${OBJECTDIR}/libxml_crop/src/error.o: libxml_crop/src/error.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/error.o libxml_crop/src/error.c

${OBJECTDIR}/libxml_crop/src/globals.o: libxml_crop/src/globals.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/globals.o libxml_crop/src/globals.c

${OBJECTDIR}/libxml_crop/src/hash.o: libxml_crop/src/hash.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/hash.o libxml_crop/src/hash.c

${OBJECTDIR}/libxml_crop/src/legacy.o: libxml_crop/src/legacy.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/legacy.o libxml_crop/src/legacy.c

${OBJECTDIR}/libxml_crop/src/list.o: libxml_crop/src/list.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/list.o libxml_crop/src/list.c

${OBJECTDIR}/libxml_crop/src/parser.o: libxml_crop/src/parser.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/parser.o libxml_crop/src/parser.c

${OBJECTDIR}/libxml_crop/src/parserInternals.o: libxml_crop/src/parserInternals.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/parserInternals.o libxml_crop/src/parserInternals.c

${OBJECTDIR}/libxml_crop/src/pattern.o: libxml_crop/src/pattern.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/pattern.o libxml_crop/src/pattern.c

${OBJECTDIR}/libxml_crop/src/relaxng.o: libxml_crop/src/relaxng.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/relaxng.o libxml_crop/src/relaxng.c

${OBJECTDIR}/libxml_crop/src/threads.o: libxml_crop/src/threads.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/threads.o libxml_crop/src/threads.c

${OBJECTDIR}/libxml_crop/src/tree.o: libxml_crop/src/tree.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/tree.o libxml_crop/src/tree.c

${OBJECTDIR}/libxml_crop/src/uri.o: libxml_crop/src/uri.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/uri.o libxml_crop/src/uri.c

${OBJECTDIR}/libxml_crop/src/valid.o: libxml_crop/src/valid.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/valid.o libxml_crop/src/valid.c

${OBJECTDIR}/libxml_crop/src/xinclude.o: libxml_crop/src/xinclude.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xinclude.o libxml_crop/src/xinclude.c

${OBJECTDIR}/libxml_crop/src/xlink.o: libxml_crop/src/xlink.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xlink.o libxml_crop/src/xlink.c

${OBJECTDIR}/libxml_crop/src/xmlIO.o: libxml_crop/src/xmlIO.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlIO.o libxml_crop/src/xmlIO.c

${OBJECTDIR}/libxml_crop/src/xmlmemory.o: libxml_crop/src/xmlmemory.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlmemory.o libxml_crop/src/xmlmemory.c

${OBJECTDIR}/libxml_crop/src/xmlreader.o: libxml_crop/src/xmlreader.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlreader.o libxml_crop/src/xmlreader.c

${OBJECTDIR}/libxml_crop/src/xmlsave.o: libxml_crop/src/xmlsave.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlsave.o libxml_crop/src/xmlsave.c

${OBJECTDIR}/libxml_crop/src/xmlschemas.o: libxml_crop/src/xmlschemas.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlschemas.o libxml_crop/src/xmlschemas.c

${OBJECTDIR}/libxml_crop/src/xmlschemastypes.o: libxml_crop/src/xmlschemastypes.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlschemastypes.o libxml_crop/src/xmlschemastypes.c

${OBJECTDIR}/libxml_crop/src/xmlstring.o: libxml_crop/src/xmlstring.c
	${MKDIR} -p ${OBJECTDIR}/libxml_crop/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Ilibxml_crop/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/libxml_crop/src/xmlstring.o libxml_crop/src/xmlstring.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
