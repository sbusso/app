sl_extra_lflags="-L ../opus -L ../my_include "
sl_extra_modules="alsa slrtaudio slogging dtls_srtp"

make RELEASE=1 LIBRE_SO=../re LIBREM_PATH=../rem STATIC=1 \
    MODULES="opus stdio ice g711 g722 turn stun uuid auloop webapp menu $sl_extra_modules" \
    EXTRA_CFLAGS="-I ../my_include" \
    EXTRA_LFLAGS="$sl_extra_lflags -L ../openssl"

#make USE_OPENSSL="yes" LIBRE_SO=../re LIBREM_PATH=../rem STATIC=1 \
#    MODULES="opus stdio ice g711 turn stun uuid auloop webapp effect" \
#    EXTRA_CFLAGS="-I ../my_include -DSLPLUGIN" \
#    EXTRA_LFLAGS="$sl_extra_lflags" libbaresip.a

