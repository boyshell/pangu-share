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
  /** 等级 */
  private var _level:int;
  /** 盟主名字 */
  private var _bossName:String;
  /** 是否已申请 */
  private var _applied:Boolean;

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

  /** 等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 等级 */
  public function get level():int {
    return this._level;
  }

  /** 盟主名字 */
  public function set bossName(value:String):void {
    this._bossName = value;
  }

  /** 盟主名字 */
  public function get bossName():String {
    return this._bossName;
  }

  /** 是否已申请 */
  public function set applied(value:Boolean):void {
    this._applied = value;
  }

  /** 是否已申请 */
  public function get applied():Boolean {
    return this._applied;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeString(_buf, this._name);
        writeInt(_buf, this._capacity);
        writeInt(_buf, this._memberSize);
        writeInt(_buf, this._level);
        writeString(_buf, this._bossName);
        writeBoolean(_buf, this._applied);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._name = readString(_buf);
        this._capacity = readInt(_buf);
        this._memberSize = readInt(_buf);
        this._level = readInt(_buf);
        this._bossName = readString(_buf);
        this._applied = readBoolean(_buf);
  }
}
}