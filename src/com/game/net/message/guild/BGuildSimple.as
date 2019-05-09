package com.game.net.message.guild {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会(简要信息)
 */
public class BGuildSimple extends Bean {
  /** 唯一ID */
  private var _uid:long;
  /** 名字 */
  private var _name:String;
  /** 容量 */
  private var _capacity:int;
  /** 成员数量 */
  private var _memberSize:int;

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

  /** 容量 */
  public function set capacity(value:int):void {
    this._capacity = value;
  }

  /** 容量 */
  public function get capacity():int {
    return this._capacity;
  }

  /** 成员数量 */
  public function set memberSize(value:int):void {
    this._memberSize = value;
  }

  /** 成员数量 */
  public function get memberSize():int {
    return this._memberSize;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeString(_buf, this._name);
        writeInt(_buf, this._capacity);
        writeInt(_buf, this._memberSize);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._name = readString(_buf);
        this._capacity = readInt(_buf);
        this._memberSize = readInt(_buf);
  }
}
}