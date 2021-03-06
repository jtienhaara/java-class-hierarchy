#!/usr/bin/make

#
# Copyright (c) 2012-2021 Johann Tienhaara <jtienhaara@yahoo.com>
# All rights reserved.
#
# This file is part of Musaico.
#
# Musaico is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Musaico is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Musaico.  If not, see <http://www.gnu.org/licenses/>.
#

PACKAGE = classhierarchy
VERSION = 1.0.0


PACKAGE_DEPENDENCIES = 


COMPILABLES = \
	ClassHierarchy.class

RESOURCES = 

SUB_PACKAGES = 

SUB_DIRS = $(SUB_PACKAGES)

JAVADOC_OVERVIEW = \
	overview.html
JAR_MANIFEST = \
	MANIFEST.MF

# Toplevel rules for the user (compile, test, doc, lib, and so on).
include rules.mk

# Now include the Java make variables and rules.
include java.mk
