# Build a gentoo stage3 / amd64
FROM ghcr.io/xavierforestier/gentoo-ci:main AS gentoo
ENV JOB_COUNT=16
# Switch to ~amd64 and build world
RUN echo 'sys-apps/file -seccomp' > /etc/portage/package.use/sys-apps-file.use
RUN echo 'net-libs/nodejs npm' > /etc/portage/package.use/net-libs-nodejs.use 
RUN echo -e 'virtual/imagemagick-tools jpeg tiff\nmedia-gfx/imagemagick jpeg tiff' > /etc/portage/package.use/virtual-imagemagick-tools.use 
RUN echo 'dev-python/pillow webp' > /etc/portage/package.use/dev-python-pillow.use 
RUN echo 'x11-libs/cairo X' > /etc/portage/package.use/x11-libs-cairo.use
RUN echo 'x11-libs/gdk-pixbuf jpeg' > /etc/portage/package.use/x11-libs-gdk-pixbuf.use
RUN echo -e '*/* PYTHON_TARGETS: -* python3_14\n*/* PYTHON_SINGLE_TARGET: -* python3_14\ndev-lang/python bluetooth' > /etc/portage/package.use/dev-lang-python.use
RUN FEATURES='-usersandbox' emerge --jobs=${JOB_COUNT} --jobs-tmpdir-require-free-gb=0 -q app-admin/sudo app-eselect/eselect-repository app-misc/jq app-portage/gentoolkit dev-util/pkgcheck dev-util/shellcheck-bin dev-vcs/git \
    dev-libs/boost virtual/fortran dev-lang/lua x11-base/xorg-proto net-libs/nodejs app-eselect/eselect-rust dev-lang/rust-bin \ 
    virtual/imagemagick-tools virtual/lapack virtual/cblas virtual/blas virtual/ttf-fonts virtual/libusb virtual/cron virtual/libudev media-video/ffmpeg  
RUN FEATURES='-usersandbox' emerge -tNDuq --jobs=${JOB_COUNT} --jobs-tmpdir-require-free-gb=0 @world
# Cleanup
RUN emerge -C sys-apps/man-pages virtual/man 
RUN emerge -t --depclean && rm -rf /var/cache/distfiles/* /var/log/*.log && wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd
FROM scratch
COPY --from=gentoo / /
