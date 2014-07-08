source-sift
===========

Recursively look for a keyword in a specified path through all files program-y and return all files where it lives

Prologue
--------
For example:
```
$ source-sift.sh PRIu64 /usr/include/
/usr/include//inttypes.h:64:#  define PRIu64        __PRI_64_LENGTH_MODIFIER__ "u"
/usr/include//inttypes.h:92:#  define PRIuLEAST64   PRIu64
/usr/include//inttypes.h:120:#  define PRIuFAST64    PRIu64
/usr/include//php/ext/mysqli/php_mysqli_structs.h:192:/* we need this for PRIu64 and PRId64 */
/usr/include//php/ext/mysqli/php_mysqli_structs.h:194:#define MYSQLI_LLU_SPEC "%" PRIu64
```
And:
```
$ source-sift.sh timespec.h /usr/include/
/usr/include//gethostuuid.h:32:#include <sys/_types/_timespec.h>
/usr/include//sys/_structs.h:73:#include <sys/_types/_timespec.h>
/usr/include//sys/aio.h:50:#include <sys/_types/_timespec.h>
/usr/include//sys/fcntl.h:312:#include <sys/_types/_timespec.h>
/usr/include//sys/select.h:76:#include <sys/_types/_timespec.h>
/usr/include//sys/stat.h:78:#include <sys/_types/_timespec.h>
/usr/include//sys/time.h:76:#include <sys/_types/_timespec.h>
```
