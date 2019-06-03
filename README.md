# jefferson
JFFS2 filesystem extraction tool (py3k fork)

Installation
============
```bash
$ python setup.py install
```
### Nix
Develop with the Nix package manager:
```bash
nix-shell
```
Build with nix:
```bash
nix build
```

Features
============
- Big/Little Endian support
- `JFFS2_COMPR_ZLIB`, `JFFS2_COMPR_RTIME`, `JFFS_COMPR_LZO` and `JFFS2_COMPR_LZMA` compression support
- CRC checks - for now only enforced on `hdr_crc`
- Extraction of symlinks, directories, files, and device nodes
- Detection/handling of duplicate inode numbers. Occurs if multiple JFFS2 filesystems are found in one file and causes `jefferson` to treat segments as separate filesystems
- Summary staticstics on used compressors and errors (with verbose flag)

Usage
============
```bash
$ jefferson filesystem.img -d outdir
```


Upgrade
===========
