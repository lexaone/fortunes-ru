#
# Copyright (c) Dayneko Roman (skolot@skolot.org.ua skolot@skif.com.ua)
# 
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
# 
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#  
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, 
#   USA.
#


PREFIX=/usr
INSTALLPATH=${PREFIX}/share/games/fortunes/ru
INSTALL?=/usr/bin/install -g 0 -o 0

all:
	@echo type "make install"

install:
	${INSTALL} -m 0755 -d ${DESTDIR}${INSTALLPATH}
	${INSTALL} -m 644 acid_jack/* kaschey/* vekshin/* sony/* lexaone/* ${DESTDIR}${INSTALLPATH}
to_ru:
	rm -rf ru
	mkdir ru
	cp acid_jack/* kaschey/* vekshin/* sony/* lexaone/* ru/
	@for f in $(shell ls ru/*.u8 );do strfile $${f};done
