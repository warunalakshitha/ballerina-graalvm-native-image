# Ballerina Graalvm Native Image
This repository contains scripts required for generate GraalVM native images for Ballerina programs.

# Get Start

Step 1 : Checkout the repository
Step 2 : Execute the graalvm-native-image.sh with providing the ballerina package path.

```bash
ex. graalvm-native-image.sh /Users/waruna/ballerina/packages/helloService
```
*Output*

```
Compiling source
	waruna/helloService:0.1.0

Generating executable
	target/bin/helloService.jar
../helloService/target/bin/helloService.jar
WARNING: Unknown module: org.graalvm.nativeimage.llvm specified to --add-exports
WARNING: Unknown module: org.graalvm.nativeimage.llvm specified to --add-exports
WARNING: Unknown module: org.graalvm.nativeimage.llvm specified to --add-exports
========================================================================================================================
GraalVM Native Image: Generating 'helloService' (executable)...
========================================================================================================================
The URL protocol ws is not tested and might not work as expected.
Supported URL protocols enabled by default: file,resource. Supported URL protocols available on demand: http,https.
Registering the ws URL protocol failed. It will not be available at runtime.

[1/7] Initializing...                                                                                   (14.7s @ 0.29GB)
 Version info: 'GraalVM 22.2.0 Java 11 CE'
 Java version info: '11.0.16+8-jvmci-22.2-b06'
 C compiler: cc (apple, x86_64, 12.0.5)
 Garbage collector: Serial GC
 1 user-specific feature(s)
 - com.oracle.svm.thirdparty.gson.GsonFeature
[2/7] Performing analysis...  [************]                                                            (77.5s @ 3.24GB)
  16,653 (92.09%) of 18,083 classes reachable
  47,546 (76.93%) of 61,802 fields reachable
  83,333 (64.93%) of 128,336 methods reachable
     390 classes,   648 fields, and 1,367 methods registered for reflection
      71 classes,    91 fields, and    56 methods registered for JNI access
       6 native libraries: -framework CoreServices, -framework Foundation, dl, pthread, stdc++, z
[3/7] Building universe...                                                                               (7.4s @ 3.13GB)
[4/7] Parsing methods...      [***]                                                                      (5.5s @ 2.43GB)
[5/7] Inlining methods...     [****]                                                                     (4.2s @ 2.30GB)
[6/7] Compiling methods...    [*******]                                                                 (56.3s @ 3.52GB)
[7/7] Creating image...                                                                                  (7.2s @ 3.39GB)
  55.66MB (63.59%) for code area:    54,720 compilation units
  31.44MB (35.92%) for image heap:  338,051 objects and 24 resources
 443.13KB ( 0.49%) for other data
  87.53MB in total
------------------------------------------------------------------------------------------------------------------------
Top 10 packages in code area:                               Top 10 object types in image heap:
  10.82MB ballerina.http/2                                     9.75MB byte[] for code metadata
   2.52MB ballerina.http/2.types                               4.20MB java.lang.Class
   1.60MB sun.security.ssl                                     3.25MB java.lang.String
   1.46MB ballerina.jwt/2                                      2.80MB byte[] for general heap data
   1.24MB ballerina.oauth2/2                                   2.63MB byte[] for java.lang.String
   1.23MB java.lang.invoke                                     1.52MB com.oracle.svm.core.hub.DynamicHubCompanion
   1.22MB com.sun.media.sound                                812.49KB byte[] for reflection metadata
   1.01MB ballerina.sql/1                                    694.06KB java.lang.String[]
 967.92KB java.util                                          604.96KB c.o.svm.core.hub.DynamicHub$ReflectionMetadata
 784.06KB ballerina.lang$0046query/0                         565.13KB java.util.HashMap$Node
  32.45MB for 762 more packages                                4.03MB for 2441 more object types
------------------------------------------------------------------------------------------------------------------------
                        7.8s (4.3% of total time) in 43 GCs | Peak RSS: 26.60GB | CPU load: 3.57
------------------------------------------------------------------------------------------------------------------------
Produced artifacts:
 /Users/waruna/Dev/b7a/packages/helloService/helloService (executable)
 /Users/waruna/Dev/b7a/packages/helloService/helloService.build_artifacts.txt (txt)
========================================================================================================================
Finished generating 'helloService' in 3m 0s.
```
