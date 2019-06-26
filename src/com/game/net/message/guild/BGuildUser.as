package com.game.net.message.guild {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会玩家
 */
public class BGuildUser extends Bean {
  /** 唯一ID */
  private var _uid:long;
  /** 名字 */
  private var _name:String;
  /** 职位[1:皇帝][2:平民] */
  private var _position:int;

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

  /** 职位[1:皇帝][2:平民] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 职位[1:皇帝][2:平民] */
  public function get position():int {
    return this._position;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeString(_buf, this._name);
        writeInt(_buf, this._position);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._name = readString(_buf);
        this._position = readInt(_buf);
  }
}
}