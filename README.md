# Pre-build gentoo docker image

This repository build a docker that includes most standard gentoo dependencies for home-assistant repository.

Compiling virtual/home-assistant:full from a fresh stage3 gentoo takes more than 6 hours which is the limit of github actions.

[![Create and publish a Docker image for CI](https://github.com/xavierforestier/gentoo-ci-ha/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/xavierforestier/gentoo-ci-ha/actions/workflows/docker-publish.yml)

## Provided packages
### app-admin: Non-core applications which relate to system administration
* eselect: Gentoo's multi-purpose configuration and management tool 
   * 1.4.32 -doc -emacs -vim-syntax
* logrotate: Rotates, compresses, and mails system logs 
   * 3.22.0-r1 acl cron -selinux -verify-sig
* metalog: Highly configurable replacement for syslogd/klogd 
   * 20260902 unicode zlib
* perl-cleaner: User land tool for cleaning up old perl installs 
   * 2.31-r3 -pkgcore
* sudo: Allows users or groups to run commands as other users 
   * 1.9.17_p2-r1 nls pam secure-path sendmail ssl -gcrypt -ldap -offensive -sasl -selinux -skey -sssd -verify-sig
Found 5 matches
### app-alternatives: Packages providing symlinks linking different available implementations for various executables
* awk: /bin/awk and /usr/bin/awk symlinks 
   * 4 gawk -busybox -mawk -nawk -split-usr
* bzip2: bzip2 symlink 
   * 1 reference -lbzip2 -pbzip2 -split-usr
* gpg: gpg symlink 
   * 1-r3 nls reference ssl -freepg -sequoia
* gzip: gzip symlinks 
   * 1 reference -pigz -split-usr
* lex: lex symlinks 
   * 0-r1 flex -reflex
* ninja: ninja symlinks 
   * 1 reference -samurai
* sh: /bin/sh (POSIX shell) symlink 
   * 0 bash -busybox -dash -ksh -lksh -mksh
* tar: Tar symlink 
   * 0 gnu -libarchive -split-usr
* yacc: yacc symlinks 
   * 1-r2 bison -byacc -reference
Found 9 matches
### app-arch: Tools for archiving, compressing and uncompressing files or groups of files
* brotli: Generic-purpose lossless compression algorithm 
   * 1.2.1 -debug -python -test
* bzip2: A high-quality data compressor used extensively by Gentoo Linux 
   * 1.0.8-r5 -static -static-libs -verify-sig
* gzip: Standard GNU compressor 
   * 1.15 -pic -static -verify-sig
* libarchive: Multi-format archive and compression library 
   * 3.8.11 acl bzip2 e2fsprogs iconv lzma xattr zstd -blake2 -expat -lz4 -lzo -nettle -static-libs -test -verify-sig
* lz4: Extremely Fast Compression algorithm 
   * 1.11.1 -static-libs -test
* tar: Use this to make tarballs :) 
   * 1.35-r1 acl nls xattr -minimal -selinux -test -verify-sig
* unzip: unzipper for pkzip-compressed files 
   * 6.0_p31 bzip2 unicode -natspec
* xz-utils: Utils for managing LZMA compressed files 
   * 5.8.4 extra-filters nls -doc -pgo -static-libs -verify-sig
* zstd: zstd fast compression library 
   * 1.6.0 lzma zlib -lz4 -static-libs -test -verify-sig
Found 9 matches
### app-crypt: Cryptographic (encryption, decryption, steganography and signing) software
* gnupg: The GNU Privacy Guard, a GPL OpenPGP implementation 
   * 2.5.24-r2 alternatives bzip2 nls readline smartcard ssl tofu -doc -ldap -selinux -test -tools -tpm -usb -user-socket -verify-sig -wks-server
* gpgme: GnuPG Made Easy is a library for making GnuPG easier to use 
   * 2.3.1 -common-lisp -static-libs -test -verify-sig
* libb2: C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp 
   * 0.98.1-r3 openmp -native-cflags -static-libs
* libmd: Message Digest functions from BSD systems 
   * 1.3.0 -verify-sig
* pinentry: Simple passphrase entry dialogs which utilize the Assuan protocol 
   * 1.3.3 ncurses -X -caps -efl -emacs -gtk -keyring -qt6 -selinux -verify-sig -wayland
* rhash: Console utility and library for computing and verifying file hash sums 
   * 1.4.6-r1 nls ssl -debug -static-libs
Found 6 matches
### app-doc: Various miscellaneous documentation collections
* info-manual: Manual for the Info reader in GNU Emacs 
   * 31.1 
### app-editors: Text editors
* nano: GNU GPL'd Pico clone with more functionality 
   * 9.3 ncurses nls spell unicode -debug -justify -magic -minimal -verify-sig
### app-eselect: Modules for the eselect configuration and administration tool
* eselect-fontconfig: An eselect module to manage /etc/fonts/conf.d symlinks 
   * 20220403 
* eselect-iptables: Manages the {,/usr}/sbin/iptables symlink 
   * 20220320 
* eselect-lib-bin-symlink: An eselect library to manage executable symlinks 
   * 0.1.1-r1 
* eselect-lua: Lua eselect module 
   * 4-r3 
* eselect-mpg123: Manage /usr/bin/mpg123 symlink 
   * 0.1-r1 
* eselect-pinentry: Manage /usr/bin/pinentry symlink 
   * 0.7.5 
* eselect-repository: Manage repos.conf via eselect 
   * 15 git -mercurial -test
* eselect-rust: Eselect module for management of multiple Rust versions 
   * 20210703 
Found 8 matches
### app-i18n: Internationalisation-related packages
* gnulib-l10n: Localization for gnulib 
   * 20241231 
### app-misc: Various miscellaneous application packages which don't belong anywhere else
* ca-certificates: Common CA Certificates PEM files 
   * 20260816.3.131.1-r1 -cacert
* editor-wrapper: Wrapper scripts that will execute EDITOR or PAGER 
   * 4-r1 
* jq: A lightweight and flexible command-line JSON processor 
   * 1.8.2 oniguruma -static-libs -test
* mime-types: Provides /etc/mime.types file 
   * 2.1.54 -nginx
* mosquitto: An Open Source MQTT Broker 
   * 2.1.4 bridge persistence srv ssl -examples -systemd -tcpd -test -websockets
* pax-utils: ELF utils that can check files for security relevant properties 
   * 1.3.11 -caps -man -python -seccomp -test
* yq: Command-line YAML processor - jq wrapper for YAML documents 
   * 4.4.5 yq-symlink -test
Found 7 matches
### app-portage: Software which works with portage or ebuilds
* eix: Search and query ebuilds 
   * 0.36.9 nls -debug -doc -sqlite
* elt-patches: Collection of patches for libtool.eclass 
   * 20250718 
* gemato: Stand-alone Manifest generation & verification tool 
   * 20.15 gpg -pretty-log -test -tools
* gentoolkit: Collection of administration scripts for Gentoo 
   * 0.8.2 -test
* getuto: Standalone Gentoo gpg trust anchor generation tool for binpkgs 
   * 2.0 -test
* portage-utils: Small and fast Portage helper tools written in C 
   * 0.97.1 openmp qmanifest -static
Found 6 matches
### app-shells: Shells and their extensions
* bash: The standard GNU Bourne again shell 
   * 5.3_p20-r1 net nls readline -afs -bashlogger -examples -mem-scramble -pgo -plugins -verify-sig
* push: A POSIX shell function to treat a variable like an array, quoting args 
   * 3.4 
* quoter: Quote arguments or standard input for usage in POSIX shell by eval 
   * 4.2 
Found 3 matches
### app-text: Tools for working with human-language text files
* build-docbook-catalog: DocBook XML catalog auto-updater 
   * 2.4 
* docbook-xml-dtd: Docbook DTD for XML 
   * 4.1.2-r7 
   * 4.2-r3 
   * 4.4-r3 
   * 4.5-r2 
* docbook-xsl-ns-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1 -ruby
* docbook-xsl-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1-r4 -ruby
* opensp: A free, object-oriented toolkit for SGML parsing and entity management 
   * 1.5.2-r10 nls -doc -static-libs -test
* po4a: Tools to ease the translation of documentation 
   * 0.74-r1 -test
* scdoc: Standalone tool for generating man pages with a simple syntax 
   * 1.11.5 
* sgml-common: Base ISO character entities and utilities for SGML 
   * 0.6.3-r7 
* xmlto: Script for converting XML and DocBook documents to a variety of output formats 
   * 0.0.28-r11 -latex -text
Found 9 matches
### dev-build: "Build systems and related tools
* autoconf: Used to create autoconfiguration files 
   * 2.73-r2 -verify-sig
* autoconf-archive: GNU Autoconf Macro Archive 
   * 2024.10.16-r2 
* autoconf-wrapper: Wrapper for autoconf to manage multiple autoconf versions 
   * 20260320 
* automake: Used to generate Makefile.in from Makefile.am 
   * 1.20 -test -verify-sig
* automake-wrapper: Wrapper for automake to manage multiple automake versions 
   * 20261107 
* b2: A system for large project software construction, simple to use and powerful 
   * 5.6.1 -examples
* cmake: Cross platform Make 
   * 4.3.6 ncurses -dap -doc -gui -test -verify-sig
* gtk-doc-am: Automake files from gtk-doc 
   * 1.36.1 
* libtool: A shared library tool for developers 
   * 2.6.2 -vanilla -verify-sig
* make: Standard tool to compile source trees 
   * 4.4.1-r102 nls -doc -guile -static -test -verify-sig
* meson: Open source build system 
   * 1.12.1 -test -test-full -verify-sig
* ninja: A small build system similar to make 
   * 1.13.2-r1 -doc -test
Found 12 matches
### dev-cpp: Libraries and utilities relevant to the c++ programming language
* abseil-cpp: Abseil Common Libraries (C++), LTS Branch 
   * 20260107.1 -debug -test -test-helpers
* ada: WHATWG-compliant and fast URL parser written in modern C++ 
   * 4.0.0 
* eigen: C++ template library for linear algebra 
   * 3.4.1-r1 openmp -adolc -blas -boost -cholmod -cuda -cuda-clang -debug -doc -fftw -hip -klu -lapack -mathjax -metis -opengl -pastix -pocketfft -sparsehash -spqr -superlu -test -umfpack
* rapidfuzz-cpp: Rapid fuzzy string matching in C++ 
   * 3.3.4 -test
* robin-map: C++ fast hash map and hash set using robin hood hashing 
   * 1.4.1 -test
* simdutf: Unicode validation and transcoding at billions of characters per second 
   * 9.3.3 -doc -test
* taskflow: Modern C++ Parallel Task Programming 
   * 4.0.0 -examples -test
* tlfloat: C++ template library for floating point operations 
   * 1.17.1_p20250711 -test
* xsimd: C++ wrappers for SIMD intrinsics 
   * 14.3.0 -doc -test
Found 9 matches
### dev-db: Libraries and utilities for database related programming
* mysql-connector-c: C client library for MariaDB/MySQL 
   * 26.10.0 -fido2 -kerberos -ldap -static-libs
* sqlite: SQL database engine 
   * 3.54.1 readline -debug -doc -icu -secure-delete -static-libs -tcl -test -test-full -tools
Found 2 matches
### dev-debug: "Debuggers and debugging-related tools
* gdb: GNU debugger 
   * 18.1-r2 cet debuginfod nls python server xml -guile -lzma -multitarget -rocm -sim -source-highlight -test -vanilla -xxhash -zstd
### dev-lang: Various programming language implementations and related tools
* lua: A powerful light-weight programming language designed for extending applications 
   * 5.4.8 deprecated readline
* nasm: groovy little assembler 
   * 3.02 -doc
* orc: The Oil Runtime Compiler, a just-in-time compiler for array operations 
   * 0.4.42 -static-libs -test
* perl: Larry Wall's Practical Extraction and Report Language 
   * 5.44.0 gdbm -berkdb -doc -minimal
* python: An interpreted, interactive, object-oriented programming language 
   * 3.14.10_p1 bluetooth ensurepip gdbm ncurses readline sqlite ssl -build -debug -examples -libedit -pgo -tail-call-interp -test -tk -valgrind -verify-sig
* python-exec: Python script wrapper 
   * 2.4.10 native-symlinks -test
* python-exec-conf: Configuration file for dev-lang/python-exec 
   * 2.4.6 
* rust-bin: Systems programming language from Mozilla 
   * 1.100.0 clippy rustfmt -big-endian -doc -prefix -rust-analyzer -rust-src -rustc-dev -verify-sig
* swig: Simplified Wrapper and Interface Generator 
   * 4.4.1 pcre -ccache -doc -test
Found 9 matches
### dev-libs: Various miscellaneous programming libraries
* boost: Boost Libraries for C++ 
   * 1.91.0-r4 bzip2 context nls stacktrace zlib -debug -doc -icu -lzma -mpi -numpy -python -test -test-full -tools -zstd
* cJSON: Ultralightweight JSON parser in ANSI C 
   * 1.7.19 -test
* darts: Darts-clone (Double-ARray Trie System) C++ library 
   * 0.32h_pre20181117064816 
* double-conversion: Binary-decimal and decimal-binary conversion routines for IEEE doubles 
   * 3.4.0 -test
* elfutils: Libraries/utilities to handle ELF objects (drop in replacement for libelf) 
   * 0.197 bzip2 debuginfod libarchive lzma nls utils -libpfm -stackprof -static-libs -test -threads -valgrind -verify-sig -zstd
* ell: Embedded Linux Library provides core, low-level functionality for system daemons 
   * 0.83 -pie -test
* expat: Stream-oriented XML parser library 
   * 2.11.0 unicode -examples -static-libs -test
* fribidi: A free implementation of the unicode bidirectional algorithm 
   * 1.0.16 -doc -test
* glib: The GLib library of C routines 
   * 2.88.4 elf introspection mime xattr -dbus -debug -doc -selinux -static-libs -sysprof -systemtap -test -utils
* gmp: Library for arbitrary-precision arithmetic on different type of numbers 
   * 6.3.0-r2 asm cpudetection cxx -doc -pic -static-libs -verify-sig
* gobject-introspection: Introspection system for GObject-based libraries 
   * 1.86.0-r1 -doctool -gtk-doc -test
* gobject-introspection-common: Build infrastructure for GObject Introspection 
   * 1.86.0 
* icu: International Components for Unicode 
   * 78.3 -debug -doc -examples -static-libs -test -verify-sig
* isa-l: Intelligent Storage Acceleration Library 
   * 2.32.1 -tools
* jemalloc: Jemalloc is a general-purpose scalable concurrent allocator 
   * 5.4.0-r2 stats -debug -lazy-lock -prof -xmalloc
* json-c: A JSON implementation in C 
   * 0.19-r3 -static-libs -test -threads
* jsoncpp: C++ JSON reader and writer 
   * 1.9.8 -doc -test
* leancrypto: Lean cryptographic library usable for bare-metal environments 
   * 1.8.0 asm -test -tools -verify-sig
* libassuan: IPC library used by GnuPG and GPGME 
   * 3.0.0-r1 -verify-sig
* libatomic_ops: Implementation for atomic memory update operations 
   * 7.10.0 
* libfastjson: Fork of the json-c library, which is optimized for liblognorm processing 
   * 1.2609.0 -static-libs
* libffi: Portable, high level programming interface to various calling conventions 
   * 3.8.1 exec-static-trampoline -debug -pax-kernel -static-libs -test
* libgcrypt: General purpose crypto library based on the code used in GnuPG 
   * 1.12.4 asm getentropy -doc -static-libs -verify-sig
* libgpg-error: Contains error handling functions used by GnuPG software 
   * 1.61 nls -common-lisp -static-libs -test -verify-sig
* libical: Implementation of basic iCAL protocols 
   * 3.0.20-r2 glib introspection -doc -examples -static-libs -test -vala
* libksba: X.509 and CMS (PKCS#7) library 
   * 1.9.1 -static-libs -verify-sig
* liblinear: A Library for Large Linear Classification 
   * 246 
* libltdl: A shared library tool for developers 
   * 2.6.2 -static-libs -verify-sig
* libpcre2: Perl-compatible regular expression library 
   * 10.49 bzip2 jit pcre16 pcre32 readline unicode zlib -libedit -static-libs -valgrind -verify-sig
* libsodium: Portable fork of NaCl, a higher-level cryptographic library 
   * 1.0.22 asm urandom -static-libs -verify-sig
* libtasn1: ASN.1 library 
   * 4.21.0 -static-libs -verify-sig
* libtomcrypt: LibTomCrypt is a comprehensive, modular and portable cryptographic toolkit 
   * 1.18.2-r4 gmp libtommath -tomsfastmath
* libtommath: Optimized and portable routines for integer theoretic applications 
   * 1.3.0 -doc -examples -static-libs
* libunibreak: Line and word breaking library 
   * 8.0 -doc -man -static-libs -test
* libunistring: Library for manipulating Unicode and C strings according to Unicode standard 
   * 1.4.2 -doc -static-libs
* libusb: Userspace access to USB devices 
   * 1.0.30 -debug -doc -examples -static-libs -test -udev -verify-sig
* libuv: Cross-platform asynchronous I/O 
   * 1.53.0 -verify-sig
* libxml2: XML C parser and toolkit 
   * 2.15.4 readline -doc -icu -python -static-libs -test
* libxslt: XSLT libraries and tools 
   * 1.1.45-r1 crypt -debug -debugger -examples -python -static-libs
* libyaml: YAML 1.1 parser and emitter written in C 
   * 0.2.5 -doc -static-libs -test
* mpc: A library for multiprecision complex arithmetic with exact rounding 
   * 1.4.1 -static-libs -verify-sig
* mpdecimal: Correctly-rounded arbitrary precision decimal floating point arithmetic 
   * 4.0.1 -cxx -test
* mpfr: Library for multiple-precision floating-point computations with exact rounding 
   * 4.2.2 -static-libs -verify-sig
* nettle: Low-level cryptographic library 
   * 3.10.2 asm gmp -doc -static-libs -verify-sig
* npth: New GNU Portable Threads Library 
   * 1.8 -test -verify-sig
* oniguruma: Regular expression library for different character encodings 
   * 6.9.10 -crnl-as-line-terminator -static-libs
* openssl: Robust, full-featured Open Source Toolkit for the Transport Layer Security (TLS) 
   * 4.1.0 asm quic -fips -ktls -rfc3779 -sctp -static-libs -test -tls-compression -vanilla -verify-sig -weak-ssl-ciphers
* pocketfft: PocketFFT for C++ 
   * 2026.04.10 -test
* popt: Parse Options - Command line parser 
   * 1.19-r1 nls -static-libs
* protobuf: Google's Protocol Buffers - Extensible mechanism for serializing structured data 
   * 34.2 libprotoc libupb protobuf protoc zlib -conformance -debug -emacs -examples -test
* simdjson: SIMD accelerated C++ JSON library 
   * 5.3.0 all-impls -nan -test -tools -trailing-commas
* sleef: Implements vectorized versions of C standard math functions 
   * 3.9.0 -test
* tree-sitter: Tree-sitter is a parser generator tool and an incremental parsing library 
   * 0.27.1 
* tree-sitter-bash: Bash grammar for Tree-sitter 
   * 0.25.1 python -debug -test
* xerces-c: Validating XML parser written in a portable subset of C++ 
   * 3.3.0-r1 iconv -curl -doc -examples -icu -static-libs -test
* xxhash: Extremely fast non-cryptographic hash algorithm 
   * 0.8.4 -static-libs
* yajl: Small event-driven (SAX-style) JSON parser 
   * 2.1.0-r6 
Found 57 matches
### dev-perl: Libraries and utilities relevant to the Perl programming language
* Authen-SASL: Perl SASL interface 
   * 2.200.0 -kerberos -test
* Capture-Tiny: Capture STDOUT and STDERR from Perl, XS, or external programs 
   * 0.500.0-r1 -examples -test
* Class-Inspector: Provides information about Classes 
   * 1.360.0 -test
* Clone: Recursively copy Perl datatypes 
   * 0.470.0 -test
* Config-AutoConf: Module to implement some of AutoConf macros in pure perl 
   * 0.320.0 -test
* Crypt-URandom: Provide non blocking randomness 
   * 0.550.0 -test
* Devel-CheckLib: Check that a library is available 
   * 1.160.0-r1 -test
* Digest-HMAC: Keyed Hashing for Message Authentication 
   * 1.50.0 -test
* Encode-Locale: Determine the locale encoding 
   * 1.50.0-r1 -test
* Error: Error/exception handling in an OO-ish way 
   * 0.170.300-r1 -test
* Exporter-Tiny: An exporter with the features of Sub::Exporter but only core dependencies 
   * 1.6.3 -examples -test
* ExtUtils-CChecker: Configure-time utilities for using C headers 
   * 0.120.0-r1 -test
* File-Listing: Parse directory listings 
   * 6.160.0 -test
* File-ShareDir: Locate per-dist and per-module shared files 
   * 1.118.0-r1 -minimal -test
* File-ShareDir-Install: Install shared files 
   * 0.140.0 -test
* File-Slurper: A simple, sane and efficient module to slurp a file 
   * 0.14.0-r1 -examples -minimal -test
* HTML-Parser: Parse HTML documents 
   * 3.830.0 -test
* HTML-Tagset: Data tables useful in parsing HTML 
   * 3.240.0 -test
* HTTP-Cookies: Storage of cookies 
   * 6.110.0 -test
* HTTP-Date: Date conversion for HTTP date formats 
   * 6.80.0 -test
* HTTP-Message: Base class for Request/Response 
   * 7.10.0 -test
* HTTP-Negotiate: HTTP content negotiation 
   * 6.10.0-r2 -test
* IO-HTML: Open an HTML file with automatic charset detection 
   * 1.4.0 -test
* IO-Socket-INET6: Work with IO sockets in IPv6 
   * 2.730.0 -test
* IO-Socket-SSL: Nearly transparent SSL encapsulation for IO::Socket::INET 
   * 2.95.0 -examples -idn -test
* LWP-MediaTypes: Media types and mailcap processing 
   * 6.40.0 -test
* LWP-Protocol-https: Provide https support for LWP::UserAgent 
   * 6.140.0 -test
* List-MoreUtils: Provide the missing functionality from List::Util 
   * 0.430.0 xs -test
* List-MoreUtils-XS: Compiled List::MoreUtils functions 
   * 0.430.0-r1 -test
* Locale-gettext: A Perl module for accessing the GNU locale utilities 
   * 1.70.0_p20181130 -test
* MIME-Base32: Base32 encoder / decoder 
   * 1.303.0-r1 -test
* MIME-Charset: Charset Informations for MIME 
   * 1.13.1 -test
* MailTools: Manipulation of electronic mail addresses 
   * 2.220.0 -examples -test
* Module-Build: Build and install Perl modules 
   * 0.423.400-r5 -test
* Net-HTTP: Low-level HTTP connection (client) 
   * 6.240.0 -minimal -test
* Net-SSLeay: Perl extension for using OpenSSL 
   * 1.960.0-r1 -examples -minimal -test
* Params-Util: Utility functions to aid in parameter checking 
   * 1.102.0 -test
* PerlIO-utf8_strict: Fast and correct UTF-8 IO 
   * 0.10.0 -test
* Pod-Parser: POD filters and translators 
   * 1.660.0 -test
* Regexp-IPv6: Regular expression for IPv6 addresses 
   * 0.30.0-r2 -test
* SGMLSpm: Perl library for parsing the output of nsgmls 
   * 1.1-r2 -test
* Socket6: IPv6 related part of the C socket.h defines and structure manipulators 
   * 0.290.0-r2 -test
* Syntax-Keyword-Try: A try/catch/finally syntax for Perl 
   * 0.310.0 -test
* TermReadKey: Change terminal modes, and perform non-blocking reads 
   * 2.380.0-r1 -examples -test
* Text-CharWidth: Get number of occupied columns of a string on terminal 
   * 0.40.0-r2 -test
* Text-WrapI18N: Internationalized substitute of Text::Wrap 
   * 0.60.0-r3 -test
* TimeDate: A Date/Time Parsing Perl Module 
   * 2.330.0-r1 -test
* Try-Tiny: Minimal try/catch with proper localization of $@ 
   * 0.320.0 -minimal -test
* URI: Uniform Resource Identifiers (absolute and relative) 
   * 5.340.0 -test
* Unicode-LineBreak: UAX #14 Unicode Line Breaking Algorithm 
   * 2019.1.0-r2 -test
* WWW-RobotRules: Parse /robots.txt file 
   * 6.20.0-r2 -test
* XML-Parser: A perl module for parsing XML documents 
   * 2.470.0-r1 -test
* XS-Parse-Keyword: XS functions to assist in parsing keyword syntax 
   * 0.490.0-r1 -test
* YAML-Tiny: Read/Write YAML files with as little code as possible 
   * 1.760.0-r1 -minimal -test
* libwww-perl: Collection of Perl Modules for the WWW 
   * 6.810.0 ssl -test
Found 55 matches
### dev-python: Packages whose primary purpose is to provide Python modules, extensions and bindings, as well as tools and utilities useful for development in the Python programming language
* absl-py: Abseil Python Common Libraries 
   * 2.5.1 
* accessible-pygments: A collection of accessible pygments styles 
   * 0.0.5 -test
* aiodns: Simple DNS resolver for asyncio 
   * 4.0.4 -test -verify-provenance
* aiofiles: File support for asyncio 
   * 25.1.0 -test -verify-provenance
* aiohappyeyeballs: Happy Eyeballs for pre-resolved hosts 
   * 2.7.1 -test
* aiohttp: HTTP client/server for asyncio 
   * 3.14.5 native-extensions test-rust -debug -test -verify-provenance
* aiohttp-cors: Implements CORS support for aiohttp asyncio-powered asynchronous HTTP server 
   * 0.8.1 -test
* aiohttp-socks: SOCKS proxy connector for aiohttp 
   * 0.12.0 -test
* aioitertools: itertools and builtins for AsyncIO and mixed iterables 
   * 0.13.0 -verify-provenance
* aioresponses: Helper to mock/fake web requests in Python's aiohttp package 
   * 0.7.9 -test
* aiosignal: A list of registered asynchronous callbacks 
   * 1.4.0 -test
* aiosmtpd: Reimplementation of the Python stdlib smtpd.py based on asyncio 
   * 1.4.6 -test
* aiosqlite: asyncio bridge to the standard sqlite3 module 
   * 0.22.1 -verify-provenance
* alabaster: A configurable sidebar-enabled Sphinx theme 
   * 1.0.0 
* annotated-doc: Document parameters, variables inline, with Annotated 
   * 0.0.7 -test
* annotated-types: Reusable constraint types to use with typing.Annotated 
   * 0.8.0 -test
* anyascii: Unicode to ASCII transliteration 
   * 0.3.3 -test
* anyio: Compatibility layer for multiple asynchronous event loop implementations 
   * 4.16.0 -doc -test -verify-provenance
* apipkg: Namespace control and lazy-import mechanism 
   * 3.0.2 -test
* appdirs: Module for determining appropriate platform-specific dirs 
   * 1.4.4-r3 
* argcomplete: Bash tab completion for argparse 
   * 3.8.0 -test -verify-provenance
* arrow: Better dates and times for Python 
   * 1.4.0 -test
* asgiref: ASGI utilities (successor to WSGI) 
   * 3.13.0 -test
* asn1crypto: Python ASN.1 library with a focus on performance and a pythonic API 
   * 1.5.1_p20231012 
* ast-serialize: Python bindings for mypy AST serialization 
   * 0.13.1 -debug -test -verify-provenance
* astroid: Abstract Syntax Tree for logilab packages 
   * 4.3.4 -test -verify-provenance
* asyncstdlib: The missing async toolbox 
   * 3.14.0 -test
* atomicwrites: Atomic file writes 
   * 1.4.1 -doc -test
* atpublic: A decorator to populate __all__ and the module globals 
   * 9.0.0 -test
* attrs: Attributes without boilerplate 
   * 26.1.0 -test -verify-provenance
* audioop-lts: An LTS port of Python's audioop module 
   * 0.2.2 -debug -test -verify-provenance
* automat: Self-service finite-state machines for the programmer on the go 
   * 25.4.16 -examples -test
* babel: Collection of tools for internationalizing Python applications 
   * 2.19.0 -doc -test -verify-provenance
* bcrypt: Modern password hashing for software and servers 
   * 5.0.0 -debug -test -verify-provenance
* beautifulsoup4: Pythonic idioms for iterating, searching, and modifying an HTML/XML parse tree 
   * 4.15.0 -doc -test
* beniget: Extract semantic information about static Python code 
   * 0.5.1 -test
* bitarray: Efficient arrays of booleans -- C extension 
   * 3.12.4 -debug -verify-provenance
* black: The uncompromising Python code formatter 
   * 26.10.1 -test -verify-provenance
* bleach: An easy whitelist-based HTML-sanitizing tool 
   * 6.4.0 -test
* blinker: Fast, simple object-to-object and broadcast signaling 
   * 1.9.0 -test -verify-provenance
* bottleneck: Fast NumPy array functions written in C 
   * 1.6.1 -debug -test -verify-provenance
* brotlicffi: Python binding to the Brotli library 
   * 1.2.1.0 -debug -test
* build: A simple, correct PEP517 package builder 
   * 1.6.1 -test -test-rust
* cachebox: The fastest memoizing and caching Python library written in Rust 
   * 6.2.11 -debug -test -verify-provenance
* cachecontrol: httplib2 caching for requests 
   * 0.15.0 -test -verify-provenance
* cachetools: Extensible memoizing collections and decorators 
   * 8.0.3 -test
* cattrs: Composable complex class support for attrs and dataclasses 
   * 26.2.1 test-rust -test
* cbor2: CBOR (de)serializer with extensive tag support 
   * 6.3.0 -debug -test -verify-provenance
* certifi: A certifi hack to use system trust store on Linux/FreeBSD 
   * 3024.7.22 -test
* cffi: Foreign Function Interface for Python calling C code 
   * 2.1.1 -debug -doc -test
* cfgv: Validate configuration and produce human-readable error messages 
   * 3.5.0 -test
* charset-normalizer: The Real First Universal Charset Detector 
   * 3.5.3 -debug -native-extensions -test -verify-provenance
* cleo: Python tool for building testable command-line interfaces 
   * 2.1.0 -test
* click: A Python package for creating beautiful command line interfaces 
   * 8.5.1 -test -verify-provenance
* click-log: Logging integration for Click 
   * 0.4.0 -test
* colorama: ANSI escape character sequences for colored terminal text & cursor positioning 
   * 0.4.6 -examples -test
* colour: Python color representations manipulation library 
   * 0.1.5-r1 -test
* configargparse: Drop-in replacement for argparse supporting config files and env variables 
   * 1.10.2 -test -verify-provenance
* configobj: Simple config file reader and writer 
   * 5.0.9 -test
* constantly: Symbolic constants in Python 
   * 23.10.4 -test
* construct: A powerful declarative parser for binary data 
   * 2.10.70 -test
* coverage: Code coverage measurement for Python 
   * 7.17.5 native-extensions -debug -test -verify-provenance
* crashtest: Python library that makes exceptions handling and inspection easier 
   * 0.4.1 -test
* crcmod: Python CRC Generator module 
   * 1.7-r5 -debug
* croniter: Python module to provide iteration for datetime object 
   * 7.0.0 -test -verify-provenance
* cryptography: Library providing cryptographic recipes and primitives 
   * 50.0.2 -debug -test -verify-provenance
* cssselect: Parse CSS3 Selectors and translate them to XPath 1.0 
   * 1.6.0 -doc -test
* cython: A Python to C compiler 
   * 3.3.2 -debug -test -test-full
* decorator: Simplifies the usage of decorators for the average programmer 
   * 5.3.2 
* deepdiff: A library for comparing dictionaries, iterables, strings and other objects 
   * 9.2.1 -test
* deepmerge: Tools to handle merging of nested data structures in python 
   * 4.0.0 -test
* defusedxml: XML bomb protection for Python stdlib modules, an xml serialiser 
   * 0.8.0_rc2 -examples
* deprecated: Python @deprecated decorator to deprecate old API 
   * 3.0.1 -test
* dill: Serialize all of Python (almost) 
   * 0.4.1 
* distlib: Low-level components of distutils2/packaging 
   * 0.4.4 -test
* distro: Reliable machine-readable Linux distribution information for Python 
   * 1.9.0 -test
* dnspython: DNS toolkit for Python 
   * 2.9.2 -dnssec -examples -https -quic -test -verify-provenance
* docopt: Pythonic argument parser, that will make you smile 
   * 0.6.2-r5 -test
* docstring-parser: Parse Python docstrings in reST, Google and Numpydoc format 
   * 0.18.0 -test -verify-provenance
* docutils: Python Documentation Utilities (reference reStructuredText impl.) 
   * 0.23 
* dulwich: Pure-Python implementation of the Git file formats and protocols 
   * 1.2.22 native-extensions -debug -doc -examples -test -verify-provenance
* dunamai: Dynamic version generation 
   * 1.26.1 -test
* ecdsa: ECDSA cryptographic signature library in pure Python 
   * 0.19.2 -test
* editables: A Python library for creating 'editable wheels' 
   * 0.6 -test
* elementpath: XPath 1.0/2.0 parsers and selectors for ElementTree and lxml 
   * 5.1.4 -test
* email-validator: A robust email syntax and deliverability validation library 
   * 2.4.0 -test
* emoji: Emoji for Python 
   * 2.16.0 -test
* ensurepip-pip: Shared pip wheel for ensurepip Python module 
   * 26.3 test-rust -test
* ensurepip-setuptools: Shared setuptools wheel for ensurepip Python module 
   * 84.2.1 -test
* ensurepip-wheel: Shared wheel wheel for use in pip tests 
   * 0.48.0 -test -verify-provenance
* events: Bringing the elegance of C# EventHandler to Python 
   * 0.5 
* exceptiongroup: Backport of PEP 654 (exception groups) 
   * 1.3.2 -test -verify-provenance
* expandvars: Expand system variables Unix style 
   * 1.1.2 -test
* fastjsonschema: Fast JSON schema validator for Python 
   * 2.22.3 -test
* feedparser: Parse RSS and Atom feeds in Python 
   * 6.0.14 
* feedparser-sgmllib: sgmllib from Python 2.7 for feedparser use 
   * 2.1.0 -test -verify-provenance
* filelock: A platform independent file lock for Python 
   * 4.2.12 -test -verify-provenance
* findpython: A utility to find python versions on your system 
   * 0.9.0 -test -verify-provenance
* flake8: A wrapper around PyFlakes, pep8 & mccabe 
   * 7.5.0 -doc -test
* flask: A microframework based on Werkzeug, Jinja2 and good intentions 
   * 3.1.3 -doc -examples -test -verify-provenance
* flit-core: Simplified packaging of Python modules (core module) 
   * 3.12.0 -test -verify-provenance
* flit-scm: A PEP 518 build backend combining flit with setuptools_scm 
   * 1.7.0 
* fqdn: RFC-compliant FQDN validation and manipulation for Python 
   * 1.6.0 -doc -test
* freezegun: Let your Python tests travel through time 
   * 1.5.5 -test -verify-provenance
* fritzconnection: Lib/tool to communicate with AVM FRITZ! devices using TR-064 protocol over UPnP 
   * 1.15.1 -qrcode -test
* frozenlist: A list-like structure which implements collections.abc.MutableSequence 
   * 1.8.0 native-extensions -debug -test
* fsspec: A specification that python filesystems should adhere to 
   * 2026.9.0 -test
* ftfy: Fixes mojibake and other problems with Unicode, after the fact 
   * 6.3.1 -test
* furl: URL parsing and manipulation made easy 
   * 2.1.4 -test
* furo: Clean customisable Sphinx documentation theme 
   * 2025.12.19-r1 -test
* gast: A generic AST to represent Python2 and Python3's Abstract Syntax Tree (AST) 
   * 0.7.0 
* gentoo-common: Common files shared by Python implementations in Gentoo 
   * 1 
* geographiclib: Python implementation of the geodesic routines 
   * 2.1 
* gmpy2: Python bindings for GMP, MPC, MPFR and MPIR libraries 
   * 2.3.2 -debug -test -verify-provenance
* google-api-core: Core Library for Google Client Libraries 
   * 2.44.0 -grpc -test -verify-provenance
* google-auth: Google Authentication Library 
   * 2.63.1 -test -verify-provenance
* google-auth-httplib2: httplib2 Transport for Google Auth 
   * 0.4.4 -test -verify-provenance
* google-auth-oauthlib: Google Authentication Library 
   * 1.5.0 -test -verify-provenance
* googleapis-common-protos: Python classes generated from the common protos in the googleapis repository 
   * 1.76.0 -test -verify-provenance
* gpep517: A backend script to aid installing Python packages in Gentoo 
   * 23 -test
* grpcio: HTTP/2-based RPC framework 
   * 1.85.4 -debug -test
* grpcio-status: Reference package for GRPC Python status proto mapping 
   * 1.85.4 -test
* h11: A pure-Python implementation of HTTP/1.1 inspired by hyper-h2 
   * 0.16.0 -test
* h2: HTTP/2 State-Machine based protocol implementation 
   * 4.4.1 -test
* hatch-fancy-pypi-readme: Fancy PyPI READMEs with Hatch 
   * 25.1.0 -test
* hatch-vcs: Hatch plugin for versioning with your preferred VCS 
   * 0.5.0 -test
* hatchling: Modern, extensible Python build backend 
   * 1.33.0 -test
* hpack: Pure-Python HPACK header compression 
   * 4.2.0 -test
* html5lib: HTML parser based on the HTML5 specification 
   * 1.2_pre20240221 -test
* httmock: A mocking library for requests 
   * 1.4.0-r1 -test
* httpcore: A minimal low-level HTTP client 
   * 1.0.9-r1 -test
* httplib2: A comprehensive HTTP client library 
   * 0.32.1 -socks5 -test -verify-provenance
* httpx: Fully-featured HTTP client which provides sync and async APIs 
   * 0.28.1-r1 -cli -test
* httpx2: The next generation HTTP client (Pydantic fork) 
   * 2.16.2 -cli -test
* huawei-lte-api: API For huawei LAN/WAN LTE Modems 
   * 3.0.0 -test
* hyperframe: HTTP/2 framing layer for Python 
   * 6.1.0 -test
* hyperlink: A featureful, correct URL for Python 
   * 21.0.0-r1 -test
* icalendar: RFC 5545 compatible parser and generator of iCalendar files 
   * 7.3.2 -test -verify-provenance
* id: A tool for generating OIDC identities 
   * 1.6.1 -test
* identify: File identification library for Python 
   * 2.6.20 -test
* idna: Internationalized Domain Names in Applications (IDNA) 
   * 3.20 -test -verify-provenance
* ifaddr: Enumerate IP addresses on the local network adapters 
   * 0.2.0 -test
* ijson: Iterative JSON parser with a Pythonic interface 
   * 3.6.0 -debug -test
* imageio: Python library for reading and writing image data 
   * 2.38.2 -test
* imagesize: Pure Python module for getting image size from png/jpeg/jpeg2000/gif files 
   * 2.0.1 -test
* importlib-metadata: Read metadata from Python packages 
   * 10.2.0 -test
* incremental: Incremental is a small library that versions your Python projects 
   * 24.11.0 -test -verify-provenance
* inflect: Correctly inflect words and numbers 
   * 7.6.0 -test
* inflection: A port of Ruby on Rails' inflector to Python 
   * 0.5.1-r1 -doc -test
* iniconfig: Brain-dead simple config-ini parsing 
   * 2.3.1 -test -verify-provenance
* installer: A library for installing Python wheels 
   * 1.1.0 -test -verify-provenance
* intelhex: Python library for Intel HEX files manipulations 
   * 2.3.0-r1 
* isal: Faster zlib and gzip via the ISA-L library 
   * 1.9.1 -debug -test -verify-provenance
* iso8601: Simple module to parse ISO 8601 dates 
   * 2.1.0 -test
* isodate: ISO 8601 date/time/duration parser and formatter 
   * 0.7.2 -test
* isoduration: Operations with ISO 8601 durations 
   * 20.11.0-r1 -test
* isort: A python utility/library to sort imports 
   * 9.0.2-r1 -test -verify-provenance
* itsdangerous: Various helpers to pass trusted data to untrusted environments and back 
   * 2.2.0-r1 -test
* jaraco-classes: Classes used by other projects by developer jaraco 
   * 3.4.0 -test
* jaraco-collections: Models and classes to supplement the stdlib collections module 
   * 5.2.1 -test
* jaraco-context: Context managers by jaraco 
   * 6.1.2 -test
* jaraco-functools: Additional functions used by other projects by developer jaraco 
   * 4.6.0 -test
* jaraco-itertools: Tools for working with iterables. Complements itertools and more_itertools 
   * 6.4.3 -test
* jaraco-logging: Additional facilities to supplement Python's stdlib logging module 
   * 3.4.0 -test
* jaraco-text: Text utilities used by other projects by developer jaraco 
   * 4.3.0 -test
* jeepney: Low-level, pure Python DBus protocol wrapper 
   * 0.9.0 test-rust -doc -examples -test -verify-provenance
* jinja2: A full-featured template engine for Python 
   * 3.1.6 -doc -test -verify-provenance
* jmespath: JSON Matching Expressions 
   * 1.1.0 -test
* josepy: JOSE protocol implementation in Python 
   * 2.3.0 -doc -test
* jsonpath-ng: Python JSONPath Next-Generation 
   * 1.16.0 -test -verify-provenance
* jsonpickle: Python library for serializing any arbitrary object graph into JSON 
   * 4.1.4 -test -test-full
* jsonpointer: Identify specific nodes in a JSON document (according to draft 08) 
   * 3.12 -verify-provenance
* jsonschema: An implementation of JSON-Schema validation for Python 
   * 4.26.0 -test -verify-provenance
* jsonschema-specifications: The JSON Schema meta-schemas and vocabularies, exposed as a Registry 
   * 2025.9.1 -test -verify-provenance
* keyring: Provides access to the system keyring service 
   * 25.7.0 -test
* lark: Python module to propose a modern general-purpose parsing library for Python 
   * 1.3.1 -test
* lazy-importer: A context manager for portable, opt-in lazy imports 
   * 0.1.0 -test -verify-provenance
* librt: Mypyc runtime library 
   * 0.17.0 -debug -test -verify-provenance
* linkify-it-py: Links recognition library with full unicode support 
   * 2.2.0 -test -verify-provenance
* logfury: Boilerplate library for logging method calls 
   * 1.0.1-r1 -test
* lxml: A Pythonic binding for the libxml2 and libxslt libraries 
   * 6.1.3 threads -debug -doc -examples -test
* markdown: Python implementation of the markdown markup language 
   * 3.11.4 -doc -test
* markdown-it-py: Python port of markdown-it, Markdown parser 
   * 4.3.0 -test -verify-provenance
* markupsafe: Implements a XML/HTML/XHTML Markup safe string for Python 
   * 3.0.4 native-extensions -debug -test -verify-provenance
* marshmallow: A library for converting to and from native Python datatypes 
   * 4.4.0 -test -verify-provenance
* mccabe: flake8 plugin: McCabe complexity checker 
   * 0.7.0 -test
* mdurl: Markdown URL utilities 
   * 0.1.2 -test
* mechanize: Stateful programmatic web browsing in Python 
   * 0.4.11 -test
* meson-python: Meson PEP 517 Python build backend 
   * 0.22.1 -test
* mock: Rolling backport of unittest.mock for all Pythons 
   * 5.2.0 -test
* more-itertools: More routines for operating on iterables, beyond itertools 
   * 11.2.1 -doc
* mpmath: Python library for arbitrary-precision floating-point arithmetic 
   * 1.4.1 -test -test-full
* msgpack: MessagePack (de)serializer for Python 
   * 1.2.4 native-extensions -debug -test -verify-provenance
* multidict: multidict implementation 
   * 7.2.1 native-extensions -debug -test
* munch: A dot-accessible dictionary (a la JavaScript objects) 
   * 4.0.0 -test
* mypy-extensions: Type system extensions for programs checked with mypy 
   * 1.2.0 -test
* mysqlclient: Python interface to MySQL 
   * 2.3.2 -debug -doc -test -verify-provenance
* nanobind: Tiny and efficient C++/Python bindings 
   * 3.1.0 -test
* netaddr: Network address representation and manipulation library 
   * 1.3.0 -doc -test
* netifaces: Portable network interface information 
   * 0.11.0-r2 -debug
* nh3: Ammonia HTML sanitizer Python binding 
   * 0.3.8 -debug -test
* nodeenv: Node.js virtual environment builder 
   * 1.12.0 -test
* numexpr: Fast numerical array expression evaluator for Python and NumPy 
   * 2.14.2 -debug
* numpy: Fast array and numerical python library 
   * 2.5.5 cpudetection lapack -big-endian -debug -index64 -test -verify-provenance
* oauthlib: Spec-compliant and thorough implementation of the OAuth request-signing logic 
   * 4.0.1 -test -verify-provenance
* olefile: Python package to parse, read and write Microsoft OLE2 files 
   * 0.47 -doc
* opentelemetry-api: OpenTelemetry Python API 
   * 1.45.2 -test
* opentelemetry-sdk: OpenTelemetry Python SDK 
   * 1.45.2 -test
* opentelemetry-semantic-conventions: OpenTelemetry Semantic Conventions 
   * 1.45.2 -test
* orderedmultidict: Ordered Multivalue Dictionary. Powers furl 
   * 1.0.1 -test
* orderly-set: A package containing multiple implementations of Ordered Set 
   * 5.5.0 -test
* orjson: Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy 
   * 3.13.0 -debug -test -verify-provenance
* packaging: Core utilities for Python packages 
   * 26.4 -test -verify-provenance
* paho-mqtt: MQTT version 5.0/3.1.1 client class 
   * 2.2.0 -test
* pandas: Powerful data structures for data analysis and statistics 
   * 3.1.1 -X -big-endian -debug -full-support -minimal -test -verify-provenance
* parameterized: Parameterized testing with any Python test framework 
   * 0.9.0 -test
* paramiko: SSH2 protocol library 
   * 5.1.0 -test
* parsedatetime: Parse human-readable date/time strings 
   * 2.6-r1 -test
* path: A module wrapper for os.path 
   * 17.1.1 -test
* pathspec: Utility library for gitignore style pattern matching of file paths 
   * 1.1.1 -verify-provenance
* pathvalidate: A Python library to sanitize/validate a string such as filenames/file-paths/etc 
   * 3.3.1 -test -verify-provenance
* pbr: Inject some useful and sensible default behaviors into setuptools 
   * 7.1.3 -test
* pbs-installer: Installer for Python Build Standalone 
   * 2026.11.24 -test -verify-provenance
* pdm-backend: A PEP 517 backend for PDM that supports PEP 621 metadata 
   * 2.5.0 -test
* peewee: Small Python ORM 
   * 4.5.3 native-extensions -debug -doc -examples -test
* pexpect: Python module for spawning child apps and responding to expected patterns 
   * 4.9.0 -doc -examples -test
* pillow: Python Imaging Library (fork) 
   * 13.0.0 jpeg webp zlib -avif -debug -examples -imagequant -jpeg2k -lcms -raqm -test -tiff -tk -truetype -xcb
* pkg-resources: pkg_resources package split from old setuptools 
   * 81.0.0 -test
* pkgconfig: Interface Python with pkg-config 
   * 1.5.5-r1 -test
* pkginfo: Provides an API for querying the distutils metadata written in a PKG-INFO file 
   * 2.0 -doc -test -verify-provenance
* platformdirs: A small Python module for determining appropriate platform-specific dirs 
   * 4.14.8 -test -verify-provenance
* pluggy: Plugin and hook calling mechanisms for Python 
   * 1.7.0 -test -verify-provenance
* ply: Python Lex-Yacc library 
   * 3.11-r2 -examples
* poetry: A frontend for poetry - a python dependency management and packaging tool 
   * 2.5.2 -test -verify-provenance
* poetry-core: Poetry PEP 517 Build Backend 
   * 2.5.0 -test -verify-provenance
* pooch: Manage your Python library's sample data files 
   * 1.9.0 -test -verify-provenance
* portalocker: A library for Python file locking 
   * 4.4.2 -test
* prettytable: Easily displaying tabular data in a visually appealing ASCII table format 
   * 3.19.0 -test -verify-provenance
* prompt-toolkit: Building powerful interactive command lines in Python 
   * 3.0.53 -test
* propcache: Accelerated property cache 
   * 0.5.4 native-extensions -debug -test -verify-provenance
* proto-plus: Beautiful, Pythonic protocol buffers 
   * 1.29.0 -test -verify-provenance
* protobuf: Google's Protocol Buffers - Python bindings 
   * 7.35.1 -debug -test
* psutil: Retrieve information on running processes and system utilization 
   * 7.2.2 -debug -test
* ptyprocess: Run a subprocess in a pseudo terminal 
   * 0.7.0-r2 
* py: library with cross-python path, ini-parsing, io, code, log facilities 
   * 1.11.0-r2 -test
* py-cpuinfo: Get CPU info with pure Python 2 & 3 
   * 9.0.0 
* py-landlock: Python bindings for the Linux Landlock security module 
   * 0.1.1 -test
* pyaes: Pure-Python Implementation of the AES block-cipher and common modes of operation 
   * 1.6.1-r3 -test
* pyasn1: ASN.1 library for Python 
   * 0.6.5 -doc
* pyasn1-modules: pyasn1 modules 
   * 0.4.2 -test
* pybind11: AST-based Python refactoring library 
   * 3.1.0 -test
* pycairo: Python bindings for the cairo library 
   * 1.29.2 -X -debug -doc -examples -test
* pycares: Python interface for c-ares 
   * 5.2.1 -debug -test
* pycodestyle: Python style guide checker (fka pep8) 
   * 2.15.0 -doc -test
* pycountry: Database of countries, subdivisions, languages, currencies and script 
   * 26.2.16 -test -verify-provenance
* pycparser: C parser and AST generator written in Python 
   * 3.12 -test
* pycryptodome: A self-contained cryptographic library for Python 
   * 4.6.0 -debug -test
* pydantic: Data parsing and validation using Python type hints 
   * 2.14.4 -debug -test -verify-provenance
* pydantic-settings: Settings management using Pydantic 
   * 2.16.3 -test -verify-provenance
* pyflakes: Passive checker for Python programs 
   * 4.1.0 -test
* pygments: Pygments is a syntax highlighting package written in Python 
   * 2.21.0 -test
* pygobject: Python bindings for GObject Introspection 
   * 3.58.1 cairo -debug -test
* pygraphviz: Python wrapper for the Graphviz Agraph data structure 
   * 2.0.4 -debug -test -verify-provenance
* pyjwt: JSON Web Token implementation in Python 
   * 2.15.1 -test -verify-provenance
* pynacl: Python binding to the Networking and Cryptography (NaCl) library 
   * 1.6.2 -debug -test
* pyopenssl: Python interface to the OpenSSL library 
   * 26.4.0 -doc -test -verify-provenance
* pyotp: PyOTP is a Python library for generating and verifying one-time passwords 
   * 2.12.2 -verify-provenance
* pyparsing: Easy-to-use Python module for text parsing 
   * 3.3.3 -examples -test
* pypng: Pure Python PNG image encoder/decoder 
   * 0.20220715.0 
* pyprof2calltree: Convert python profile data to kcachegrind calltree form 
   * 1.4.5-r1 
* pyproject-api: API to interact with the python pyproject.toml based projects 
   * 1.12.6 -test -verify-provenance
* pyproject-hooks: Wrappers to build Python packages using PEP 517 hooks 
   * 1.3.3 -test -verify-provenance
* pyproject-metadata: PEP 621 metadata parsing 
   * 0.12.1 -test -verify-provenance
* pyquery: A jQuery-like library for python 
   * 2.1.0 -test
* pyrate-limiter: Python Rate-Limiter using Leaky-Bucket Algorimth Family 
   * 4.6.0 -doc -test -verify-provenance
* pyrfc3339: Generates and parses RFC 3339 timestamps 
   * 2.1.1 -test
* pyroute2: A pure Python netlink and Linux network configuration library 
   * 0.9.6 
* pyserial: Python Serial Port extension 
   * 3.5-r3 -doc -examples
* pysmi: Pure-Python implementation of SNMP/SMI MIB parsing and conversion library 
   * 2.0.0 -test
* pysnmp: Python SNMP library 
   * 7.1.34 -test
* pysocks: SOCKS client module 
   * 1.7.1-r2 
* pytest: Simple powerful testing with Python 
   * 9.2.0-r1 -test -verify-provenance
* pytest-aiohttp: pytest plugin for aiohttp support 
   * 1.1.1 -test
* pytest-asyncio: Library for testing asyncio code with pytest 
   * 1.5.0 -test -verify-provenance
* pytest-cov: pytest plugin for coverage reporting 
   * 7.1.0 -doc -test
* pytest-freezer: Pytest plugin providing a fixture interface for spulec/freezegun 
   * 0.4.9 -test
* pytest-rerunfailures: pytest plugin to re-run tests to eliminate flaky failures 
   * 16.7 -test
* pytest-timeout: pytest plugin to abort hanging tests 
   * 2.5.0 -test
* python-dateutil: Extensions to the standard Python datetime module 
   * 4.0.0 -test -verify-provenance
* python-discovery: Python interpreter discovery 
   * 1.9.6 -test -verify-provenance
* python-dotenv: Manage .env files 
   * 1.2.4 -test -verify-provenance
* python-jose: A JavaScript Object Signing and Encryption (JOSE) implementation in Python 
   * 3.5.0 -doc -test
* python-magic: Access the libmagic file type identification library 
   * 0.4.27 -test
* python-mpd2: Python MPD client library 
   * 3.1.1 twisted -doc -examples -test
* python-multipart: A streaming multipart parser for Python 
   * 0.0.34 -test
* python-slugify: A Python Slugify application that handles Unicode 
   * 9.1.3 -test
* python-socks: SOCKS4, SOCKS5, HTTP tunneling functionality for Python 
   * 3.2.2 -test
* pythran: Ahead of Time compiler for numeric kernels 
   * 0.19.0 -test
* pytokens: A fast, spec compliant Python 3.13+ tokenizer that runs on older Pythons 
   * 0.4.1 -test
* pytz: World timezone definitions for Python 
   * 2026.6 -test -verify-provenance
* pyyaml: YAML parser and emitter for Python 
   * 6.0.4 -debug -examples -test
* pyzbar: Read one-dimensional barcodes and QR codes from Python 
   * 0.1.9 -test
* rapidfuzz: Rapid fuzzy string matching in Python using various string metrics 
   * 3.14.6 -debug -test -verify-provenance
* ratelimit: An API rate limit decorator for Python 
   * 2.2.1-r1 -test
* readme-renderer: A library for rendering 'readme' descriptions for Warehouse 
   * 46.0-r1 -test -verify-provenance
* recurring-ical-events: Repeat ICalendar events by RRULE, RDATE and EXDATE 
   * 3.8.2 -test
* redis: Python client for Redis key-value store 
   * 8.2.0 -test
* referencing: Cross-specification JSON referencing (JSON Schema, OpenAPI...) 
   * 0.37.0 -test -verify-provenance
* regex: Alternative regular expression module to replace re 
   * 2026.11.25 -debug -doc
* requests: HTTP library for human beings 
   * 2.34.2 test-rust -socks5 -test -verify-provenance
* requests-file: File transport adapter for Requests 
   * 3.0.1 -test
* requests-oauthlib: This project provides first-class OAuth library support for Requests 
   * 2.0.0 -test
* requests-toolbelt: A utility belt for advanced users of python-requests 
   * 1.0.0 test-rust -test
* rfc3161-client: An Opinionated Python RFC3161 Client 
   * 1.0.9 -debug -test
* rfc3339-validator: A pure python RFC3339 validator 
   * 0.1.4-r1 -test
* rfc3986: Validating URI References per RFC 3986 
   * 2.0.0-r1 -idna -test
* rfc3986-validator: Pure python RFC3986 validator 
   * 0.1.1-r2 -test
* rfc3987: Parsing and validation of URIs (RFC 3986) and IRIs (RFC 3987) 
   * 1.3.8-r3 
* rfc8785: Pure-Python impl. of RFC 8785 (JSON Canonicalization Scheme) 
   * 0.1.4 -test
* rich: Python library for rendering rich text, tables, etc. to the terminal 
   * 15.0.0 -test
* roman-numerals: Manipulate roman numerals 
   * 4.1.0 -test -verify-provenance
* rpds-py: Python bindings to Rust's persistent data structures (rpds) 
   * 2026.9.1 -debug -test -verify-provenance
* rsa: Pure-Python RSA implementation 
   * 4.9 -test
* ruamel-yaml: YAML parser/emitter that supports roundtrip comment preservation 
   * 0.19.1 -test
* ruamel-yaml-clibz: C-based reader/scanner and emitter for dev-python/ruamel-yaml 
   * 0.3.7 -debug
* scikit-build-core: Build backend for CMake based projects 
   * 1.1.2 -test -verify-provenance
* scipy: Scientific algorithms library for Python 
   * 1.18.1 fortran test-rust -debug -doc -index64 -test -verify-provenance
* secretstorage: Python bindings to FreeDesktop.org Secret Service API 
   * 3.5.0 -doc -test -verify-provenance
* securesystemslib: Cryptographic routines for Secure Systems Lab projects at NYU 
   * 1.6.0 -test -verify-provenance
* segno: Python QR Code and Micro QR Code encoder 
   * 1.6.6 -test
* semantic-version: Python library providing a few tools handling SemVer in Python 
   * 2.10.0 -doc -test
* semver: A Python module for semantic versioning 
   * 3.2.0 -test
* service-identity: Service identity verification for pyOpenSSL 
   * 26.1.0 -test -verify-provenance
* setuptools: Collection of extensions to Distutils 
   * 84.2.1 -test
* setuptools-rust: A plugin for setuptools to build Rust Python extensions 
   * 1.13.0 -debug -test
* setuptools-scm: Manage versions by scm tags via setuptools 
   * 10.3.4 -test -verify-provenance
* sgmllib3k: Py3k port of sgmllib 
   * 1.0.0-r1 -test
* shellingham: Tool to Detect Surrounding Shell 
   * 1.5.4 -test
* sigstore: A tool for signing Python package distributions 
   * 4.6.0 -test
* sigstore-models: Pydantic based models for Sigstore's protobuf specifications 
   * 0.0.6 -test
* sigstore-rekor-types: Python models for Rekor's API types 
   * 0.0.18 -verify-provenance
* simpleeval: A simple, safe single expression evaluator library 
   * 1.0.8 
* simplejson: Simple, fast, extensible JSON encoder/decoder for Python 
   * 4.3.0 native-extensions -debug -verify-provenance
* six: Python 2 and 3 compatibility library 
   * 1.17.0 -doc -test
* slixmpp: Python 3 library for XMPP 
   * 1.16.0 -debug -test
* snakeoil: misc common functionality and useful optimizations 
   * 0.11.7 -test -verify-provenance
* sniffio: Sniff out which async library your code is running under 
   * 1.3.1 -test
* snowballstemmer: Stemmer algorithms generated from Snowball algorithms 
   * 3.1.1 -test -verify-provenance
* socksio: Sans-I/O implementation of SOCKS4, SOCKS4A, and SOCKS5 
   * 1.0.0 -test
* sortedcontainers: Python library to sort collections and containers 
   * 2.4.0-r1 -test
* soupsieve: A modern CSS selector implementation for BeautifulSoup 
   * 4.1.3 -test
* sphinx: Python documentation generator 
   * 9.2.0 -doc -latex -test
* sphinx-basic-ng: A modern skeleton for Sphinx themes 
   * 1.0.0_beta2 -test
* sphinx-rtd-theme: ReadTheDocs.org theme for Sphinx 
   * 3.1.0 -test
* sphinxcontrib-applehelp: Sphinx extension which outputs Apple help book 
   * 2.0.0-r1 -test
* sphinxcontrib-devhelp: Sphinx extension which outputs Devhelp documents 
   * 2.0.0-r1 -test
* sphinxcontrib-htmlhelp: Sphinx extension which outputs HTML help book 
   * 2.1.0-r1 -test
* sphinxcontrib-jquery: Extension to include jQuery on newer Sphinx releases 
   * 4.1 -test
* sphinxcontrib-jsmath: Sphinx extension which renders display math in HTML via JavaScript 
   * 2.0.0 -test
* sphinxcontrib-qthelp: Sphinx extension which outputs QtHelp documents 
   * 2.0.0-r1 -test
* sphinxcontrib-serializinghtml: Sphinx extension which outputs outputs serialized HTML files 
   * 2.0.0-r1 -test
* sqlalchemy: Python SQL toolkit and Object Relational Mapper 
   * 2.1.9 sqlite -debug -examples -test -verify-provenance
* sqlparse: A non-validating SQL parser module for Python 
   * 0.6.1 -doc -test
* starlette: The little ASGI framework that shines 
   * 1.10.0 -test
* stevedore: Manage dynamic plugins for Python applications 
   * 5.10.0 -doc -test
* strict-rfc3339: Strict, simple, lightweight RFC3339 functions 
   * 0.7-r2 
* structlog: Structured Logging for Python 
   * 26.1.0 -test -verify-provenance
* svgwrite: Python Package to write SVG files 
   * 1.4.3 -test
* syrupy: The sweeter pytest snapshot plugin 
   * 7.0.3 -test -verify-provenance
* tabulate: Pretty-print tabular data 
   * 0.10.0 -test
* tempora: Objects and routines pertaining to date and time 
   * 5.13.0 -test
* tenacity: General-purpose retrying library 
   * 9.2.1 -test -verify-provenance
* testtools: Extensions to the Python standard library unit testing framework 
   * 2.9.2 -doc -test -verify-provenance
* text-unidecode: The most basic port of the Text::Unidecode Perl library 
   * 1.3-r1 -test
* tldextract: Accurately separate the TLD from the registered domain and subdomains of a URL 
   * 5.4.0 -test
* tokenize-rt: A wrapper around the stdlib 'tokenize' which roundtrips 
   * 6.2.0 -test
* tomli-w: A lil' TOML writer 
   * 1.2.0 -test
* tomlkit: Style preserving TOML library 
   * 0.15.3 -test
* tox: virtualenv-based automation of test activities 
   * 4.67.15 -test -verify-provenance
* tqdm: Add a progress meter to your loops in a second 
   * 4.70.1 -examples -test -verify-provenance
* tree-sitter: Python bindings to the Tree-sitter parsing library 
   * 0.26.1-r1 -debug -test
* trove-classifiers: Canonical source for classifiers on PyPI (pypi.org) 
   * 2026.9.21.13 -test -verify-provenance
* truststore: Verify certificates using native system trust stores 
   * 0.10.5 -test
* tuf: A secure updater framework for Python 
   * 7.0.1 -test -verify-provenance
* twine: Collection of utilities for publishing packages on PyPI 
   * 7.0.0 -test
* twisted: An asynchronous networking framework written in Python 
   * 26.10.0 ssl -conch -http2 -serial -test -verify-provenance -websockets
* typeguard: Run-time type checker for Python 
   * 4.6.1 -test -verify-provenance
* typer: Build great CLIs. Easy to code. Based on Python type hints 
   * 0.29.3 -cli -test
* typing-extensions: Backported and Experimental Type Hints for Python 3.7+ 
   * 4.16.0 -test -verify-provenance
* typing-inspection: Runtime typing introspection tools 
   * 0.4.4 -test -verify-provenance
* tzdata: tzdata shim to satisfy requirements (while using system tzdata) 
   * 10001 
* tzlocal: tzinfo object for the local timezone 
   * 5.4.5 -test
* uc-micro-py: Micro subset of unicode data files for linkify-it-py projects 
   * 2.0.0 -test -verify-provenance
* ujson: Ultra fast JSON encoder and decoder for Python 
   * 6.1.0 -debug -test -verify-provenance
* ukkonen: Implementation of bounded Levenshtein distance (Ukkonen) 
   * 1.1.0 -debug -test
* unasync: The async transformation code 
   * 0.6.0-r1 -doc -test
* unpaddedbase64: Unpadded Base64 
   * 2.1.0 
* untangle: Convert XML documents into Python objects 
   * 1.3.1 -test
* uri-template: URI Template expansion in strict adherence to RFC 6570 
   * 1.3.0 
* uritemplate: Python implementation of RFC6570, URI Template 
   * 4.2.0 -test -verify-provenance
* url-normalize: URL normalization for Python 
   * 4.0.0 -test
* urllib3: HTTP library with thread-safe connection pooling, file post, and more 
   * 2.8.0 -brotli -http2 -test -verify-provenance -zstd
* uv: A Python package installer and resolver, written in Rust 
   * 0.13.10 -debug -test
* uv-build: PEP517 uv build backend 
   * 0.13.10 -test
* uv-dynamic-versioning: Dynamic versioning based on VCS tags for uv/hatch project 
   * 0.14.1 -test -verify-provenance
* uvicorn: Lightning-fast ASGI server implementation 
   * 0.54.0 test-rust -test -verify-provenance
* validators: Python Data Validation for Humans 
   * 0.36.0 -test -verify-provenance
* vcs-versioning: Core VCS versioning functionality from setuptools-scm 
   * 2.6.0 -test -verify-provenance
* versioneer: Easy VCS-based management of project version strings 
   * 0.29-r1 -test
* virtualenv: Virtual Python Environment builder 
   * 21.15.12 -test -verify-provenance
* voluptuous: A Python data validation library 
   * 0.16.0 -test
* watchdog: Python API and shell utilities to monitor file system events 
   * 7.1.1 -test
* wcwidth: Measures number of Terminal column cells of wide-character codes 
   * 0.9.5 native-extensions -debug -test -verify-provenance
* webcolors: Color names and value formats defined by the HTML and CSS specifications 
   * 25.10.0 -test
* webencodings: Character encoding aliases for legacy web content 
   * 0.6.1 -test -verify-provenance
* websocket-client: WebSocket client for python with hybi13 support 
   * 1.9.2 -examples -test
* websockets: Library for building WebSocket servers and clients in Python 
   * 17.4 native-extensions -debug -test
* werkzeug: Collection of various utilities for WSGI applications 
   * 3.1.9 test-rust -test -verify-provenance
* wheel: A built-package format for Python 
   * 0.48.0 -test -verify-provenance
* wrapt: Module for decorators, wrappers and monkey patching 
   * 2.5.2 native-extensions -debug -test -verify-provenance
* wsproto: WebSockets state-machine based protocol implementation 
   * 1.3.2 -test
* x-wr-timezone: Convert calendars using X-WR-TIMEZONE to standard ones 
   * 2.0.1 -test
* xlsxwriter: Python module for creating Excel XLSX files 
   * 3.3.4 -test
* xmlschema: An XML Schema validator and decoder 
   * 4.3.2 -test
* xmltodict: Makes working with XML feel like you are working with JSON 
   * 1.0.4 -test -verify-provenance
* yarl: Yet another URL library 
   * 1.25.1 native-extensions -debug -test -verify-provenance
* zeep: A modern/fast Python SOAP client based on lxml / requests 
   * 4.3.3 -async -test -verify-provenance
* zeroconf: Pure Python Multicast DNS Service Discovery Library (Bonjour/Avahi compatible) 
   * 0.154.0 native-extensions -debug -test -verify-provenance
* zipp: Backport of pathlib-compatible object wrapper for zip files 
   * 4.1.2 -test
* zlib-ng: Drop-in replacement for zlib and gzip modules using zlib-ng 
   * 1.1.0 -debug -test -verify-provenance
* zope-interface: Interfaces for Python 
   * 8.7 native-extensions -debug -test -verify-provenance
Found 431 matches
### dev-util: Various miscellaneous development utilities
* debugedit: Create debuginfo and source file distributions 
   * 5.4 -test -verify-sig
* desktop-file-utils: Command line utilities to work with desktop menu entries 
   * 0.29 
* glib-utils: Build utilities for GLib using projects 
   * 2.88.4 
* google-perftools: Fast, multi-threaded malloc() and nifty performance analysis tools 
   * 2.19.2 debug -llvm-libunwind -minimal -optimisememory -pagesize-16k -pagesize-32k -pagesize-64k -pagesize-128k -pagesize-256k -static-libs -test
* gperf: A perfect hash function generator 
   * 3.3 
* maturin: Build and publish crates with pyo3, rust-cpython and cffi bindings 
   * 1.16.0 ssl -debug -doc -test
* patchelf: Small utility to modify the dynamic linker and RPATH of ELF executables 
   * 0.19.3 -test
* pkgcheck: pkgcore-based QA utility for ebuild repos 
   * 0.10.50 -emacs -test
* pkgconf: pkg-config compatible replacement with no dependencies other than C99 
   * 3.0.11 native-symlinks
* re2c: Tool for generating C-based recognizers from regular expressions 
   * 3.1 -debug -test
* ruff: An extremely fast Python linter, written in Rust 
   * 0.17.6 -debug
* shellcheck-bin: Shell script analysis tool (binary package) 
   * 0.11.0 
Found 12 matches
### dev-vcs: Utilities focused on version control
* git: Stupid content tracker: distributed VCS designed for speed and efficiency 
   * 2.56.1 curl gpg iconv nls pcre perl rust safe-directory webdav -cgi -cvs -debug -doc -highlight -keyring -perforce -selinux -subversion -test -tk -xinetd
* pre-commit: A framework for managing and maintaining multi-language Git pre-commit hooks 
   * 4.7.0 -test
Found 2 matches
### mail-mta: Mail transport agent packages
* nullmailer: Simple relay-only local mail transport agent 
   * 2.2-r2 ssl -test
### media-fonts: Fonts
* liberation-fonts: A Helvetica/Times/Courier replacement TrueType font set, courtesy of Red Hat 
   * 2.1.5 -X -fontforge
### media-gfx: Graphics-related packages
* graphite2: Library providing rendering capabilities for complex non-Roman writing systems 
   * 1.3.14_p20210810-r5 -perl -test
* graphviz: Open Source Graph Visualization Software 
   * 16.1.0 cairo nls -X -aalib -devil -doc -examples -gtk2 -gts -guile -lasi -pdf -perl -postscript -python -qt6 -ruby -svg -tcl -webp
* imagemagick: A collection of tools and libraries for many image formats 
   * 7.1.2.36 bzip2 cxx jpeg openmp png tiff zlib -X -corefonts -djvu -fftw -fontconfig -fpx -graphviz -hardened -hdri -heif -jbig -jpeg2k -jpegxl -lcms -lqr -lzma -opencl -openexr -pango -perl -postscript -q8 -q32 -raw -static-libs -svg -test -truetype -verify-sig -webp -wmf -xml -zip
* zbar: Library and tools for reading barcodes from images or video 
   * 0.23.93-r3 imagemagick nls threads -X -dbus -graphicsmagick -gtk -introspection -java -jpeg -python -test -v4l -xv
Found 4 matches
### media-libs: Media-related libraries
* alsa-lib: Advanced Linux Sound Architecture Library 
   * 1.2.16.1 -debug -doc -python -verify-sig
* alsa-topology-conf: ALSA topology configuration files 
   * 1.2.5.1-r1 -verify-sig
* alsa-ucm-conf: ALSA ucm configuration files 
   * 1.2.16.1 -verify-sig
* dav1d: dav1d is an AV1 Decoder :) 
   * 1.5.4 8bit 10bit asm -test -xxhash
* flac: Free lossless audio encoder and decoder 
   * 1.5.0 cxx -debug -ogg -static-libs
* fontconfig: A library for configuring and customizing font access 
   * 2.18.4 nls -doc -test
* freeimage: Image library supporting many formats 
   * 3.18.0-r11 -jpeg -jpeg2k -mng -openexr -png -raw -static-libs -tiff -webp
* freetype: High-quality and portable font engine 
   * 2.15.0 adobe-cff bzip2 cleartype-hinting harfbuzz png -X -brotli -debug -doc -fontforge -static-libs -svg -utils -verify-sig
* gd: Graphics library for fast image creation 
   * 2.3.3-r4 fontconfig jpeg png truetype zlib -avif -heif -static-libs -test -tiff -webp -xpm
* harfbuzz: An OpenType text shaping engine 
   * 12.3.2 cairo glib graphite introspection truetype -debug -doc -experimental -icu -test
* libass: Library for SSA/ASS subtitles rendering 
   * 0.17.5-r1 fontconfig libunibreak -test -verify-sig
* libjpeg-turbo: MMX, SSE, and SSE2 SIMD accelerated JPEG library 
   * 3.1.4.1 -java -static-libs -test -verify-sig
* libogg: The Ogg media file format library 
   * 1.3.6 -static-libs
* libpng: Portable Network Graphics library 
   * 1.6.59-r1 -apng -static-libs -test
* libpulse: Libraries for PulseAudio clients 
   * 17.0 X asyncns glib -dbus -doc -gtk -selinux -systemd -test -valgrind
* libsndfile: C library for reading and writing files containing sampled sound 
   * 1.2.2-r2 -alsa -minimal -sqlite -test
* libvorbis: The Ogg Vorbis sound file format library 
   * 1.3.7-r2 -static-libs -test
* libwebp: A lossy image compression format 
   * 1.6.0 jpeg png -gif -opengl -static-libs -swap-16bit-csp -tiff
* mutagen: Audio metadata tag reader and writer implemented in pure Python 
   * 1.48.1 -doc -test
* opus: Open codec for interactive speech and music transmission over the Internet 
   * 1.6.1 -custom-modes -debug -deep-plc -doc -dred -hardened -osce -static-libs -test
* qhull: Geometry library 
   * 2020.2.8.1_alpha6 -doc -static-libs -test -tools
* speexdsp: Audio compression format designed for speech -- DSP 
   * 1.2.1 
* tiff: Tag Image File Format (TIFF) library 
   * 4.7.1 cxx zlib -jbig -jpeg -lerc -libdeflate -lzma -opengl -static-libs -test -verify-sig -webp -zstd
* webrtc-audio-processing: AudioProcessing library from the webrtc.org codebase 
   * 1.3-r5 
   * 2.1 
Found 24 matches
### media-plugins: Plugin packages for various media applications
* alsa-plugins: ALSA extra plugins 
   * 1.2.12 mix pulseaudio usb_stream -arcam_av -debug -ffmpeg -jack -libsamplerate -oss -speex -verify-sig
### media-sound: Sound, music and audio applications
* lame: LAME Ain't an MP3 Encoder 
   * 3.100-r3 frontend -debug -mp3rtp -sndfile -static-libs
* mpg123-base: Realtime MPEG 1.0/2.0/2.5 audio player for layers 1, 2 and 3 
   * 1.33.7 ipv6 -alsa -coreaudio -int-quality -jack -nas -oss -portaudio -pulseaudio -sdl -verify-sig
* pulseaudio-daemon: Daemon component of PulseAudio (networked sound server) 
   * 17.0-r2 X alsa alsa-plugin asyncns gdbm glib orc ssl udev webrtc-aec -aptx -bluetooth -dbus -elogind -equalizer -fftw -gstreamer -jack -ldac -lirc -ofono-headset -oss -selinux -sox -system-wide -systemd -tcpd -test -valgrind -zeroconf
Found 3 matches
### media-video: Video-related applications
* ffmpeg: Complete solution to record/convert/stream audio and video 
   * 9.1 bzip2 dav1d drm fontconfig gnutls gpl libass truetype xml zlib -X -alsa -amf -amr -amrenc -appkit -bluray -bs2b -cairo -cdio -chromaprint -chromium -codec2 -cuda-clang -curl -doc -dvd -fdk -flite -frei0r -fribidi -gcrypt -gme -gmp -gsm -iec61883 -ieee1394 -jack -jpeg2k -jpegxl -kvazaar -ladspa -lame -lcms -libaom -libaribb24 -libcaca -libilbc -liblc3 -libplacebo -librtmp -libsoxr -lv2 -lzma -modplug -nvenc -ocr -openal -opencl -opencolorio -openh264 -openmpt -openssl -opus -pulseaudio -qrcode -qsv -quirc -rabbitmq -rav1e -rist -rubberband -samba -sdl -snappy -sndio -sofa -speex -srt -ssh -svg -svt-av1 -theora -twolame -v4l -vaapi -vdpau -verify-sig -vidstab -vmaf -vorbis -vpx -vulkan -webp -x264 -x265 -xvid -zeromq -zimg -zvbi
### net-dns: DNS (Domain Name Service) related software
* c-ares: C library that resolves names asynchronously 
   * 1.34.9 -static-libs -test -verify-sig
* libidn2: An implementation of the IDNA2008 specifications (RFCs 5890, 5891, 5892, 5893) 
   * 2.3.8 nls -static-libs -verify-sig
Found 2 matches
### net-firewall: Network firewall software
* iptables: Linux kernel (2.4+) firewall, NAT and packet mangling tools 
   * 1.8.13 -conntrack -netlink -nftables -pcap -static-libs -test -verify-sig
### net-libs: Libraries that are network-related
* gnutls: Secure communications library implementing the SSL, TLS and DTLS protocols 
   * 3.8.14 cxx idn nls openssl post-quantum tls-heartbeat zlib -brotli -dane -doc -examples -pkcs11 -sslv2 -sslv3 -static-libs -systemtap -test -test-full -tools -verify-sig -zstd
* libasyncns: C library for executing name service queries asynchronously 
   * 0.8-r5 -debug -doc
* libmicrohttpd: Small C library to run an HTTP server as part of another application 
   * 1.0.5 epoll eventfd ssl thread-names -debug -static-libs -test -verify-sig
* libmnl: Minimalistic netlink library 
   * 1.0.5 -examples -verify-sig
* libnsl: Public client interface for NIS(YP) in a IPv6 ready version 
   * 2.0.1 -static-libs
* libpcap: System-independent library for user-level network packet capture 
   * 1.11.0 -bluetooth -dbus -netlink -rdma -remote -static-libs -test -usb -verify-sig -yydebug
* libpsl: C library for the Public Suffix List 
   * 0.23.3 idn -icu -static-libs -test
* libtirpc: Transport Independent RPC library (SunRPC replacement) 
   * 1.3.7-r2 -kerberos -static-libs
* llhttp: Port of http_parser to llparse 
   * 9.4.4 
* nghttp2: HTTP/2 C Library 
   * 1.71.0 -debug -hpack-tools -systemd -test -utils -verify-sig -xml
* nghttp3: HTTP/3 library written in C 
   * 1.19.0 -verify-sig
* ngtcp2: Implementation of the IETF QUIC Protocol 
   * 1.26.0 openssl ssl -gnutls -verify-sig
* nodejs: A JavaScript runtime built on Chrome's V8 JavaScript engine 
   * 24.22.3-r2 icu inspector npm snapshot ssl system-icu system-ssl -corepack -debug -doc -lto -pax-kernel -test
Found 13 matches
### net-mail: Various email-related utilities
* mailbase: MTA layout package 
   * 1.8.1 pam
### net-misc: Various miscellaneous networking tools and utilities
* curl: A Client that groks URLs 
   * 8.23.0-r1 adns alt-svc ftp hsts http2 http3 httpsrr imap openssl pop3 psl quic smtp ssl tftp websockets -brotli -debug -ech -gnutls -gopher -idn -kerberos -ldap -mbedtls -rustls -sasl-scram -ssh -static-libs -telnet -test -verify-sig -zstd
* dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client 
   * 10.5.2 embedded ipv6 udev -debug -privsep -verify-sig
* iperf: TCP, UDP, and SCTP network bandwidth measurement tool 
   * 3.22 -sctp
* iputils: Network monitoring tools including ping and ping6 
   * 20250605-r4 arping caps filecaps nls suid -clockdiff -doc -idn -test -tracepath -verify-sig
* netifrc: Gentoo Network Interface Management Scripts 
   * 0.7.14-r1 dhcp -systemd
* openssh: Port of OpenBSD's free SSH release 
   * 10.6_p2 pam seccomp ssl -audit -debug -kerberos -ldns -libedit -livecd -security-key -selinux -static -test -verify-sig
* rsync: File transfer program to keep remote files into sync 
   * 3.5.2-r1 acl iconv ssl xattr xxhash -examples -idn -lz4 -rrsync -stunnel -system-zlib -test -verify-sig -zstd
* socat: Multipurpose relay (SOcket CAT) 
   * 1.8.1.3 ipv6 readline ssl -tcpd
* wget: Network utility to retrieve files from the WWW 
   * 1.25.0-r3 nls pcre psl ssl zlib -debug -gnutls -idn -libproxy -metalink -ntlm -static -test -uuid -verify-sig
Found 9 matches
### net-proxy: Network proxy software
* haproxy: A TCP/HTTP reverse proxy for high availability environments 
   * 3.4.9 crypt doc net_ns pcre ssl threads zlib -51degrees -ech -examples -lua -pcre-jit -prometheus-exporter -quic -selinux -slz -systemd -test -tools -wurfl
### net-wireless: Wireless networking software and utilities
* bluez: Bluetooth Tools and System Daemons for Linux 
   * 5.88 mesh obex readline udev -btpclient -cups -debug -deprecated -doc -experimental -extra-tools -man -midi -selinux -systemd -test -test-programs
### perl-core: Libraries and utilities relevant to the Perl programming language which correspond to parts of core 
* File-Temp: File::Temp can be used to create and open temporary files in a safe way 
   * 0.231.200 -test
### sci-libs: Various science-related libraries
* blas-lapack-aux-wrapper: BLAS/LAPACK wrappers for FlexiBLAS 
   * 6-r1 -index64 -test
* flexiblas: A BLAS and LAPACK wrapper library with runtime exchangable backends 
   * 3.5.0 openblas openmp system-blas -blis -index64 -mkl -tbb -test
* lapack: BLAS, CBLAS, LAPACK, LAPACKE reference implementations 
   * 3.12.1-r2 deprecated flexiblas lapacke -doc -eselect-ldso -index64 -test
* openblas: Optimized BLAS library based on GotoBLAS2 
   * 0.3.34 openmp -cpudetection -index64 -pthread -relapack -test
Found 4 matches
### sci-ml: Software and models that can be used for machine learning, natural language processing and similar"
* hf_xet: xet client tech, used in huggingface_hub 
   * 1.5.2 -debug -test
* safetensors: Simple, safe way to store and distribute tensors 
   * 0.8.0 -debug
Found 2 matches
### sec-keys: Cryptographic key bundles such as OpenPGP keys used by upstream to sign distfiles
* openpgp-keys-gentoo-release: OpenPGP keys used for Gentoo releases (snapshots, stages) 
   * 20260125 -test
* openpgp-keys-nmap: OpenPGP keys used to sign Nmap releases 
   * 20210416 
Found 2 matches
### sys-apps: Various core system applications, and some non-core system applications which have not yet been moved out into other sys- categories
* acl: Access control list utilities, libraries, and headers 
   * 2.4.0-r2 nls -static-libs -verify-sig
* attr: Extended attributes tools 
   * 2.6.0 nls -debug -static-libs -verify-sig
* baselayout: Filesystem baselayout and init scripts 
   * 2.18-r1 -build -split-usr
* coreutils: Standard GNU utilities (chmod, cp, dd, ls, sort, tr, head, wc, who,...) 
   * 9.12 acl nls openssl xattr -caps -gmp -hostname -kill -multicall -selinux -split-usr -static -test -test-full -vanilla -verify-sig
* dbus: A message bus system, a simple way for applications to talk to each other 
   * 1.16.4-r1 -X -apparmor -audit -debug -doc -elogind -selinux -static-libs -systemd -test -valgrind
* debianutils: A selection of tools from Debian 
   * 5.23.2 -static
* diffutils: Tools to make diffs and compare files 
   * 3.12 nls -verify-sig
* file: Identify a file's format by scanning binary data for patterns 
   * 5.48 bzip2 zlib -lzip -lzma -python -seccomp -static-libs -verify-sig -zstd
* findutils: GNU utilities for finding files 
   * 4.11.0 nls -selinux -static -test -test-full -verify-sig
* gawk: GNU awk pattern-matching language 
   * 5.4.2 mpfr nls readline -pma -verify-sig
* gentoo-functions: Base functions required by all Gentoo systems 
   * 1.7.7 -test
* grep: GNU regular expression matcher 
   * 3.12 egrep-fgrep nls pcre -static -test-full -verify-sig
* help2man: GNU utility to convert program --help output to a man page 
   * 1.49.3 nls
* hwdata: Hardware identification and configuration data 
   * 0.413 
* install-xattr: Wrapper to coreutils install to preserve Filesystem Extended Attributes 
   * 0.13 
* iproute2: kernel routing and traffic control utilities 
   * 7.3.0 iptables -atm -berkdb -bpf -caps -elf -minimal -nfs -selinux
* kbd: Keyboard and console utilities 
   * 2.10.0 bzip2 nls pam zlib -lzma -selinux -test -xkb -zstd
* kmod: Library and tools for managing linux kernel modules 
   * 34.2 lzma tools zlib zstd -debug -doc -pkcs7
* less: Excellent text file viewer 
   * 710 pcre -test -verify-sig
* locale-gen: Generate locales based upon the config file /etc/locale.gen 
   * 3.10 
* lsb-release: LSB version query program 
   * 3.3 
* net-tools: Standard Linux networking tools 
   * 2.10 arp hostname ipv6 nls -nis -plipconfig -selinux -slattach -static
* openrc: OpenRC manages the services, startup and shutdown of a host 
   * 0.64.1-r1 netifrc pam sysvinit unicode -audit -bash -debug -newnet -s6 -selinux -sysv-utils
* pcsc-lite: PC/SC Architecture smartcard middleware library 
   * 2.5.3 udev -embedded -libusb -policykit -selinux -systemd -verify-sig
* pkgcore: a framework for package management 
   * 0.12.50 -test
* portage: The package management and distribution system for Gentoo 
   * 3.0.83-r1 ipc native-extensions rsync-verify xattr -apidoc -build -doc -gentoo-dev -selinux -test
* sandbox: sandbox'd LD_PRELOAD hack 
   * 2.51 nnp
* sed: Super-useful stream editor 
   * 4.10-r1 acl nls xattr -selinux -static -test-full -verify-sig
* shadow: Utilities to deal with user accounts 
   * 4.20.4 acl nls pam -audit -selinux -skey -split-usr -su -systemd -test -verify-sig
* systemd-utils: Utilities split out from systemd for OpenRC users 
   * 262 acl kmod sysctl tmpfiles udev -boot -kernel-install -secureboot -selinux -split-usr -sysusers -test -ukify
* sysvinit: /sbin/init - parent of all processes 
   * 3.18 nls -ibm -selinux -static -verify-sig
* texinfo: The GNU info program and utilities 
   * 7.3 nls standalone -static -test -verify-sig
* util-linux: Various useful Linux utilities 
   * 2.42.4 cramfs hardlink logger ncurses nls pam readline su suid unicode -audit -build -caps -cryptsetup -fdformat -kill -magic -python -rtas -selinux -slang -static-libs -systemd -test -tty-helpers -udev -uuidd -verify-sig
* which: Prints out location of specified executables that are in your path 
   * 2.23 
Found 34 matches
### sys-auth: Applications and libraries to support authentication and authorization facilities. Here belongs PAM modules, NSS modules and login apps
* pam_xdg: PAM module that manages XDG Base Directories 
   * 0.8.5 
* pambase: PAM base configuration files 
   * 20260730 nullok passwdqc yescrypt -caps -debug -elogind -gnome-keyring -homed -minimal -mktemp -pam_krb5 -pam_ssh -pwhistory -pwquality -securetty -selinux -sha512 -sssd -systemd -turnstile
* passwdqc: Password strength checking library (and PAM module) 
   * 2.1.0-r1 -audit -verify-sig
Found 3 matches
### sys-devel: Various core system development tools and libraries
* binutils: Tools necessary to build programs 
   * 2.47 cet debuginfod nls plugins zstd -doc -gprofng -hardened -multitarget -pgo -static-libs -test -vanilla -verify-sig -xxhash
* binutils-config: Utility to change the binutils version being used 
   * 5.6 native-symlinks
* bison: A general-purpose (yacc-compatible) parser generator 
   * 3.8.2-r3 nls -examples -static -test -verify-sig
* flex: The Fast Lexical Analyzer 
   * 2.6.4-r6 nls -static -test
* gcc: The GNU Compiler Collection 
   * 16.2.1_p20260926 cet cxx default-stack-clash-protection default-znow fortran nls openmp pie sanitize ssp zstd -ada -algol68 -cobol -custom-cflags -d -debug -doc -fixed-point -go -graphite -hardened -ieee-long-double -jit -libgdiagnostics -libssp -lto -modula2 -multilib -objc -objc++ -objc-gc -pch -pgo -rust -systemtap -test -time64 -valgrind -vanilla -vtv
* gcc-config: Utility to manage compilers 
   * 2.12.2 cc-wrappers native-symlinks
* gettext: GNU locale utilities 
   * 0.23.2 acl cxx ncurses nls openmp xattr -doc -emacs -git -java -static-libs -verify-sig
* gnuconfig: Updated config.sub and config.guess file from GNU 
   * 20260517 
* m4: GNU macro processor 
   * 1.4.21 nls -examples -verify-sig
* patch: Utility to apply diffs to files 
   * 2.8.1 xattr -static -test -verify-sig
Found 10 matches
### sys-fs: Filesystem tools and utilities
* e2fsprogs: Standard EXT2/EXT3/EXT4 filesystem utilities 
   * 1.47.4 nls tools -archive -cron -fuse -static-libs -test -verify-sig
* udev-init-scripts: udev startup scripts for openrc 
   * 35 
Found 2 matches
### sys-kernel: Kernel source ebuilds and kernel-related tools
* linux-headers: Linux system headers 
   * 7.1 -headers-only
### sys-libs: Various system-level libraries
* gdbm: Standard GNU database libraries 
   * 1.26 berkdb nls readline -static-libs -test -verify-sig
* glibc: GNU libc C library 
   * 2.44-r4 cet multiarch ssp static-libs -audit -caps -clang -compile-locales -custom-cflags -doc -gd -hash-sysv-compat -headers-only -multilib -multilib-bootstrap -nscd -old-kernel -perl -profile -selinux -sframe -stack-realign -suid -systemd -systemtap -test -vanilla -verify-sig
* libcap: POSIX 1003.1e capabilities 
   * 2.78 pam -static-libs -tools
* libunwind: Portable and efficient API to determine the call-chain of a program 
   * 1.8.3 zlib -debug -debug-frame -doc -libatomic -lzma -static-libs -test
* libxcrypt: Extended crypt library for descrypt, md5crypt, bcrypt, and others 
   * 4.5.2-r1 compat system -headers-only -static-libs -test
* ncurses: Console display library 
   * 6.5_p20251220 cxx tinfo -ada -debug -doc -gpm -minimal -profile -split-usr -stack-realign -static-libs -test -trace -verify-sig
* pam: Linux-PAM (Pluggable Authentication Modules) 
   * 1.7.3 nls -audit -berkdb -debug -elogind -examples -nis -selinux -systemd -verify-sig
* readline: Another cute console display library 
   * 8.3_p6-r2 unicode -static-libs -utils -verify-sig
* timezone-data: Timezone data (/usr/share/zoneinfo) and utilities (tzselect/zic/zdump) 
   * 2026f nls -leaps-timezone -verify-sig -zic-slim
* zlib: Standard (de)compression library 
   * 1.4 -minizip -static-libs -verify-sig
* zlib-ng: Fork of the zlib data compression library 
   * 2.3.3 -compat -static-libs -test
Found 11 matches
### sys-process: Packages which query or manipulate processes. The 'cron' daemons are included in this
* cronbase: Base for all cron ebuilds 
   * 0.3.7-r10 
* cronie: Cronie is a standard UNIX daemon cron based on the original vixie-cron 
   * 1.7.2-r1 anacron inotify pam -audit -selinux
* procps: Standard informational utilities and process-handling tools 
   * 4.0.6 kill ncurses nls unicode -elogind -modern-top -selinux -skill -static-libs -systemd -test -verify-sig
* psmisc: A set of tools that use the proc filesystem 
   * 23.7 nls -X -apparmor -selinux -test -verify-sig
Found 4 matches
### virtual: Packages which satisfy virtual dependencies
* acl: Virtual for acl support (sys/acl.h) 
   * 2.4.0 -static-libs
* cblas: Virtual for BLAS C implementation 
   * 3.8-r1 flexiblas -eselect-ldso -index64
* cron: Virtual for cron 
   * 0-r3 
* dev-manager: Virtual for the device filesystem manager 
   * 0-r2 
* editor: Virtual for editor 
   * 0-r8 
* fortran: Virtual for Fortran Compiler 
   * 0-r1 openmp
* imagemagick-tools: Virtual for imagemagick command line tools 
   * 1 jpeg tiff -perl -png -postscript -svg
* lapack: Virtual for Linear Algebra Package FORTRAN 77 (LAPACK) implementation 
   * 3.10-r1 flexiblas -eselect-ldso -index64
* libc: Virtual for the C library 
   * 1-r1 
* libcrypt: Virtual for libcrypt.so 
   * 2-r1 -static-libs
* libelf: Virtual for libelf.so.1 provider dev-libs/elfutils 
   * 3-r1 
* libiconv: Virtual for the GNU conversion library 
   * 0-r2 
* libintl: Virtual for the GNU Internationalization Library 
   * 0-r2 
* libudev: Virtual for libudev providers 
   * 257 -systemd
* libusb: Virtual for libusb 
   * 1-r2 -udev
* logger: Virtual for system loggers 
   * 0-r3 -systemd
* mta: Virtual for Message Transfer Agents 
   * 1-r2 
* openssh: Virtual for net-misc/openssh and variants 
   * 0-r2 ssl
* os-headers: Virtual for operating system headers 
   * 0-r2 
* package-manager: Virtual for the package manager 
   * 2 
* pager: Virtual for command-line pagers 
   * 0-r1 
* perl-CPAN: Virtual for CPAN 
   * 2.380.0-r1 
* perl-CPAN-Meta: Virtual for CPAN-Meta 
   * 2.150.13 
* perl-Carp: Virtual for Carp 
   * 1.540.0-r3 
* perl-Compress-Raw-Bzip2: Virtual for Compress-Raw-Bzip2 
   * 2.218.0 
* perl-Compress-Raw-Zlib: Virtual for Compress-Raw-Zlib 
   * 2.222.0-r1 
* perl-Data-Dumper: Virtual for Data-Dumper 
   * 2.192.0-r1 
* perl-Digest-MD5: Virtual for Digest-MD5 
   * 2.590.0-r1 
* perl-Digest-SHA: Virtual for Digest-SHA 
   * 6.40.0-r3 
* perl-Encode: Virtual for Encode 
   * 3.240.0 
* perl-Exporter: Virtual for Exporter 
   * 5.790.0-r1 
* perl-ExtUtils-CBuilder: Virtual for ExtUtils-CBuilder 
   * 0.280.243 
* perl-ExtUtils-MakeMaker: Virtual for ExtUtils-MakeMaker 
   * 7.780.0 
* perl-ExtUtils-ParseXS: Virtual for ExtUtils-ParseXS 
   * 3.630.0 
* perl-File-Path: Virtual for File-Path 
   * 2.180.0-r5 
* perl-File-Spec: Virtual for File-Spec 
   * 3.950.0 
* perl-File-Temp: Virtual for File-Temp 
   * 0.231.200 
* perl-IO: Virtual for IO 
   * 1.560.0 
* perl-IO-Compress: Virtual for IO-Compress 
   * 2.223.0-r1 
* perl-JSON-PP: Virtual for JSON-PP 
   * 4.160.0-r4 
* perl-MIME-Base64: Virtual for MIME-Base64 
   * 3.160.100_rc-r3 
* perl-Math-BigInt: Virtual for Math-BigInt 
   * 2.5.3 
* perl-Module-Metadata: Virtual for Module-Metadata 
   * 1.0.39 
* perl-Scalar-List-Utils: Virtual for Scalar::Util and List::Util, also distributed as Scalar::List::Utils 
   * 1.700.0 
* perl-Test-Harness: Virtual for Test-Harness 
   * 3.520.0 
* perl-Text-ParseWords: Virtual for Text-ParseWords 
   * 3.310.0-r5 
* perl-Time-Local: Virtual for Time-Local 
   * 1.350.0-r2 
* perl-XSLoader: Virtual for XSLoader 
   * 0.320.0-r3 
* perl-libnet: Virtual for libnet 
   * 3.150.0-r3 ssl
* perl-podlators: Virtual for podlators 
   * 6.0.2-r1 
* perl-version: Virtual for version 
   * 0.993.400 
* pkgconfig: Virtual for the pkg-config implementation 
   * 3 native-symlinks
* service-manager: Virtual for various service managers 
   * 3 -systemd
* ssh: Virtual for SSH client and server 
   * 0-r2 -minimal
* tmpfiles: Virtual to select between different tmpfiles.d handlers 
   * 0-r7 -systemd
* ttf-fonts: Virtual for Serif/Sans/Monospace font packages 
   * 1-r2 
* udev: Virtual to select between different udev daemon providers 
   * 217-r7 -systemd
* zlib: Virtual for libz.so providers 
   * 1.3.1-r1 -static-libs
Found 58 matches
### x11-base: Various X11 base implementations
* xcb-proto: X C-language Bindings protocol headers 
   * 1.17.0 
* xorg-proto: X.Org combined protocol headers 
   * 2026.1 -test
Found 2 matches
### x11-libs: Various X11-related libraries
* cairo: A vector graphics library with cross-device output support 
   * 1.18.6 X glib -aqua -debug -gtk-doc -lzo -test
* libICE: X.Org Inter-Client Exchange library 
   * 1.1.2 
* libSM: X.Org Session Management library 
   * 1.2.6 uuid -doc
* libX11: X.Org X11 library 
   * 1.8.14 -doc -test
* libXau: X.Org X authorization library 
   * 1.0.12 -doc
* libXdmcp: X.Org X Display Manager Control Protocol library 
   * 1.1.5 -doc
* libXext: X.Org Xext library 
   * 1.3.7 -doc
* libXfixes: X.Org Xfixes library 
   * 6.0.2 -doc
* libXi: X.Org Xi library 
   * 1.8.4 -doc
* libXrender: X.Org Xrender library 
   * 0.9.13 
* libXtst: X.Org Xlib-based client API for the XTEST & RECORD extensions library 
   * 1.2.6 -doc
* libdrm: X.Org libdrm library 
   * 2.4.134 -doc -test -tools -udev -valgrind
* libpciaccess: Library providing generic access to the PCI bus and devices 
   * 0.19 zlib -static-libs
* libxcb: X C-language Bindings library 
   * 1.17.0 xkb -doc -selinux -test
* pango: Internationalized text layout and rendering library 
   * 1.58.2 introspection -X -debug -examples -gtk-doc -libthai -sysprof -test
* pixman: Low-level pixel manipulation routines 
   * 0.46.4 -loongson2f -static-libs -test
* xtrans: X.Org xtrans library 
   * 1.6.0 -doc
Found 17 matches
### x11-misc: Miscellaneous X11 applications which do not belong elsewhere
* compose-tables: X.Org Compose Key tables from libX11 
   * 1.8.14 
* shared-mime-info: The Shared MIME-info Database specification 
   * 2.5.1 -test
Found 2 matches
