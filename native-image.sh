#!/bin/bash
BAL_PACKAGE_PATH="$1"
bal build $BAL_PACKAGE_PATH
EXECUTABLE_FILE="$BAL_PACKAGE_PATH/target/bin/"$(basename "${BAL_PACKAGE_PATH}")".jar"

native-image -H:MaxDuplicationFactor=40.0 \
       -jar $EXECUTABLE_FILE --no-fallback \
       -H:IncludeResources=logging.properties \
        -H:ReflectionConfigurationFiles=reflection-config.json \
       --enable-url-protocols=http,https \
       --initialize-at-build-time=org.slf4j.impl.JDK14LoggerAdapter,org.slf4j.LoggerFactory,org.slf4j.impl.StaticLoggerBinder \
       --initialize-at-run-time=io.netty.handler.ssl.OpenSsl,io.netty.handler.codec.http2.Http2ServerUpgradeCodec,io.netty.handler.codec.http.HttpMethods,io.netty.handler.codec.compression.ZstdOptions \
       --initialize-at-run-time=io.netty.handler.ssl.BouncyCastleAlpnSslUtils,io.netty.handler.codec.http2.HttpConversionUtil,io.netty.handler.codec.http2.HttpConversionUtil$Http2ToHttpHeaderTranslator \
       --initialize-at-run-time=io.netty.internal.tcnative.CertificateVerifier,io.netty.internal.tcnative.CertificateCompressionAlgo,io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod,io.netty.handler.ssl.OpenSslAsyncPrivateKeyMethod \
       --initialize-at-run-time=io.netty.handler.ssl.ReferenceCountedOpenSslEngine,io.netty.handler.ssl.OpenSslPrivateKeyMethod \
       --initialize-at-run-time=io.netty.internal.tcnative.SSL,io.netty.internal.tcnative.SSLPrivateKeyMethod 

