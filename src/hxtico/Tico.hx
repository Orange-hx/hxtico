package hxtico;

import haxe.extern.EitherType;
import haxe.extern.Rest;

extern class TicoCanvas {
    public function new();
    public function draw(?x: Float = 0, ?y: Float = 0, ?color_or_angle: EitherType<Array<Int>, Float> = 0, ?scaleX: Float, ?scaleY: Float, ?centerX: Float, ?centerY: Float, ?color: Array<Int>): Void;
    public function auto(): Void;
    public function getWidth(): Int;
    public function getHeight(): Int;
    public function getSize(): TicoDimensions;
    public function attach(): Void;
    public function detach(): Void;
}

extern class TicoImage {
    public function new();
    public function draw(?x: Float = 0, ?y: Float = 0, ?angle: Float = 0, ?scaleX: Float = 1, ?scaleY: Float = 1, ?centerX: Float = 0, ?centerY: Float = 0, ?color: Array<Int>): Void;
    public function getWidth(): Int;
    public function getHeight(): Int;
    public function getSize(): TicoDimensions;
}

extern class TicoRectangle {
    public function new();
    public function x(): Float;
    public function y(): Float;
    public function width(): Float;
    public function height(): Float;
}

typedef TicoFont = Dynamic; // No info currently about this...

extern class TicoGraphicsModule {
    public function new();
    @:luaDotMethod public function getSize(): TicoDimensions;
    @:luaDotMethod public function clear(?r_or_table: EitherType<Int, Array<Int>>, ?g: Int, ?b: Int, ?a: Int): Void;
    @:luaDotMethod public function newCanvas(width: Int, height: Int): TicoCanvas;
    @:luaDotMethod public function newImage(filename: String): TicoImage;
    @:luaDotMethod public function newRectangle(x: Float, y: Float, w: Float, h: Float): TicoRectangle;
    @:luaDotMethod public function drawRectangle(x: Float, y: Float, w: Float, h: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function fillRectangle(x: Float, y: Float, w: Float, h: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function drawCircle(x: Float, y: Float, radius: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function fillCircle(x: Float, y: Float, radius: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function drawTriangle(x0: Float, y0: Float, x1: Float, y1: Float, x2: Float, y2: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function fillTriangle(x0: Float, y0: Float, x1: Float, y1: Float, x2: Float, y2: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function line(x0: Float, y0: Float, x1: Float, y1: Float, ?color: Array<Int>): Void;
    @:luaDotMethod public function scissor(x: Float, y: Float, w: Float, h: Float): Void;
    @:luaDotMethod public function print(v1: EitherType<String, TicoFont>, v2: EitherType<String, Float>, v3: Float, v4: EitherType<Array<Int>, Float>, ?v5: Array<Int>): Void;
    @:luaDotMethod public function printf(v1: EitherType<String, TicoFont>, v2: EitherType<String, Float>, v3: Float, v4: Float, v5: Float, v6: EitherType<Array<Int>, Float>, ?v7: Array<Int>): Void;
}

extern class TicoTimerModule {
    public function new();
    @:luaDotMethod public function delta(): Float;
    @:luaDotMethod public function fps(): Float;
}

@:multiReturn
extern class TicoDimensions {
    var width: Int;
    var height: Int;
}

extern class TicoWindowModule {
    public function new();
    @:luaDotMethod public function getTitle(): String;
    @:luaDotMethod public function setTitle(title: String): Void;
    @:luaDotMethod public function getWidth(): Int;
    @:luaDotMethod public function setWidth(width: Int): Void;
    @:luaDotMethod public function getHeight(): Int;
    @:luaDotMethod public function setHeight(height: Int): Void;
    @:luaDotMethod public function getSize(): TicoDimensions;
}

extern class TicoJSONModule {
    public function new();
    @:luaDotMethod public function encode(table: Dynamic): String;
    @:luaDotMethod public function decode(str: String): Dynamic;
    @:luaDotMethod public function load(filename: String): Dynamic;
    @:luaDotMethod public function save(filename: String, table: Dynamic): Void;
}

extern class TicoFilesystemModule {
    public function new();
    @:luaDotMethod public function read(filename: String): String;
    @:luaDotMethod public function write(filename: String, text: String, mode: String): Void;
    @:luaDotMethod public function fileExists(filename: String): Bool;
    @:luaDotMethod public function setPath(path: String): Void;
    @:luaDotMethod public function getPath(): String;
    @:luaDotMethod public function exePath(): String;
    @:luaDotMethod public function resolvePath(filename: String): String;
    @:luaDotMethod public function mkdir(name: String): Void;
    @:luaDotMethod public function rmdir(name: String): Void;
}

extern class TicoMathModule {
    public function new();
    @:luaDotMethod public function lerp(init: Float, end: Float, t: Float): Float;
    @:luaDotMethod public function clamp(v: Float, min: Float, max: Float): Float;
    @:luaDotMethod public function round(value: Float): Int;
    @:luaDotMethod public function sign(value: Float): Float;
    @:luaDotMethod public function distance(val1: Float, val2: Float): Float;
    @:luaDotMethod public function angle(x0: Float, y0: Float, x1: Float, y1: Float): Float;
}

extern class TicoInputModule {
    public function new();
    @:luaDotMethod public function isDown(name: String): Bool;
    @:luaDotMethod public function isPressed(name: String): Bool;
    @:luaDotMethod public function isUp(name: String): Bool;
    @:luaDotMethod public function isReleased(name: String): Bool;
    @:luaDotMethod public function isKeyDown(key: String): Bool;
    @:luaDotMethod public function isKeyPressed(key: String): Bool;
    @:luaDotMethod public function isKeyUp(key: String): Bool;
    @:luaDotMethod public function isKeyReleased(key: String): Bool;
    @:luaDotMethod public function isMouseDown(button: String): Bool;
    @:luaDotMethod public function isMousePressed(button: String): Bool;
    @:luaDotMethod public function isMouseUp(button: String): Bool;
    @:luaDotMethod public function isMouseReleased(button: String): Bool;
    @:luaDotMethod public function isJoyDown(jid: Int, name: String): Bool;
    @:luaDotMethod public function isJoyPressed(jid: Int, name: String): Bool;
    @:luaDotMethod public function isJoyUp(jid: Int, name: String): Bool;
    @:luaDotMethod public function isJoyReleased(jid: Int, name: String): Bool;
}

extern class TicoSound {
    public function new();
    public function play(): Void;
    public function pause(): Void;
    public function stop(): Void;
    public function volume(?volume: Float): EitherType<Void, Float>;
    public function isPlaying(): Bool;
}

extern class TicoAudioModule {
    public function new();
    @:luaDotMethod public function setVolume(volume: Int): Void;
    @:luaDotMethod public function newSound(filename: String): TicoSound;
}

extern class TicoColorModule {
    public function new();
    @:luaDotMethod public function norm(args: Rest<Any>): Any;
}

@:native("tico")
extern class Tico {
    @:luaDotMethod public static function getVersion(): String;
    public static var color: TicoColorModule;
    public static var audio: TicoAudioModule;
    public static var input: TicoInputModule;
    public static var math: TicoMathModule;
    public static var filesystem: TicoFilesystemModule;
    public static var json: TicoJSONModule;
    public static var window: TicoWindowModule;
    public static var timer: TicoTimerModule;
    public static var graphics: TicoGraphicsModule;

    public static var load: Void->Void;
    public static var draw: Void->Void;
    public static var update: Float->Void;
}
