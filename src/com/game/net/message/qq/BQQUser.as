package com.game.net.message.qq {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 社交玩家
 */
public class BQQUser extends Bean {
  /** 唯一ID */
  private var _uid:long;
  /** 名字 */
  private var _name:String;

  /** 唯一ID */
  public function set uid(value:long):void {
    this._uid = value;
  }

  /** 唯一ID */
  public function get uid():long {
    return this._uid;
  }

  /** 名字 */
  public function set name(value:String):void {
    this._name = value;
  }

  /** 名字 */
  public function get name():String {
    return this._name;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeString(_buf, this._name);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._name = readString(_buf);
  }
}
}