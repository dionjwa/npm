package npm;

import haxe.extern.EitherType;

import js.node.fs.FSWatcher;
import js.node.fs.Stats;
import js.node.Buffer;
import js.node.stream.Readable;
import js.node.stream.Writable;
import js.node.stream.Writable;
import js.Promise;
import js.Error;

import npm.common.Callback;
import npm.common.DataType;
import npm.fsextra.*;

@:jsRequire("fs-extra")
extern class FsExtra {
  static function copy(src : String, dest : String, ?callback : Callback0) : Promise<Void>;
  static function copySync(src : String, dest : String) : Void;

  @:overload(function(file : String, options : WriteStreamOptions) : Writable<Dynamic> {})
  static function createOutputStream(file : String) : Writable<Dynamic>;
  // @:overload(function(file : String, options : WriteStreamOptions) : Writable<Dynamic> {})
  // static function createWriteStream(file : String) : Writable<Dynamic>;

  static function emptyDir(directory : String, ?callback : Callback0) : Promise<Void>;
  static function emptyDirSync(directory : String) : Void;

  static function ensureFile(file : String, ?callback : Callback0) : Promise<Void>;
  static function ensureFileSync(file : String) : Void;

  static function ensureDir(directory : String, ?callback : Callback0) : Promise<Void>;
  static function ensureDirSync(directory : String) : Void;

  static function mkdirs(directory : String, ?callback : Callback0) : Promise<Void>;
  static function mkdirsSync(directory : String) : Void;

  @:overload(function(src : String, dest : String, options : MoveOptions, ?callback : Callback0) : Promise<Void> {})
  static function move(src : String, dest : String, ?callback : Callback0) : Promise<Void>;

  static function outputFile(file : String, data : DataType, ?callback : Callback0) : Promise<Void>;
  static function outputFileSync(file : String, data : DataType) : Void;

  static function outputJson(file : String, json : {}, ?callback : Callback0) : Promise<Void>;
  static function outputJsonSync(file : String, json : {}) : Void;

  static function readJson<T>(file : String, ?callback : Callback<T>) : Promise<T>;
  static function readJsonSync<T>(file : String) : T;

  static function removeDir(directory : String, ?callback : Callback0) : Promise<Void>;
  static function removeDirSync(directory : String) : Void;

  // static function writeFile(file : String, data : DataType, ?callback : Callback0) : Promise<Void>;
  // static function writeFileSync(file : String, data : DataType) : Void;

  /*
   * Bulk copy/pasted from Fs.hx
   */
  static function rename(from:String,to:String,?cb:Callback0):Promise<Void>;
  static function renameSync(from:String,to:String):Void;

  static function stat(path:String,?cb:Callback<Stats>):Promise<Stats>;
  static function statSync(path:String):Stats;

  static function lstat(path:Dynamic,?cb:Callback<Stats>):Promise<Stats>;
  static function lstatSync(path:String):Stats;

  static function fstat(fd:Int,?cb:Callback<Stats>):Promise<Stats>;
  static function fstatSync(fd:Int):Stats;

  static function link(srcPath:String,dstPath:String,?cb:Callback0):Promise<Void>;
  static function linkSync(srcPath:String,dstPath:String):Void;

  static function unlink(path:String,?cb:Callback0):Promise<Void>;
  static function unlinkSync(path:String):Void;

  @:overload(function(linkData:Dynamic,path:String,type:String,?cb:Callback0):Promise<Void> {})
  static function symlink(linkData:Dynamic,path:String,?cb:Callback0):Promise<Void>;
  static function symlinkSync(linkData:Dynamic,path:String,?type:String):Void;

  static function readlink(path:String,?cb:Callback<String>):Promise<String>;
  static function readlinkSync(path:String):String;

  static function realpath(path:String,?cb:Callback<String>):Promise<String>;
  static function realpathSync(path:String):String;

  static function chmod(path:String,mode:Int,?cb:Callback0):Promise<Void>;
  static function chmodSync(path:String,?mode:Int):Void;

  static function fchmod(fd:Int,mode:Int,?cb:Callback0):Promise<Void>;
  static function fchmodSync(fd:Int,?mode:Int):Void;

  static function chown(path:String,uid:Int,gid:Int,?cb:Callback0):Promise<Void> ;
  static function chownSync(path:String,uid:Int,gid:Int):Void;

  static function fchown(fd:Int,uid:Int,gid:Int,?cb:Callback0):Promise<Void> ;
  static function fchownSync(fd:Int,uid:Int,gid:Int):Void;

  static function rmdir(path:String,?cb:Callback0):Promise<Void>;
  static function rmdirSync(path:String):Void;

  @:overload(function(path:String,mode:Int,?cb:Callback0):Promise<Void> {})
  static function mkdir(path:String,?cb:Callback0):Promise<Void>;
  static function mkdirSync(path:String,?mode:Int):Void;

  static function readdir(path:String,?cb:Callback<Array<String>>):Promise<Array<String>>;
  static function readdirSync(path:String):Array<String>;

  static function close(fd:Int,?cb:Callback0):Promise<Void>;
  static function closeSync(fd:Int):Void;

  @:overload(function (path:String,flags:String,mode:Int,?cb:Callback<Int>):Promise<Int> {} )
  static function open(path:String,flags:String,?cb:Callback<Int>):Promise<Int>;

  static function openSync(path:String,flags:String,?mode:Int):Int;

  static function write(fd:Int,bufOrStr:EitherType<String, Buffer>,offset:Int,length:Int,position:Null<Int>,?cb:Callback<Int>):Promise<Int>;

  @:overload(function(fd:Int,bufOrStr:EitherType<String, Buffer>):Int {})
  @:overload(function(fd:Int,bufOrStr:EitherType<String, Buffer>,position:Null<Int>):Int {})
  static function writeSync(fd:Int,bufOrStr:EitherType<String, Buffer>,position:Null<Int>,encoding:String):Int;

  static function read(fd:Int,buffer:Buffer,offset:Int,length:Int,position:Int,cb:Callback2<Int,Buffer>):Void;
  static function readSync(fd:Int,buffer:Buffer,offset:Int,length:Int,position:Int):Int;

  static function truncate(fd:Int,len:Int,?cb:Callback0):Promise<Void>;
  static function truncateSync(fd:Int,len:Int):Error;

  @:overload(function(path:String,options:FsReadFileOpt,?cb:Callback<Buffer>):Promise<Buffer> {})
  @:overload(function(path:String,options:FsReadFileOpt,?cb:Callback<String>):Promise<Buffer> {})
  static function readFile(path:String,?cb:Callback<Buffer>):Promise<Buffer>;
  @:overload(function(path:String,options:FsReadFileOpt):String {})
  static function readFileSync(path:String):Buffer;

  @:overload(function(fileName:String,data:EitherType<String, Buffer>):Promise<Void> {})
  @:overload(function(fileName:String,data:EitherType<String, Buffer>,options:FsWriteFileOpt):Promise<Void> {})
  static function writeFile(fileName:String,data:EitherType<String, Buffer>,options:FsWriteFileOpt,?cb:Callback0):Promise<Void>;
  @:overload(function(fileName:String,data:Buffer,options:FsWriteFileOpt):Void {})
  @:overload(function(fileName:String,data:Buffer):Void {})
  @:overload(function(fileName:String,contents:String,options:FsWriteFileOpt):Void {})
  static function writeFileSync(fileName:String,contents:String):Void;

  @:overload(function(fileName:String,data:EitherType<String, Buffer>,?cb:Callback0):Promise<Void> {})
  static function appendFile(fileName:String,data:EitherType<String, Buffer>,options:FsWriteFileOpt,?cb:Callback0):Promise<Void>;
  @:overload(function(fileName:String,data:EitherType<String, Buffer>):Void {})
  static function appendFileSync(fileName:String,data:EitherType<String, Buffer>,options:FsWriteFileOpt):Void;

  static function utimes(path:String,atime:Dynamic,mtime:Dynamic,?cb:Callback0):Promise<Void>;
  static function utimeSync(path:String,atime:Dynamic,mtime:Dynamic):Void;

  static function futimes(fd:Int,atime:Dynamic,mtime:Dynamic,?cb:Callback0):Promise<Void>;
  static function futimeSync(fd:Int,atime:Dynamic,mtime:Dynamic):Void;

  static function fsync(fd:Int,?cb:Callback0):Promise<Void>;
  static function fsyncSync(fd:Int):Void;

  static function watchFile(fileName:String,?options:FsWatchOpt,listener:Stats->Stats->Void):Void;
  static function unwatchFile(fileName:String):Void;
  static function watch(fileName:String,?options:FsWatchOpt,listener:String->String->Void):FSWatcher;
  static function createReadStream(path:String,?options:FsReadStreamOpt):IReadable;
  static function createWriteStream(path:String,?options:FsWriteStreamOpt):IWritable;

  static function exists(p:String,?cb:Bool->Void):Promise<Bool>;
  static function existsSync(p:String):Bool;
}

typedef FsReadStreamOpt = {
    flags:String,
    encoding:String,
    fd:Null<Int>,
    mode:Int,
    bufferSize:Int,
    ?start:Int,
    ?end:Int
}

typedef FsReadFileOpt = {
  ?encoding : String,
  ?flag : String
}

typedef FsWriteFileOpt = {
  ?encoding : String,
  ?mode : Int,
  ?flag : String
}

typedef FsWriteStreamOpt = {
  var flags:String;
  var encoding:String;
  var mode:Int;
  @:optional var fd:Int;
}

typedef FsWatchOpt = {persistent:Bool,interval:Int};
