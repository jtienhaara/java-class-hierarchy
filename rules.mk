#
# Copyright (c) 2009-2021 Johann Tienhaara
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

#
# Useful macros:
#

# Directory in which the package exists.
# For example, "musaico/foobar" might contain *.c files for the foobar
# source package, or *.html files for the foobar documentation package,
# and so on.
PACKAGE_DIR = \
	$(PACKAGE)

# Replace slashes in the path with underscores so we
# can turn it into a tar file and so on.
PACKAGE_FILENAME = \
	$(subst /,_,$(PACKAGE))

# Linux-specific commands:
BACKUP = /bin/tar cvzf
BACKUP_PRE = --exclude '*~'
BACKUP_POST = 
COPY = /bin/cp -f
COPY_DIRS = $(COPY) -r
PARENT_DIR = dirname
MKDIR = mkdir -p
REMOVE = /bin/rm -f
REMOVE_DIRS = $(REMOVE) -r



# ==================================================================

#
# Stupid variables for gmake:
# (http://www.gnu.org/software/automake/manual/make/Syntax-of-Functions.html#Syntax-of-Functions)
#
COMMA = ,
EMPTY =
SPACE = $(EMPTY) $(EMPTY)

COLON = :


#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# THIS DIRECTORY RULES
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make xyz in this directory and in its sub-directories.
#
# For example, we might want to just make clean in the current
# directory.  Or we might want to recursively make clean.
#

# ==================================================================
.PHONY: all
all: dist


# ==================================================================
.PHONY: clean
clean: main_clean sub_clean


# This directory only clean.
.PHONY: main_clean
main_clean:


# ==================================================================
.PHONY: prebuild
prebuild: main_prebuild sub_prebuild

# This directory only (not sub-dirs) prebuild.
.PHONY: main_prebuild
main_prebuild:


# ==================================================================
.PHONY: dependsinfo
dependsinfo: main_dependsinfo sub_dependsinfo

# This directory only (not sub-dirs) dependsinfo.
.PHONY: main_dependsinfo
main_dependsinfo:


# ==================================================================
.PHONY: dependscheck
dependscheck: main_dependscheck sub_dependscheck

# This directory only (not sub-dirs) dependscheck.
.PHONY: main_dependscheck
main_dependscheck:


# ==================================================================
.PHONY: compile
compile: main_compile sub_compile

# This directory only (not sub-dirs) compile.
.PHONY: main_compile
main_compile:


# ==================================================================
.PHONY: optimize
optimize: main_optimize sub_optimize

# This directory only (not sub-dirs) optimize.
.PHONY: main_optimize
main_optimize:


# ==================================================================
.PHONY: doc
doc: main_doc sub_doc

# This directory only (not sub-dirs) doc.
.PHONY: main_doc
main_doc:


# ==================================================================
.PHONY: examples
examples: main_examples sub_examples

# This directory only (not sub-dirs) examples.
.PHONY: main_examples
main_examples:


# ==================================================================
.PHONY: lib
lib: main_lib sub_lib

# This directory only (not sub-dirs) lib.
.PHONY: main_lib
main_lib:


# ==================================================================
.PHONY: bin
bin: main_bin sub_bin

# This directory only (not sub-dirs) bin.
.PHONY: main_bin
main_bin:


# ==================================================================
.PHONY: dist
dist: main_dist sub_dist

# This directory only (not sub-dirs) dist.
.PHONY: main_dist
main_dist:


# ==================================================================
.PHONY: install
install: main_install sub_install

# This directory only (not sub-dirs) install.
.PHONY: main_install
main_install:


# ==================================================================
.PHONY: uninstall
uninstall: main_uninstall sub_uninstall

# This directory only (not sub-dirs) uninstall.
.PHONY: main_uninstall
main_uninstall:


# ==================================================================
.PHONY: run
run: main_run sub_run

# This directory only (not sub-dirs) run.
.PHONY: main_run
main_run:


# ==================================================================
.PHONY: profile
profile: main_profile sub_profile

# This directory only (not sub-dirs) profile.
.PHONY: main_profile
main_profile:


# ==================================================================
.PHONY: test
test: main_test sub_test

# This directory only (not sub-dirs) test.
.PHONY: main_test
main_test:


# ==================================================================
.PHONY: help
help:
	@echo "Run make with one of the following targets:"
	@echo "    clean"
	@echo "        Removes all temporary files used for building."
	@echo "    dependsinfo"
	@echo "        Returns all dependencies for the package being compiled."
	@echo "    dependscheck"
	@echo "        Checks all package dependencies, and fails if"
	@echo "        any are not built."
	@echo "    compile"
	@echo "        Compiles the package."
	@echo "    optimize"
	@echo "        Optimizes the compiled package."
	@echo "    doc"
	@echo "        Generates documentation for the package."
	@echo "    examples"
	@echo "        Builds all examples for the package (compile, run, ...)."
	@echo "    lib"
	@echo "        Builds a portable library from the compiled package."
	@echo "    bin"
	@echo "        Builds an executable from the package's library."
	@echo "    dist"
	@echo "        Builds a distribution bundle from the executable,"
	@echo "        documentation, and so on."
	@echo "    install"
	@echo "        Installs the distribution bundle onto the system."
	@echo "    uninstall"
	@echo "        Removes the installed distribution from the system"
	@echo "        (does not touch the distribution bundle)."
	@echo "    run"
	@echo "        Executes the package's executable."
	@echo "    profile"
	@echo "        Builds all profiles for the package (compile, run, ...)."
	@echo "    test"
	@echo "        Builds all tests for the package (compile, run, ...)."
	@echo "    help"
	@echo "        Outputs this help message."


#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# PLATFORM-SPECIFIC RULES
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make xyz for platforms (operating systems, frameworks, cloud
# providers, infrastructure, containers, etc).
#
# For example, we might have different rules for "make clean" on
# Linux vs. Windows vs. MacOS; or we might have different rules
# on Docker Swarm vs. Kubernetes; or for Express.js vs. Koa.js;
# or for browser vs. server vs. mobile; and so on.
#

# ==================================================================
.PHONY: main_clean
main_clean: os_clean platform_clean


# OS-dependent clean.
.PHONY: os_clean
os_clean:

# Platform-dependent clean.
.PHONY: platform_clean
platform_clean:


# ==================================================================
.PHONY: main_prebuild
main_prebuild: os_prebuild platform_prebuild

# OS-dependent prebuild.
.PHONY: os_prebuild
os_prebuild:

# Platform-dependent prebuild.
.PHONY: platform_prebuild
platform_prebuild:


# ==================================================================
.PHONY: main_dependsinfo
main_dependsinfo: os_dependsinfo platform_dependsinfo

# OS-dependent dependsinfo.
.PHONY: os_dependsinfo
os_dependsinfo:

# Platform-dependent dependsinfo.
.PHONY: platform_dependsinfo
platform_dependsinfo:


# ==================================================================
.PHONY: main_dependscheck
main_dependscheck: os_dependscheck platform_dependscheck

# OS-dependent dependscheck.
.PHONY: os_dependscheck
os_dependscheck:

# Platform-dependent dependscheck.
.PHONY: platform_dependscheck
platform_dependscheck:


# ==================================================================
.PHONY: main_compile
main_compile: os_compile platform_compile

# OS-dependent compile.
.PHONY: os_compile
os_compile:

# Platform-dependent compile.
.PHONY: platform_compile
platform_compile:


# ==================================================================
.PHONY: main_optimize
main_optimize: os_optimize platform_optimize

# OS-dependent optimize.
.PHONY: os_optimize
os_optimize:

# Platform-dependent optimize.
.PHONY: platform_optimize
platform_optimize:


# ==================================================================
.PHONY: main_doc
main_doc: os_doc platform_doc

# OS-dependent doc.
.PHONY: os_doc
os_doc:

# Platform-dependent doc.
.PHONY: platform_doc
platform_doc:


# ==================================================================
.PHONY: main_examples
main_examples: os_examples platform_examples

# OS-dependent examples.
.PHONY: os_examples
os_examples:

# Platform-dependent examples.
.PHONY: platform_examples
platform_examples:


# ==================================================================
.PHONY: main_lib
main_lib: os_lib platform_lib

# OS-dependent lib.
.PHONY: os_lib
os_lib:

# Platform-dependent lib.
.PHONY: platform_lib
platform_lib:


# ==================================================================
.PHONY: main_bin
main_bin: os_bin platform_bin

# OS-dependent bin.
.PHONY: os_bin
os_bin:

# Platform-dependent bin.
.PHONY: platform_bin
platform_bin:


# ==================================================================
.PHONY: main_dist
main_dist: main_doc main_examples os_dist platform_dist

# OS-dependent dist.
.PHONY: os_dist
os_dist:

# Platform-dependent dist.
.PHONY: platform_dist
platform_dist:


# ==================================================================
.PHONY: main_install
main_install: os_install platform_install

# OS-dependent install.
.PHONY: os_install
os_install:

# Platform-dependent install.
.PHONY: platform_install
platform_install:


# ==================================================================
.PHONY: main_uninstall
main_uninstall: os_uninstall platform_uninstall

# OS-dependent uninstall.
.PHONY: os_uninstall
os_uninstall:

# Platform-dependent uninstall.
.PHONY: platform_uninstall
platform_uninstall:


# ==================================================================
.PHONY: main_run
main_run: os_run platform_run

# OS-dependent run.
.PHONY: os_run
os_run:

# Platform-dependent run.
.PHONY: platform_run
platform_run:


# ==================================================================
.PHONY: main_profile
main_profile: os_profile platform_profile

# OS-dependent profile.
.PHONY: os_profile
os_profile:

# Platform-dependent profile.
.PHONY: platform_profile
platform_profile:


# ==================================================================
.PHONY: main_test
main_test: os_test platform_test

# OS-dependent test.
.PHONY: os_test
os_test:

# Platform-dependent test.
.PHONY: platform_test
platform_test:


# ==================================================================
# No os-specific or platform-specific help.


# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# SUB-DIRECTORY RULES
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make xyz for sub-directories.
#
# For example, we might want to "make clean" in all the
# sub-directories of the current directory.
#

# ==================================================================
# Makefile-dependent sub-clean
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_clean
sub_clean:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make clean in $$DIR"; \
	  make -C $$DIR clean; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make clean in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-prebuild
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_prebuild
sub_prebuild:
# Do nothing.


# ==================================================================
# Makefile-dependent sub-dependsinfo
# (sub-packages, sub-platforms, sub-deliverables, and so on).
.PHONY: sub_dependsinfo
sub_dependsinfo:
# Do nothing.


# ==================================================================
# Makefile-dependent sub-dependscheck
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_dependscheck
sub_dependscheck:
# Do nothing.


# ==================================================================
# Makefile-dependent sub-compile
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_compile
sub_compile:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make compile in $$DIR"; \
	  make -C $$DIR compile; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make compile in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-optimize
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_optimize
sub_optimize:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make optimize in $$DIR"; \
	  make -C $$DIR optimize; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make optimize in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-doc
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_doc
sub_doc:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make doc in $$DIR"; \
	  make -C $$DIR doc; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make doc in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-examples
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_examples
sub_examples:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make examples in $$DIR"; \
	  make -C $$DIR examples; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make examples in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-lib
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_lib
sub_lib:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make lib in $$DIR"; \
	  make -C $$DIR lib; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make lib in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-bin
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_bin
sub_bin:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make bin in $$DIR"; \
	  make -C $$DIR bin; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make bin in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-dist
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_dist
sub_dist:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make dist in $$DIR"; \
	  make -C $$DIR dist; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make dist in $$DIR"; \
	    exit 1; \
	  fi; \
	done



# ==================================================================
# Makefile-dependent sub-install
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_install
sub_install:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make install in $$DIR"; \
	  make -C $$DIR install; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make install in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-uninstall
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_uninstall
sub_uninstall:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make uninstall in $$DIR"; \
	  make -C $$DIR uninstall; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make uninstall in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-run
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_run
sub_run:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make run in $$DIR"; \
	  make -C $$DIR run; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make run in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-profile
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_profile
sub_profile:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make profile in $$DIR"; \
	  make -C $$DIR profile; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make profile in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# Makefile-dependent sub-test
# (sub-packages, sub-platforms, sub-deliverables and so on).
.PHONY: sub_test
sub_test:
	@for DIR in $(SUB_DIRS); \
	do \
	  echo "Make test in $$DIR"; \
	  make -C $$DIR test; \
	  if test $$? -ne 0; \
	  then \
	    echo "Failed to make test in $$DIR"; \
	    exit 1; \
	  fi; \
	done


# ==================================================================
# No sub-help.
