cmake_minimum_required(VERSION 3.0)
if(COMMAND cmake_policy)
    cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# ======
# Project information
project(ibusqt)
set(AUTHORS "Peng Huang")
set(MAINTAINER "Peng Huang <shawn.p.huang at gmail dot com>")
set(VERSION_MAJOR "1")
set(VERSION_MINOR "3")
set(VERSION_PATCH "1")
set(VERSION_SNAPDATE "")
set(LIB_VERSION "1.3.0")
set(LIB_SOVERSION "1")

set (VERSION ${LIB_VERSION})

find_package(Qt5 5.4 REQUIRED COMPONENTS DBus Xml)

find_package(PkgConfig REQUIRED)
find_package(ICU REQUIRED)
pkg_check_modules(DBUS REQUIRED dbus-1)

include_directories(
    ${DBUS_INCLUDE_DIRS}
)

link_directories(
    ${DBUS_LIBRARY_DIRS}
)

set(
    ibusqt_SRCS
    qibusobject.cpp
    qibusserializable.cpp
    qibusattribute.cpp
    qibusattrlist.cpp
    qibusproperty.cpp
    qibusproplist.cpp
    qibustext.cpp
    qibuslookuptable.cpp
    qibusenginedesc.cpp
    qibuscomponent.cpp
    qibusibusproxy.cpp
    qibusdbusproxy.cpp
    qibusinputcontextproxy.cpp
    qibusbus.cpp
    qibusinputcontext.cpp
    qibusobservedpath.cpp
    qibusengineadaptor.cpp
    qibusengine.cpp
    qibusfactoryadaptor.cpp
    qibusenginefactory.cpp
    qibusconfigadaptor.cpp
    qibusconfigproxy.cpp
    qibusconfigservice.cpp
    qibusconfig.cpp
)

set(
    ibusqt_HDRS
    qibusobject.h
    qibusserializable.h
    qibusattribute.h
    qibusattrlist.h
    qibusproperty.h
    qibusproplist.h
    qibustext.h
    qibuslookuptable.h
    qibusenginedesc.h
    qibuscomponent.h
    qibusibusproxy.h
    qibusdbusproxy.h
    qibusinputcontextproxy.h
    qibusbus.h
    qibusinputcontext.h
    qibusobservedpath.h
    qibusengineadaptor.h
    qibusengine.h
    qibusfactoryadaptor.h
    qibusenginefactory.h
    qibusconfigadaptor.h
    qibusconfigproxy.h
    qibusconfigservice.h
    qibusconfig.h
    qibuspointer.h
    qibustypes.h
)

QT5_WRAP_CPP(
    ibusqt_MOC_SRCS
    ${ibusqt_HDRS}
)

add_library(
    ibusqt
    SHARED
    ${ibusqt_SRCS}
    ${ibusqt_MOC_SRCS}
)

set_target_properties(
    ibusqt PROPERTIES
    VERSION ${LIB_VERSION}
    SOVERSION ${LIB_SOVERSION}
)

target_link_libraries(
    ibusqt
    Qt5::Core
    Qt5::DBus
    Qt5::Xml
    ${DBUS_LIBRARIES}
)

install(TARGETS ibusqt
    LIBRARY DESTINATION ${LIBDIR})
install(FILES ${ibusqt_HDRS}
    DESTINATION include/ibusqt COMPONENT Devel)

# Config and install pc file
set (prefix ${CMAKE_INSTALL_PREFIX})
set (exec_prefix ${CMAKE_INSTALL_PREFIX})
set (libdir ${CMAKE_INSTALL_PREFIX}/${CMAKE_SHARED_LIBRARY_PREFIX})
set (includedir ${CMAKE_INSTALL_PREFIX}/include)

configure_file(
    ibusqt.pc.in
    ibusqt.pc
    @ONLY
)

install(
    FILES
        ${CMAKE_BINARY_DIR}/ibusqt.pc
    DESTINATION
        ${CMAKE_INSTALL_PREFIX}/${CMAKE_SHARED_LIBRARY_PREFIX}/pkgconfig
)
