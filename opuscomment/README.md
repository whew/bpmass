# opuscomment

The formal README is written in [Japanese](./README.ja.md).

## Overview

<dfn>opuscomment</dfn> is a utility for editing output gain and tags of Ogg Opus. The behavior of this utility is similar to [vorbiscomment](https://github.com/xiph/vorbis-tools).

## Requirements

* C99 or later
* POSIX.1-2008 or POSIX.1-2001 XSI extension (SUSv3)
* libogg

## Installation

    $ ./build.sh release

Then you will get the binary `opuscomment` at `src/`. You can put the binary any place.

## Quick Example

```sh
# list tags
opuscomment foo.opus
```

```sh
# write tags
opuscomment -w foo.opus <<EOL
TITLE=The Song
ARTIST=John Doe
EOL
```

```sh
# import tags from Vorbis
vorbiscomment -Re foo.ogg |opuscomment -wRe foo.opus
```

## Supported codecs

* Ogg family: Opus, Vorbis, Speex, VP8, Theora, Daala, PCM, UVS.
* FLAC

## License

MIT license
