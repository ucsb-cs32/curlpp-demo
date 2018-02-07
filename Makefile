# CXX=clang++
CXX=g++

# We have -Wno-unused-parameter so that the compiler
# doesn't complain too much about our stubs.

CXXFLAGS = -g -std=c++11 -Wall -Wextra -Wno-unused-parameter -Wno-unused-private-field -I/usr/include/jsoncpp

# Change to this before final submission:

#CXXFLAGS = -std=c++11 -Wall -Wextra -Werror

LINK_JSONCPP= -ljsoncpp

LINK_CURLPP= -Wl,-Bsymbolic-functions -Wl,-z,relro -lcurlpp -lstdc++ -lcurl

BINARIES= CurlPPDemo00

all: ${BINARIES}

CurlPPDemo00: CurlPPDemo00.o 
	${CXX} $^ ${LINK_CURLPP}  -o $@

clean:
	/bin/rm -f ${BINARIES} *.o
