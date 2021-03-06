### kubler/webhook:20171030

Built: Mon Oct 30 15:47:29 CET 2017
Image Size: 74.8MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-crypt/gnupg-2.2.0 | `bzip2 gnutls nls readline -doc -ldap (-selinux) -smartcard -tofu -tools -usb -wks-server`
app-crypt/pinentry-0.9.7-r1 | `ncurses -caps -emacs -gnome-keyring -gtk -qt4 -qt5 -static`
app-eselect/eselect-lib-bin-symlink-0.1.1 | ``
app-eselect/eselect-pinentry-0.7 | ``
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libassuan-2.4.3-r1 | `-static-libs`
dev-libs/libgcrypt-1.8.1 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libksba-1.3.5-r1 | `-static-libs`
dev-libs/libpcre-8.41 | `bzip2 cxx readline recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -static-libs`
dev-libs/libtasn1-4.12-r1 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/nettle-3.3-r2 | `gmp -doc (-neon) -static-libs {-test}`
dev-libs/npth-1.3 | `-static-libs`
dev-vcs/git-2.13.6 | `blksha1 curl gpg iconv nls pcre threads -cgi -cvs -doc -emacs -gnome-keyring -highlight (-libressl) -mediawiki -mediawiki-experimental -perl (-ppcsha1) -python -subversion {-test} -tk -webdav -xinetd`
net-dns/libidn2-2.0.4 | `-static-libs`
net-libs/gnutls-3.5.15 | `cxx idn nls openssl seccomp tls-heartbeat zlib -dane -doc -examples -guile -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
*manual install*: webhook-2.6.5 | https://github.com/adnanh/webhook/
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler/bash** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-portage/portage-utils-0.64 | `nls -static`
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
net-misc/curl-7.56.1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.26 | `acl nls (xattr) -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `acl nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
**FROM kubler/openssl** |
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2l | `asm sslv3 tls-heartbeat zlib -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -static-libs {-test} -vanilla`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler/s6** |
dev-lang/execline-2.3.0.2 | `-static -static-libs`
dev-libs/skalibs-2.6.0.0 | `-doc -ipv6 -static-libs`
sys-apps/s6-2.6.1.0 | `-static -static-libs`
*manual install*: entr-3.9 | http://entrproject.org/
**FROM kubler/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r8 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
