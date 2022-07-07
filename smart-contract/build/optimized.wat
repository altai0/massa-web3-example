(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i64_i32_i64_i32_i64_i64_i64_i32_=>_none (func (param i32 i32 i64 i32 i64 i32 i64 i64 i64 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "massa" "assembly_script_create_sc" (func $~lib/massa-sc-std/index/assembly_script_create_sc (param i32) (result i32)))
 (import "massa" "assembly_script_send_message" (func $~lib/massa-sc-std/index/assembly_script_send_message (param i32 i32 i64 i32 i64 i32 i64 i64 i64 i32)))
 (import "massa" "assembly_script_print" (func $~lib/massa-sc-std/index/assembly_script_print (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7984))
 (memory $0 1)
 (data (i32.const 1036) "\cc\19")
 (data (i32.const 1048) "\01\00\00\00\b0\19\00\00A\00G\00F\00z\00b\00Q\00E\00A\00A\00A\00A\00B\00I\00A\00Z\00g\00A\00X\008\00A\00Y\00A\00N\00/\00f\003\008\00A\00Y\00A\00A\00A\00Y\00A\00R\00/\00f\003\009\00/\00A\00G\00A\00C\00f\003\008\00B\00f\002\00A\00B\00f\00w\00F\00/\00A\00l\00I\00D\00A\002\00V\00u\00d\00g\00V\00h\00Y\00m\009\00y\00d\00A\00A\00D\00B\00W\001\00h\00c\003\00N\00h\00H\00m\00F\00z\00c\002\00V\00t\00Y\00m\00x\005\00X\003\00N\00j\00c\00m\00l\00w\00d\00F\009\00n\00Z\00W\005\00l\00c\00m\00F\000\00Z\00V\009\00l\00d\00m\00V\00u\00d\00A\00A\00A\00B\00W\001\00h\00c\003\00N\00h\00F\00W\00F\00z\00c\002\00V\00t\00Y\00m\00x\005\00X\003\00N\00j\00c\00m\00l\00w\00d\00F\009\00w\00c\00m\00l\00u\00d\00A\00A\00A\00A\00w\00k\00I\00B\00A\00E\00B\00A\00A\00U\00A\00A\00g\00I\00F\00A\00w\00E\00A\00A\00Q\00Y\00M\00A\00n\008\00B\00Q\00Q\00A\00L\00f\00w\00B\00B\008\00A\00k\00L\00B\000\00g\00H\00B\003\00J\00l\00Y\002\00V\00p\00d\00m\00U\00A\00B\00g\00V\00f\00X\002\005\00l\00d\00w\00A\00D\00B\00V\009\00f\00c\00G\00l\00u\00A\00A\00c\00H\00X\001\009\001\00b\00n\00B\00p\00b\00g\00A\00I\00C\00V\009\00f\00Y\002\009\00s\00b\00G\00V\00j\00d\00A\00A\00J\00C\001\009\00f\00c\00n\00R\000\00a\00V\009\00i\00Y\00X\00N\00l\00A\00w\00E\00G\00b\00W\00V\00t\00b\003\00J\005\00A\00g\00A\00I\00A\00Q\00o\00K\00v\00Q\008\00I\00y\00A\00E\00B\00B\00n\008\00g\00A\00E\00H\00s\00/\00/\00/\00/\00A\000\00s\00E\00Q\00E\00G\00A\00C\00U\00H\00A\00C\00U\00H\00W\00A\00E\00E\00e\00E\00A\00A\00A\00C\00y\00A\00A\00Q\00R\00B\00q\00I\00g\00R\00B\00/\00P\00/\00/\00/\00w\00N\00L\00B\00E\00B\00B\00g\00A\00l\00B\00w\00A\00l\00B\00I\00U\00E\00d\00E\00A\00A\00A\00C\00y\00M\00A\00I\00g\00N\00B\00B\00G\00o\00i\00A\00i\00A\00E\00Q\00R\00N\00q\00Q\00X\00B\00x\00Q\00Q\00R\00r\00I\00g\00R\00q\00I\00g\00U\00/\00A\00C\00I\00G\00Q\00R\00B\000\00Q\00Q\009\00q\00Q\00X\00B\00x\00I\00g\00d\00L\00B\00E\00A\00g\00B\00i\00A\00F\00I\00A\00d\00r\00Q\00f\00/\00/\00A\002\00p\00B\00g\00I\00B\008\00c\00U\00E\00Q\00d\00i\00I\00H\00I\00A\00Y\00g\00B\000\00o\00b\00Q\00A\00B\00B\00A\00E\00g\00E\00Q\00C\00A\00H\00Q\00A\00B\00B\00A\00E\00g\00E\00Q\00A\00A\00L\00C\00w\00s\00g\00B\00S\00Q\00A\00I\00A\00M\00g\00B\00D\00Y\00C\00A\00C\00A\00C\00Q\00Q\00R\00r\00I\00g\00N\00B\00A\00D\00Y\00C\00B\00C\00A\00D\00Q\00Q\00A\002\00A\00g\00g\00g\00A\00y\00A\00B\00N\00g\00I\00M\00I\00A\00M\00g\00A\00D\00Y\00C\00E\00C\00A\00C\00Q\00R\00B\00q\00C\007\00s\00K\00A\00Q\00N\00/\00A\000\00A\00g\00A\00U\00E\00D\00c\00U\00E\00A\00I\00A\00I\00b\00B\00E\00A\00g\00A\00C\00I\00D\00Q\00Q\00F\00q\00I\00Q\00A\00g\00A\00S\00I\00E\00Q\00Q\00F\00q\00I\00Q\00E\00g\00A\00y\00A\00E\00L\00Q\00A\00A\00O\00g\00A\00A\00I\00A\00J\00B\00A\00W\00s\00h\00A\00g\00w\00B\00C\00w\00s\00g\00A\00E\00E\00D\00c\00U\00U\00E\00Q\00A\00N\00A\00I\00A\00J\00B\00E\00E\008\00E\00Q\00C\00A\00A\00I\00A\00E\00o\00A\00g\00A\002\00A\00g\00A\00g\00A\00C\00A\00B\00K\00A\00I\00E\00N\00g\00I\00E\00I\00A\00A\00g\00A\00S\00g\00C\00C\00D\00Y\00C\00C\00C\00A\00A\00I\00A\00E\00o\00A\00g\00w\002\00A\00g\00w\00g\00A\00U\00E\00Q\00a\00i\00E\00B\00I\00A\00B\00B\00E\00G\00o\00h\00A\00C\00A\00C\00Q\00R\00B\00r\00I\00Q\00I\00M\00A\00Q\00s\00L\00I\00A\00J\00B\00C\00H\00E\00E\00Q\00C\00A\00A\00I\00A\00E\00o\00A\00g\00A\002\00A\00g\00A\00g\00A\00C\00A\00B\00K\00A\00I\00E\00N\00g\00I\00E\00I\00A\00F\00B\00C\00G\00o\00h\00A\00S\00A\00A\00Q\00Q\00h\00q\00I\00Q\00A\00L\00I\00A\00J\00B\00B\00H\00E\00E\00Q\00C\00A\00A\00I\00A\00E\00o\00A\00g\00A\002\00A\00g\00A\00g\00A\00U\00E\00E\00a\00i\00E\00B\00I\00A\00B\00B\00B\00G\00o\00h\00A\00A\00s\00g\00A\00k\00E\00C\00c\00Q\00R\00A\00I\00A\00A\00g\00A\00S\008\00B\00A\00D\00s\00B\00A\00C\00A\00B\00Q\00Q\00J\00q\00I\00Q\00E\00g\00A\00E\00E\00C\00a\00i\00E\00A\00C\00y\00A\00C\00Q\00Q\00F\00x\00B\00E\00A\00g\00A\00C\00A\00B\00L\00Q\00A\00A\00O\00g\00A\00A\00C\00w\008\00L\00I\00A\00J\00B\00I\00E\008\00E\00Q\00A\00J\00A\00A\00k\00A\00C\00Q\00A\00J\00A\00I\00A\00B\00B\00A\003\00F\00B\00A\00W\00s\00O\00A\00w\00A\00B\00A\00g\00M\00L\00I\00A\00E\00o\00A\00g\00A\00h\00B\00S\00A\00A\00I\00A\00E\00t\00A\00A\00A\006\00A\00A\00A\00g\00A\00C\00A\00B\00L\00Q\00A\00B\00O\00g\00A\00B\00I\00A\00B\00B\00A\00m\00o\00i\00A\000\00E\00B\00a\00i\00E\00A\00I\00A\00F\00B\00A\00m\00o\00i\00B\00E\00E\00B\00a\00i\00E\00B\00I\00A\00M\00g\00B\00C\000\00A\00A\00D\00o\00A\00A\00C\00A\00C\00Q\00Q\00N\00r\00I\00Q\00I\00D\00Q\00C\00A\00C\00Q\00R\00F\00P\00B\00E\00A\00g\00A\00C\00A\00B\00K\00A\00I\00B\00I\00g\00N\00B\00C\00H\00Q\00g\00B\00U\00E\00Y\00d\00n\00I\002\00A\00g\00A\00g\00A\00C\00A\00B\00K\00A\00I\00F\00I\00g\00R\00B\00C\00H\00Q\00g\00A\000\00E\00Y\00d\00n\00I\002\00A\00g\00Q\00g\00A\00C\00A\00B\00K\00A\00I\00J\00I\00g\00N\00B\00C\00H\00Q\00g\00B\00E\00E\00Y\00d\00n\00I\002\00A\00g\00g\00g\00A\00C\00A\00B\00K\00A\00I\00N\00I\00g\00V\00B\00C\00H\00Q\00g\00A\000\00E\00Y\00d\00n\00I\002\00A\00g\00w\00g\00A\00U\00E\00Q\00a\00i\00E\00B\00I\00A\00B\00B\00E\00G\00o\00h\00A\00C\00A\00C\00Q\00R\00B\00r\00I\00Q\00I\00M\00A\00Q\00s\00L\00D\00A\00I\00L\00I\00A\00E\00o\00A\00g\00A\00h\00B\00S\00A\00A\00I\00A\00E\00t\00A\00A\00A\006\00A\00A\00A\00g\00A\00C\00I\00D\00Q\00Q\00J\00q\00I\00Q\00A\00g\00A\00S\00I\00E\00Q\00Q\00J\00q\00I\00Q\00E\00g\00A\00y\00A\00E\00L\00Q\00A\00B\00O\00g\00A\00B\00I\00A\00J\00B\00A\00m\00s\00h\00A\00g\00N\00A\00I\00A\00J\00B\00E\00k\008\00E\00Q\00C\00A\00A\00I\00A\00E\00o\00A\00g\00I\00i\00A\000\00E\00Q\00d\00C\00A\00F\00Q\00R\00B\002\00c\00j\00Y\00C\00A\00C\00A\00A\00I\00A\00E\00o\00A\00g\00Y\00i\00B\00E\00E\00Q\00d\00C\00A\00D\00Q\00R\00B\002\00c\00j\00Y\00C\00B\00C\00A\00A\00I\00A\00E\00o\00A\00g\00o\00i\00A\000\00E\00Q\00d\00C\00A\00E\00Q\00R\00B\002\00c\00j\00Y\00C\00C\00C\00A\00A\00I\00A\00E\00o\00A\00g\004\00i\00B\00U\00E\00Q\00d\00C\00A\00D\00Q\00R\00B\002\00c\00j\00Y\00C\00D\00C\00A\00B\00Q\00R\00B\00q\00I\00Q\00E\00g\00A\00E\00E\00Q\00a\00i\00E\00A\00I\00A\00J\00B\00E\00G\00s\00h\00A\00g\00w\00B\00C\00w\00s\00M\00A\00Q\00s\00g\00A\00S\00g\00C\00A\00C\00E\00F\00I\00A\00A\00i\00A\000\00E\00B\00a\00i\00E\00A\00I\00A\00E\00i\00B\00E\00E\00B\00a\00i\00E\00B\00I\00A\00M\00g\00B\00C\000\00A\00A\00D\00o\00A\00A\00C\00A\00C\00Q\00Q\00F\00r\00I\00Q\00I\00D\00Q\00C\00A\00C\00Q\00R\00N\00P\00B\00E\00A\00g\00A\00C\00A\00B\00K\00A\00I\00D\00I\00g\00N\00B\00G\00H\00Q\00g\00B\00U\00E\00I\00d\00n\00I\002\00A\00g\00A\00g\00A\00C\00A\00B\00K\00A\00I\00H\00I\00g\00R\00B\00G\00H\00Q\00g\00A\000\00E\00I\00d\00n\00I\002\00A\00g\00Q\00g\00A\00C\00A\00B\00K\00A\00I\00L\00I\00g\00N\00B\00G\00H\00Q\00g\00B\00E\00E\00I\00d\00n\00I\002\00A\00g\00g\00g\00A\00C\00A\00B\00K\00A\00I\00P\00I\00g\00V\00B\00G\00H\00Q\00g\00A\000\00E\00I\00d\00n\00I\002\00A\00g\00w\00g\00A\00U\00E\00Q\00a\00i\00E\00B\00I\00A\00B\00B\00E\00G\00o\00h\00A\00C\00A\00C\00Q\00R\00B\00r\00I\00Q\00I\00M\00A\00Q\00s\00L\00C\00w\00s\00g\00A\00k\00E\00Q\00c\00Q\00R\00A\00I\00A\00A\00g\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00y\000\00A\00A\00D\00o\00A\00A\00C\00A\00D\00Q\00Q\00J\00q\00I\00Q\00E\00g\00A\00C\00A\00D\00L\00Q\00A\00B\00O\00g\00A\00B\00I\00A\00B\00B\00A\00m\00o\00h\00A\00A\00s\00g\00A\00k\00E\00I\00c\00Q\00R\00A\00I\00A\00A\00g\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00y\000\00A\00A\00D\00o\00A\00A\00C\00A\00D\00Q\00Q\00J\00q\00I\00Q\00E\00g\00A\00C\00A\00D\00L\00Q\00A\00B\00O\00g\00A\00B\00I\00A\00B\00B\00A\00m\00o\00h\00A\00A\00s\00g\00A\00k\00E\00E\00c\00Q\00R\00A\00I\00A\00A\00g\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00A\00E\00t\00A\00A\00E\006\00A\00A\00E\00g\00A\00E\00E\00C\00a\00i\00I\00A\00I\00A\00F\00B\00A\00m\00o\00i\00A\00y\000\00A\00A\00D\00o\00A\00A\00C\00A\00D\00Q\00Q\00J\00q\00I\00Q\00E\00g\00A\00C\00A\00D\00L\00Q\00A\00B\00O\00g\00A\00B\00I\00A\00B\00B\00A\00m\00o\00h\00A\00A\00s\00g\00A\00k\00E\00C\00c\00Q\00R\00A\00I\00A\00A\00g\00A\00S\000\00A\00A\00D\00o\00A\00A\00C\00A\00A\00I\00g\00N\00B\00A\00m\00o\00h\00A\00C\00A\00B\00I\00g\00R\00B\00A\00m\00o\00h\00A\00S\00A\00D\00I\00A\00Q\00t\00A\00A\00E\006\00A\00A\00E\00L\00I\00A\00J\00B\00A\00X\00E\00E\00Q\00C\00A\00A\00I\00A\00E\00t\00A\00A\00A\006\00A\00A\00A\00L\00C\008\004\00C\00A\00Q\00J\00/\00A\00k\00A\00g\00A\00i\00E\00E\00I\00A\00A\00g\00A\00U\00Y\00N\00A\00C\00A\00B\00I\00A\00B\00r\00I\00A\00R\00r\00Q\00Q\00A\00g\00B\00E\00E\00B\00d\00G\00t\00N\00B\00E\00A\00g\00A\00C\00A\00B\00I\00A\00Q\00Q\00B\00A\00w\00B\00C\00y\00A\00A\00I\00A\00F\00J\00B\00E\00A\00g\00A\00U\00E\00H\00c\00S\00A\00A\00Q\00Q\00d\00x\00R\00g\00R\00A\00A\000\00A\00g\00A\00E\00E\00H\00c\00Q\00R\00A\00I\00A\00R\00F\00D\00Q\00Q\00g\00B\00E\00E\00B\00a\00y\00E\00E\00I\00A\00A\00i\00A\00k\00E\00B\00a\00i\00E\00A\00I\00A\00E\00i\00A\000\00E\00B\00a\00i\00E\00B\00I\00A\00I\00g\00A\00y\000\00A\00A\00D\00o\00A\00A\00A\00w\00B\00C\00w\00s\00D\00Q\00C\00A\00E\00Q\00Q\00h\00P\00B\00E\00A\00g\00A\00C\00A\00B\00K\00Q\00M\00A\00N\00w\00M\00A\00I\00A\00R\00B\00C\00G\00s\00h\00B\00C\00A\00A\00Q\00Q\00h\00q\00I\00Q\00A\00g\00A\00U\00E\00I\00a\00i\00E\00B\00D\00A\00E\00L\00C\00w\00s\00D\00Q\00C\00A\00E\00B\00E\00A\00g\00A\00C\00I\00C\00Q\00Q\00F\00q\00I\00Q\00A\00g\00A\00S\00I\00D\00Q\00Q\00F\00q\00I\00Q\00E\00g\00A\00i\00A\00D\00L\00Q\00A\00A\00O\00g\00A\00A\00I\00A\00R\00B\00A\00W\00s\00h\00B\00A\00w\00B\00C\00w\00s\00F\00I\00A\00F\00B\00B\003\00E\00g\00A\00E\00E\00H\00c\00U\00Y\00E\00Q\00A\00N\00A\00I\00A\00A\00g\00B\00G\00p\00B\00B\003\00E\00E\00Q\00C\00A\00E\00R\00Q\000\00E\00I\00A\00R\00B\00A\00W\00s\00i\00B\00C\00A\00A\00a\00i\00A\00B\00I\00A\00R\00q\00L\00Q\00A\00A\00O\00g\00A\00A\00D\00A\00E\00L\00C\00w\00N\00A\00I\00A\00R\00B\00C\00E\008\00E\00Q\00C\00A\00E\00Q\00Q\00h\00r\00I\00g\00Q\00g\00A\00G\00o\00g\00A\00S\00A\00E\00a\00i\00k\00D\00A\00D\00c\00D\00A\00A\00w\00B\00C\00w\00s\00L\00A\000\00A\00g\00B\00A\00R\00A\00I\00A\00R\00B\00A\00W\00s\00i\00B\00C\00A\00A\00a\00i\00A\00B\00I\00A\00R\00q\00L\00Q\00A\00A\00O\00g\00A\00A\00D\00A\00E\00L\00C\00w\00s\00L\00C\000\008\00B\00B\00H\009\00B\004\00A\00g\00h\00A\00U\00G\00c\00C\00C\00g\00C\00A\00E\00E\00B\00d\00k\00E\00B\00d\00C\00I\00C\00I\00A\00B\00B\00F\00G\00s\00o\00A\00h\00B\00B\00A\00X\00Z\00B\00A\00X\00Q\00i\00A\002\00o\00i\00B\00A\00R\00A\00I\00A\00R\00B\00A\00R\00A\00D\00I\00g\00F\00B\00o\00A\00g\00g\00A\00h\00A\00F\00I\00A\00E\00g\00A\00m\00o\00g\00A\00C\00A\00D\00E\00A\00U\00L\00I\00A\00E\00Q\00A\00S\00A\00B\00E\00A\00I\00L\00B\00A\00A\00g\00A\00A\00s\00D\00A\00A\00E\00L\00A\00w\00A\00B\00C\00w\00c\00A\00Q\00Y\00w\00K\00J\00A\00A\00L\00C\008\00g\00B\00C\00Q\00B\00B\00j\00A\00g\00L\00A\00T\00w\00A\00Q\00Z\00g\00I\00C\00y\00s\00B\00A\00A\00A\00A\00J\00A\00A\00A\00A\00G\000\00A\00Z\00Q\00B\00z\00A\00H\00M\00A\00Y\00Q\00B\00n\00A\00G\00U\00A\00I\00A\00B\00y\00A\00G\00U\00A\00Y\00w\00B\00l\00A\00G\00k\00A\00d\00g\00B\00l\00A\00G\00Q\00A\00O\00g\00A\00g\00A\00E\00H\00M\00C\00A\00s\00B\00H\00A\00B\00B\002\00A\00g\00L\00A\00Q\00E\00A\00Q\00e\00w\00I\00C\00w\00E\008\00A\00E\00H\004\00C\00A\00s\00v\00A\00Q\00A\00A\00A\00C\00g\00A\00A\00A\00B\00B\00A\00G\00w\00A\00b\00A\00B\00v\00A\00G\00M\00A\00Y\00Q\00B\000\00A\00G\00k\00A\00b\00w\00B\00u\00A\00C\00A\00A\00d\00A\00B\00v\00A\00G\008\00A\00I\00A\00B\00s\00A\00G\00E\00A\00c\00g\00B\00n\00A\00G\00U\00A\00Q\00a\00w\00J\00C\00w\00E\008\00A\00E\00G\004\00C\00Q\00s\00l\00A\00Q\00A\00A\00A\00B\004\00A\00A\00A\00B\00+\00A\00G\00w\00A\00a\00Q\00B\00i\00A\00C\008\00A\00c\00g\00B\000\00A\00C\008\00A\00c\00w\00B\000\00A\00H\00U\00A\00Y\00g\00A\00u\00A\00H\00Q\00A\00c\00w\00B\00B\008\00A\00k\00L\00D\00Q\00M\00A\00A\00A\00A\00g\00A\00A\00A\00A\00A\00A\00A\00A\00A\00C\00A\00A\00K\00x\00B\00z\00b\003\00V\00y\00Y\002\00V\00N\00Y\00X\00B\00w\00a\00W\005\00n\00V\00V\00J\00M\00G\00S\004\00v\00c\002\001\00h\00c\00n\00Q\00t\00Y\002\009\00u\00d\00H\00J\00h\00Y\003\00Q\00u\00d\002\00F\00z\00b\00S\005\00t\00Y\00X\00A\00=")
 (data (i32.const 7644) ",")
 (data (i32.const 7656) "\01\00\00\00\0e\00\00\00r\00e\00c\00e\00i\00v\00e")
 (data (i32.const 7692) "<")
 (data (i32.const 7704) "\01\00\00\00*\00\00\00h\00e\00l\00l\00o\00 \00m\00y\00 \00g\00o\00o\00d\00 \00f\00r\00i\00e\00n\00d\00!")
 (data (i32.const 7756) "\\")
 (data (i32.const 7768) "\01\00\00\00B\00\00\00r\00e\00c\00e\00i\00v\00e\00r\00 \00c\00r\00e\00a\00t\00e\00d\00 \00a\00n\00d\00 \00m\00e\00s\00s\00a\00g\00e\00 \00s\00e\00n\00t")
 (data (i32.const 7852) "<")
 (data (i32.const 7864) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 7916) "<")
 (data (i32.const 7928) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 7984) "\03\00\00\00 \00\00\00\00\00\00\00 ")
 (export "main" (func $assembly/deploy/main))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/deploy/main (param $0 i32)
  i32.const 1056
  call $~lib/massa-sc-std/index/assembly_script_create_sc
  i32.const 7664
  i64.const 1
  i32.const 1
  i64.const 20
  i32.const 1
  i64.const 100000
  i64.const 1
  i64.const 100
  i32.const 7712
  call $~lib/massa-sc-std/index/assembly_script_send_message
  i32.const 7776
  call $~lib/massa-sc-std/index/assembly_script_print
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 7872
   i32.const 7936
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 7872
   i32.const 7936
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $3
  i32.const 4
  i32.add
  local.tee $2
  local.get $4
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $4
  i32.add
  local.tee $5
  memory.size
  local.tee $6
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $7
  i32.gt_u
  if
   local.get $6
   local.get $5
   local.get $7
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $7
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $4
  i32.store
  local.get $2
  i32.const 4
  i32.sub
  local.tee $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__pin (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__unpin (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~start
  i32.const 8012
  global.set $~lib/rt/stub/offset
 )
)