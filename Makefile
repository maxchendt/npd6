#
#   This software is Copyright 2011 by Sean Groarke <sgroarke@gmail.com>
#   All rights reserved.
#
#   This file is part of npd6.
#
#   npd6 is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   npd6 is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with npd6.  If not, see <http://www.gnu.org/licenses/>.
#

# $Id$
# $HeadURL$

VERSION=1.1.0

CC=gcc
CFLAGS= -Wall -g -O3 
LDFLAGS=
SOURCES=src/main.c \
	src/icmp6.c \
	src/util.c \
	src/ip6.c \
	src/config.c \
	src/expintf.c \
	src/exparser.c
	
OBJECTS=$(SOURCES:.c=.o)
HEADERS=includes.h npd6.h
EXECUTABLE=src/npd6
INSTALL_PREFIX=/usr
MAN_PREFIX=/usr/share/man
DEBIAN=debian/
TARGZ=npd6-$(VERSION)
DEV:= -D'BUILDREV="$(VERSION).$(shell git describe --always )"'

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $(DEV) -c $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)

distclean:
	rm -rf $(OBJECTS) $(EXECUTABLE)
	rm -rf debian/etc/
	rm -rf debian/usr/
	rm -rf debian/DEBIAN/
	rm -rf debian/npd6/
	rm -rf debian/files
#	rm -rf debian/npd6.*
	rm -rf debian/*debhelper*
	rm -rf debian/npd6.substvars
	rm -f npd6*.deb

