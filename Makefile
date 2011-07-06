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

CC=gcc
CFLAGS=-c -Wall -g 
LDFLAGS=
SOURCES=main.c icmp6.c util.c ip6.c
OBJECTS=$(SOURCES:.c=.o)
HEADERS=includes.h npd6.h
EXECUTABLE=npd6

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)