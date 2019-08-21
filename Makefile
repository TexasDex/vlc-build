# Define variables
rootdir := $(shell pwd)
instdir := $(rootdir)/buildDir

#vlc := $(instdir)/bin/vlc
ffmpeg := $(instdir)/bin/ffmpeg
#lame := $(instdir)/
a52 := $(instdir)/bin/a52dec
aom := $(instdir)/
ass := $(instdir)/
caca := $(instdir)/
codec2 := $(instdir)/
fdk := $(instdir)/lib/libfdk-aac.a
flac := $(instdir)/bin/flac
fribidi := $(instdir)/bin/fribidi
gme := $(instdir)/
gsm := $(instdir)/lib/libgsm.a
jpeg := $(instdir)/
ladspa := $(instdir)/
mad := $(instdir)/lib/libmad.a
mysofa := $(instdir)/
nasm := $(instdir)/bin/nasm
nvcodec := $(instdir)/
ogg := $(instdir)/lib/libogg.a
opencore := $(instdir)/
opus := $(instdir)/lib/libopus.a
rtmp := $(instdir)/
rubberband := $(instdir)/
speex := $(instdir)/
theora := $(instdir)/lib/libtheora.a
va := $(instdir)/
vamp := $(instdir)/
vidstab := $(instdir)/
#vo := $(instdir)/
vorbis := $(instdir)/lib/libvorbis.a
vpx := $(instdir)/bin/vpxenc
wavpack := $(instdir)/
webp := $(instdir)/
x264 := $(instdir)/bin/x264
x265 := $(instdir)/bin/x265
xvid := $(instdir)/
zvbi := $(instdir)/


CFG_PKG_CONFIG_PATH := $(instdir)/lib/pkgconfig
CFG_LDFLAGS := -L$(instdir)/lib
CFG_CPPFLAGS := -I$(instdir)/include
CFG_PATH := $(instdir)/bin
CXXFLAGS = -std=c++11

all := $(ffmpeg) $(x264) $(x265) $(fdk) $(mad) $(a52) $(vorbis) $(theora) $(vpx) $(flac) $(nasm) $(ogg) $(opus) $(fribidi) 
#$(vlc)

# Default build target
default: $(all)

# Define build dependencies
#$(vlc): vlc-2.2.8.tar.xz $(ffmpeg)
$(ffmpeg): ffmpeg-4.2.tar.bz2 $(x264) $(x265) $(fdk) $(mad) $(a52) $(vorbis) $(theora) $(vpx) $(flac) $(opus)
$(a52): a52dec-0.7.4.tar.gz
$(aom): aom-latest.tar.bz2
$(ass): libass-0.14.0.tar.xz $(nasm)
$(caca): libcaca-0.99.beta19.tar.gz
$(codec2): codec2-0.8.tar.bz2
$(fdk): fdk-aac-master.zip
$(flac): flac-1.3.3.tar.xz
$(fribidi): fribidi-v1.0.5.tar.gz
$(gme): libgme-5.5.tar.bz2
$(gsm): gsm-1.0.18.tar.gz
$(jpeg): openjpeg-2.3.1.tar.gz
$(ladspa): ladspa_sdk_1.15.tgz
#$(lame): lame-3.100.tar.gz
$(mad): libmad-0.15.1b.tar.gz
$(mysofa): libmysofa-0.7.tar.gz
$(nasm): nasm-2.14.02.tar.xz
$(nvcodec): nv-codec-headers.tar.bz2
$(ogg): libogg-1.3.3.tar.xz
$(opencore): opencore-amr-0.1.5.tar.gz
$(opus): opus-1.3.1.tar.gz
$(rtmp): librtmp-2019-08-19.tar.bz2
$(rubberband): rubberband-1.8.2.tar.gz $(vamp) $(ladspa)
$(speex): speex-1.2.0.tar.gz
$(theora): libtheora-1.1.1.tar.bz2 $(ogg)
$(va): libva-2.5.0.tar.bz2
$(vamp): vamp-plugin-sdk-v2.8.tar.gz
$(vidstab): vid.stab-1.1.0.tar.gz
#$(vo): vo-amrwbenc-v0.1.3.tar.gz
$(vorbis): libvorbis-1.3.4.tar.xz $(ogg)
$(vpx): libvpx-v1.8.1.tar.gz $(nasm) #WARNING: The default extracts in pwd and had to be re-tarred for this build
$(wavpack): wavpack-5.1.0.tar.bz2
$(webp): libwebp-1.0.3.tar.gz
$(x264): last_x264.tar.bz2 $(nasm)
$(x265): x265_3.1.2.tar.gz $(nasm)
$(xvid): xvidcore-1.3.5.tar.bz2
$(zvbi): zvbi-0.2.35.tar.bz2




# Define extraction directories
#$(vlc): extdir := vlc-2.2.8
$(ffmpeg): extdir := ffmpeg-4.2
$(a52): extdir := a52dec-0.7.4
$(aom): extdir := aom-latest/build
$(ass): extdir := libass-0.14.0
$(caca): extdir := libcaca-0.99.beta19
$(codec2): extdir := codec2-0.8/build
$(fdk): extdir := fdk-aac-master
$(flac): extdir := flac-1.3.3
$(fribidi): extdir := fribidi-1.0.5
$(gme): extdir := libgme
$(gsm): extdir := gsm-1.0-pl18
$(jpeg): extdir := openjpeg-2.3.1/build
$(ladspa): extdir := ladspa_sdk_1.15
#$(lame): extdir := lame-3.100
$(mad): extdir := libmad-0.15.1b
$(mysofa): extdir := libmysofa-0.7/build
$(nasm): extdir := nasm-2.14.02
$(nvcodec): extdir := nv-codec-headers
$(ogg): extdir := libogg-1.3.3
$(opencore): extdir := opencore-amr-0.1.5
$(opus): extdir := opus-1.3.1
$(rtmp): extdir := librtmp-2019-08-19
$(rubberband): extdir := rubberband-1.8.2
$(speex): extdir := speex-1.2.0
$(theora): extdir := libtheora-1.1.1
$(va): extdir := libva-2.5.0
$(vamp): extdir := vamp-plugin-sdk-vamp-plugin-sdk-v2.8
$(vidstab): extdir := vid.stab-1.1.0
#$(vo): extdir := vo-amrwbenc-0.1.3
$(vorbis): extdir := libvorbis-1.3.4
$(vpx): extdir := libvpx-v1.8.1
$(wavpack): extdir := wavpack-5.1.0
$(webp): extdir := libwebp-1.0.3/build
$(x264): extdir := x264-snapshot-20190813-2245
$(x265): extdir := x265_3.1.2/mybuild
$(xvid): extdir := xvidcore/build/generic
$(zvbi): extdir := zvbi-0.2.35

# Define configure parameters
#$(vlc): conf := ./configure --disable-lua --without-kde-solid --prefix=$(instdir)
#$(ffmpeg): conf := ./configure --enable-shared --enable-gpl --enable-nonfree --enable-libfdk-aac --enable-libx264 --enable-libvorbis --enable-libvpx --enable-libx265 --enable-libopus --enable-libfribidi --enable-avresample --enable-avfilter --prefix=$(instdir)
$(ffmpeg): conf := ./configure --enable-shared --enable-gpl --enable-nonfree --enable-avfilter --enable-avresample --enable-bzlib --enable-demuxer=dash --enable-fontconfig --enable-gcrypt --enable-gnutls --enable-ladspa --enable-libaom --enable-libass --enable-libcaca --enable-libcdio --enable-libcodec2 --enable-libdrm --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmp3lame --enable-libmysofa --enable-libopencore-amrnb --enable-libopencore-amrwb  --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librsvg --enable-librtmp --enable-librubberband --enable-libsnappy --enable-libspeex --enable-libtheora --enable-libv4l2 --enable-libvidstab --enable-libvo-amrwbenc --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libxvid --enable-libzvbi --enable-nvenc --enable-openal --enable-opencl --enable-opengl --enable-postproc --enable-pthreads --enable-runtime-cpudetect --enable-version3  --enable-cuda-sdk --enable-cuvid --enable-libnpp --extra-cflags="-I/usr/local/cuda/include/" --extra-ldflags=-L/usr/local/cuda/lib64/ --prefix=/home/gmdexte/src/vlc-build/buildDir
$(a52): conf := CFLAGS=-fPIC ./configure --prefix=$(instdir)
$(aom): conf := cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) -DLIBRARY_OUTPUT_PATH=$(instdir)/lib ..
$(ass): conf := ./configure --prefix=$(instdir) 
$(caca): conf := ./configure --prefix=$(instdir) 
$(codec2): conf := cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) -DLIBRARY_OUTPUT_PATH=$(instdir)/lib -DCMAKE_INSTALL_LIBDIR=$(instdir)/lib ..
$(fdk): conf := ./autogen.sh && ./configure --prefix=$(instdir)
$(flac): conf := ./configure --prefix=$(instdir)
$(fribidi): conf := ./autogen.sh && ./configure --prefix=$(instdir)
$(gme): conf := cmake -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) ..
# There's no configure for gsm, so we just have a no-op
$(gsm): conf := echo No Configure
$(gsm): makeopts := INSTALL_ROOT=$(instdir) GSM_INSTALL_INC=$(instdir)/include
$(jpeg): conf := cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) ..
#The ladspa install process is just copying a header, so we hack things a bit here
$(ladspa): conf := cp ./src/ladspa.h $(instdir)/include
$(ladspa): makeopts := --version
$(mad): conf := CFLAGS="-Wall -g -O -fforce-addr -fthread-jumps -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations -fregmove -fschedule-insns2" ./configure --prefix=$(instdir)
$(mysofa): conf := cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) -DBUILD_TESTS=OFF ..
$(nasm): conf := ./configure --prefix=$(instdir)
$(nvcodec): conf := echo No Config Step
$(nvcodec): makeopts := PREFIX=$(instdir)
$(ogg): conf := ./configure --prefix=$(instdir)
$(opencore): conf := ./configure --prefix=$(instdir) 
$(opus): conf := ./configure --prefix=$(instdir)
$(rtmp): conf := echo No Config Step
$(rtmp): makeopts := prefix=$(instdir)
$(rubberband): conf := ./configure --prefix=$(instdir)
$(speex): conf := ./configure --prefix=$(instdir)
$(theora): conf := ./configure --prefix=$(instdir)
$(va): conf := ./configure --prefix=$(instdir)
$(vamp): conf := ./configure --prefix=$(instdir)
$(vidstab): conf := cmake3 DCMAKE_INSTALL_PREFIX:PATH=$(instdir) ..
#$(vo): conf := 
$(vorbis): conf := ./configure --prefix=$(instdir)
$(vpx): conf := ./configure --enable-shared --prefix=$(instdir)
$(wavpack): conf := ./configure --prefix=$(instdir)
$(webp): conf := cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) -DLIBRARY_OUTPUT_PATH=$(instdir)/lib -DCMAKE_INSTALL_LIBDIR=$(instdir)/lib ..
$(x264): conf := ./configure --disable-opencl --enable-static --enable-shared --prefix=$(instdir)
$(x265): conf := cmake -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) ../source
$(xvid): conf := ./configure --prefix=$(instdir)
$(zvbi): conf := ./configure --prefix=$(instdir)

# This cmake command will work anywhere, but not all builds use all the options.
# cmake3 -DCMAKE_INSTALL_PREFIX:PATH=$(instdir) -DLIBRARY_OUTPUT_PATH=$(instdir)/lib -DCMAKE_INSTALL_LIBDIR=$(instdir)/lib -DBUILD_TESTS=OFF ..


$(all):
	tar xvf $< || unzip $<
	mkdir -p $(extdir) #just in case we need to create the build dir and cmake ..
	cd $(extdir) && PATH="$(CFG_PATH):$$PATH" LDFLAGS=$(CFG_LDFLAGS) CPPFLAGS=$(CFG_CPPFLAGS) PKG_CONFIG_PATH=$(CFG_PKG_CONFIG_PATH) $(conf)
	PATH="$(CFG_PATH):$$PATH" $(MAKE) -C $(extdir) $(makeopts)
	PATH="$(CFG_PATH):$$PATH" $(MAKE) -C $(extdir) -j1 install $(makeopts)

clean:
	rm -rf `find . -mindepth 1 -maxdepth 1 -type d -not -path ./.git`



