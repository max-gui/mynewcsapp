# Makefile.in generated by automake 1.7.8 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# Automake input for strace.

srcdir = .
top_srcdir = .

pkgdatadir = $(datadir)/strace
pkglibdir = $(libdir)/strace
pkgincludedir = $(includedir)/strace
top_builddir = .

am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = /usr/bin/install -c
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_triplet = i686-redhat-linux-gnu
ACLOCAL = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run aclocal-1.7
AMDEP_FALSE = #
AMDEP_TRUE = 
AMTAR = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run tar
AUTOCONF = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run autoconf
AUTOHEADER = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run autoheader
AUTOMAKE = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run automake-1.7
AWK = gawk
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -D_GNU_SOURCE -g -O2
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = grep -E
EXEEXT = 
FREEBSD_FALSE = 
FREEBSD_TRUE = #
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LDFLAGS = 
LIBOBJS = 
LIBS = 
LINUX_FALSE = #
LINUX_TRUE = 
LTLIBOBJS = 
MAINT = #
MAINTAINER_MODE_FALSE = 
MAINTAINER_MODE_TRUE = #
MAKEINFO = ${SHELL} /usr0/droh/ics/code/strace-4.5.3/missing --run makeinfo
OBJEXT = o
PACKAGE = strace
PACKAGE_BUGREPORT = 
PACKAGE_NAME = strace
PACKAGE_STRING = strace 4.5.3
PACKAGE_TARNAME = strace
PACKAGE_VERSION = 4.5.3
PATH_SEPARATOR = :
PERL = /usr/local/bin/perl
SET_MAKE = 
SHELL = /bin/sh
STRIP = 
SUNOS4_FALSE = 
SUNOS4_TRUE = #
SVR4_FALSE = 
SVR4_TRUE = #
VERSION = 4.5.3
WARNFLAGS = -Wall
X86_64_FALSE = 
X86_64_TRUE = #
ac_ct_CC = gcc
ac_ct_STRIP = 
am__fastdepCC_FALSE = #
am__fastdepCC_TRUE = 
am__include = include
am__leading_dot = .
am__quote = 
arch = i386
bindir = ${exec_prefix}/bin
build = i686-redhat-linux-gnu
build_alias = 
build_cpu = i686
build_os = linux-gnu
build_vendor = redhat
datadir = ${prefix}/share
exec_prefix = ${prefix}
host = i686-redhat-linux-gnu
host_alias = 
host_cpu = i686
host_os = linux-gnu
host_vendor = redhat
includedir = /usr/include
infodir = ${prefix}/info
install_sh = /usr0/droh/ics/code/strace-4.5.3/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localstatedir = ${prefix}/var
mandir = ${prefix}/man
oldincludedir = /usr/include
opsys = linux
prefix = /usr/local
program_transform_name = s,x,x,
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
sysconfdir = ${prefix}/etc
target_alias = 

bin_PROGRAMS = strace
man_MANS = strace.1
bin_SCRIPTS = strace-graph

# OS is one of `linux', `sunos4', `svr4', or `freebsd'.
OS = linux
# ARCH is `i386', `m68k', `sparc', etc.
ARCH = i386

AM_CFLAGS = $(WARNFLAGS)
INCLUDES = -I$(OS)/$(ARCH) -I$(srcdir)/$(OS)/$(ARCH) -I$(OS) -I$(srcdir)/$(OS)

strace_SOURCES = strace.c syscall.c util.c desc.c file.c ipc.c \
		 io.c ioctl.c mem.c net.c process.c bjm.c \
		 resource.c signal.c sock.c system.c term.c time.c \
		 proc.c stream.c

noinst_HEADERS = defs.h

EXTRA_DIST = $(man_MANS) errnoent.sh signalent.sh syscallent.sh ioctlsort.c \
     	     debian/changelog debian/control debian/copyright debian/rules \
	     strace.spec \
	     strace-graph COPYRIGHT CREDITS PORTING \
	     README-CVS README-freebsd README-linux README-sunos4 README-svr4 \
	     linux/ioctlsort.c linux/ioctlent.sh \
	     linux/ioctlent.h linux/errnoent.h linux/signalent.h \
	     linux/syscall.h linux/syscallent.h linux/dummy.h \
	     linux/alpha/errnoent.h linux/alpha/ioctlent.h \
	     linux/alpha/signalent.h linux/alpha/syscallent.h \
	     linux/hppa/errnoent.h linux/hppa/ioctlent.h \
	     linux/hppa/signalent.h linux/hppa/syscallent.h \
	     linux/ia64/syscallent.h linux/ia64/errnoent.h \
	     linux/ia64/ioctlent.h linux/ia64/signalent.h \
     	     linux/mips/ioctlent.sh linux/mips/errnoent.h \
	     linux/mips/ioctlent.h linux/mips/signalent.h \
	     linux/mips/syscallent.h \
	     linux/powerpc/syscallent.h \
	     linux/powerpc/errnoent.h linux/powerpc/ioctlent.h \
	     linux/powerpc/signalent.h \
	     linux/s390/errnoent.h linux/s390/ioctlent.h \
	     linux/s390/signalent.h linux/s390/syscallent.h \
	     linux/s390x/errnoent.h linux/s390x/ioctlent.h \
	     linux/s390x/signalent.h linux/s390x/syscallent.h \
	     linux/sh/syscallent.h linux/sh/errnoent.h \
	     linux/sh/ioctlent.h linux/sh/signalent.h \
	     linux/sparc/dummy2.h \
	     linux/sparc/errnoent.h linux/sparc/errnoent1.h \
	     linux/sparc/ioctlent.h linux/sparc/ioctlent1.h \
	     linux/sparc/signalent.h linux/sparc/signalent1.h \
	     linux/sparc/syscall.h linux/sparc/syscall1.h \
	     linux/sparc/syscallent.h linux/sparc/syscallent1.h \
	     linux/sparc/gen.pl linux/sparc/syscall.h.2 \
	     linux/x86_64/syscallent.h linux/x86_64/gentab.pl \
	     linux/x86_64/errnoent1.h linux/x86_64/ioctlent1.h \
	     linux/x86_64/signalent1.h linux/x86_64/syscallent1.h \
	     freebsd/ioctlent.sh \
	     freebsd/syscalls.cat freebsd/syscalls.pl freebsd/syscalls.print \
	     freebsd/i386/errnoent.h freebsd/i386/ioctlent.h \
	     freebsd/i386/signalent.h \
	     freebsd/i386/syscall.h freebsd/i386/syscallent.h \
	     sunos4/dummy.h sunos4/errnoent.h \
	     sunos4/ioctlent.h sunos4/ioctlent.sh sunos4/signalent.h \
	     sunos4/syscall.h sunos4/syscallent.h \
	     svr4/dummy.h svr4/errnoent.h svr4/ioctlent.h svr4/ioctlent.sh \
	     svr4/signalent.h svr4/syscall.h svr4/syscallent.h

subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES =
bin_PROGRAMS = strace$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)

am_strace_OBJECTS = strace.$(OBJEXT) syscall.$(OBJEXT) util.$(OBJEXT) \
	desc.$(OBJEXT) file.$(OBJEXT) ipc.$(OBJEXT) io.$(OBJEXT) \
	ioctl.$(OBJEXT) mem.$(OBJEXT) net.$(OBJEXT) process.$(OBJEXT) \
	bjm.$(OBJEXT) resource.$(OBJEXT) signal.$(OBJEXT) \
	sock.$(OBJEXT) system.$(OBJEXT) term.$(OBJEXT) time.$(OBJEXT) \
	proc.$(OBJEXT) stream.$(OBJEXT)
strace_OBJECTS = $(am_strace_OBJECTS)
strace_LDADD = $(LDADD)
strace_DEPENDENCIES =
strace_LDFLAGS =
SCRIPTS = $(bin_SCRIPTS)


DEFAULT_INCLUDES =  -I. -I$(srcdir) -I.
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_maybe = depfiles
DEP_FILES = ./$(DEPDIR)/bjm.Po ./$(DEPDIR)/desc.Po \
	./$(DEPDIR)/file.Po ./$(DEPDIR)/io.Po \
	./$(DEPDIR)/ioctl.Po ./$(DEPDIR)/ipc.Po \
	./$(DEPDIR)/mem.Po ./$(DEPDIR)/net.Po \
	./$(DEPDIR)/proc.Po ./$(DEPDIR)/process.Po \
	./$(DEPDIR)/resource.Po ./$(DEPDIR)/signal.Po \
	./$(DEPDIR)/sock.Po ./$(DEPDIR)/strace.Po \
	./$(DEPDIR)/stream.Po ./$(DEPDIR)/syscall.Po \
	./$(DEPDIR)/system.Po ./$(DEPDIR)/term.Po \
	./$(DEPDIR)/time.Po ./$(DEPDIR)/util.Po
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
DIST_SOURCES = $(strace_SOURCES)

NROFF = nroff
MANS = $(man_MANS)
HEADERS = $(noinst_HEADERS)

DIST_COMMON = README $(noinst_HEADERS) $(srcdir)/Makefile.in \
	$(srcdir)/configure AUTHORS COPYING ChangeLog INSTALL \
	Makefile.am NEWS TODO acinclude.m4 aclocal.m4 compile \
	config.guess config.h.in config.sub configure configure.ac \
	depcomp install-sh missing mkinstalldirs
SOURCES = $(strace_SOURCES)

all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
.SUFFIXES: .c .o .obj

am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno
$(srcdir)/Makefile.in: # Makefile.am  $(top_srcdir)/configure.ac $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --foreign  Makefile
Makefile: # $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)

$(top_builddir)/config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure: # $(srcdir)/configure.ac $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

$(ACLOCAL_M4): # configure.ac acinclude.m4
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h

$(srcdir)/config.h.in: # $(top_srcdir)/configure.ac $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOHEADER)
	touch $(srcdir)/config.h.in

distclean-hdr:
	-rm -f config.h stamp-h1
binPROGRAMS_INSTALL = $(INSTALL_PROGRAM)
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	  ; then \
	    f=`echo "$$p1" | sed 's,^.*/,,;$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) $$p $(DESTDIR)$(bindir)/$$f"; \
	   $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) $$p $(DESTDIR)$(bindir)/$$f || exit 1; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo "$$p" | sed 's,^.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
strace$(EXEEXT): $(strace_OBJECTS) $(strace_DEPENDENCIES) 
	@rm -f strace$(EXEEXT)
	$(LINK) $(strace_LDFLAGS) $(strace_OBJECTS) $(strace_LDADD) $(LIBS)
binSCRIPT_INSTALL = $(INSTALL_SCRIPT)
install-binSCRIPTS: $(bin_SCRIPTS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  if test -f $$d$$p; then \
	    f=`echo "$$p" | sed 's|^.*/||;$(transform)'`; \
	    echo " $(binSCRIPT_INSTALL) $$d$$p $(DESTDIR)$(bindir)/$$f"; \
	    $(binSCRIPT_INSTALL) $$d$$p $(DESTDIR)$(bindir)/$$f; \
	  else :; fi; \
	done

uninstall-binSCRIPTS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  f=`echo "$$p" | sed 's|^.*/||;$(transform)'`; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

mostlyclean-compile:
	-rm -f *.$(OBJEXT) core *.core

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/bjm.Po
include ./$(DEPDIR)/desc.Po
include ./$(DEPDIR)/file.Po
include ./$(DEPDIR)/io.Po
include ./$(DEPDIR)/ioctl.Po
include ./$(DEPDIR)/ipc.Po
include ./$(DEPDIR)/mem.Po
include ./$(DEPDIR)/net.Po
include ./$(DEPDIR)/proc.Po
include ./$(DEPDIR)/process.Po
include ./$(DEPDIR)/resource.Po
include ./$(DEPDIR)/signal.Po
include ./$(DEPDIR)/sock.Po
include ./$(DEPDIR)/strace.Po
include ./$(DEPDIR)/stream.Po
include ./$(DEPDIR)/syscall.Po
include ./$(DEPDIR)/system.Po
include ./$(DEPDIR)/term.Po
include ./$(DEPDIR)/time.Po
include ./$(DEPDIR)/util.Po

.c.o:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" \
	  -c -o $@ `test -f '$<' || echo '$(srcdir)/'`$<; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; \
	else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; \
	fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `test -f '$<' || echo '$(srcdir)/'`$<

.c.obj:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" \
	  -c -o $@ `if test -f '$<'; then $(CYGPATH_W) '$<'; else $(CYGPATH_W) '$(srcdir)/$<'; fi`; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; \
	else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; \
	fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `if test -f '$<'; then $(CYGPATH_W) '$<'; else $(CYGPATH_W) '$(srcdir)/$<'; fi`
uninstall-info-am:

man1dir = $(mandir)/man1
install-man1: $(man1_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man1dir)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst; \
	done
uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man1dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man1dir)/$$inst; \
	done

ETAGS = etags
ETAGSFLAGS =

CTAGS = ctags
CTAGSFLAGS =

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique

TAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$tags$$unique" \
	  || $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	     $$tags $$unique

ctags: CTAGS
CTAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = .
distdir = $(PACKAGE)-$(VERSION)

am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }

GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print

distdir: $(DISTFILES)
	@case `sed 15q $(srcdir)/NEWS` in \
	*"$(VERSION)"*) : ;; \
	*) \
	  echo "NEWS not updated; not releasing" 1>&2; \
	  exit 1;; \
	esac
	$(am__remove_distdir)
	mkdir $(distdir)
	$(mkinstalldirs) $(distdir)/debian $(distdir)/freebsd $(distdir)/freebsd/i386 $(distdir)/linux $(distdir)/linux/alpha $(distdir)/linux/hppa $(distdir)/linux/ia64 $(distdir)/linux/mips $(distdir)/linux/powerpc $(distdir)/linux/s390 $(distdir)/linux/s390x $(distdir)/linux/sh $(distdir)/linux/sparc $(distdir)/linux/x86_64 $(distdir)/sunos4 $(distdir)/svr4
	@srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's|.|.|g'`; \
	list='$(DISTFILES)'; for file in $$list; do \
	  case $$file in \
	    $(srcdir)/*) file=`echo "$$file" | sed "s|^$$srcdirstrip/||"`;; \
	    $(top_srcdir)/*) file=`echo "$$file" | sed "s|^$$topsrcdirstrip/|$(top_builddir)/|"`;; \
	  esac; \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkinstalldirs) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(SHELL) $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist-bzip2: distdir
	$(AMTAR) chof - $(distdir) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist dist-all: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(AMTAR) chof - $(distdir) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	$(am__remove_distdir)
	GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(AMTAR) xf -
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && $(mkinstalldirs) "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist-gzip \
	  && rm -f $(distdir).tar.gz \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@echo "$(distdir).tar.gz is ready for distribution" | \
	  sed 'h;s/./=/g;p;x;p;x'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS) $(SCRIPTS) $(MANS) $(HEADERS) config.h

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(bindir) $(DESTDIR)$(bindir) $(DESTDIR)$(man1dir)
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-binPROGRAMS clean-generic mostlyclean-am

distclean: distclean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic distclean-hdr \
	distclean-tags

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-man

install-exec-am: install-binPROGRAMS install-binSCRIPTS

install-info: install-info-am

install-man: install-man1

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-binPROGRAMS uninstall-binSCRIPTS \
	uninstall-info-am uninstall-man

uninstall-man: uninstall-man1

.PHONY: CTAGS GTAGS all all-am check check-am clean clean-binPROGRAMS \
	clean-generic ctags dist dist-all dist-bzip2 dist-gzip \
	distcheck distclean distclean-compile distclean-generic \
	distclean-hdr distclean-tags distcleancheck distdir \
	distuninstallcheck dvi dvi-am info info-am install install-am \
	install-binPROGRAMS install-binSCRIPTS install-data \
	install-data-am install-exec install-exec-am install-info \
	install-info-am install-man install-man1 install-strip \
	installcheck installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic pdf pdf-am ps ps-am tags uninstall \
	uninstall-am uninstall-binPROGRAMS uninstall-binSCRIPTS \
	uninstall-info-am uninstall-man uninstall-man1

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
