package com.game.net.message.guild {

import com.game.net.message.guild.BGuildUser;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会
 */
public class BGuild extends Bean {
  /** 唯一ID */
  private var _uid:long;
  /** 名字 */
  private var _name:String;
  /** 容量 */
  private var _capacity:int;
  /** 帮会成员 */
  private var _members:Vector.<BGuildUser> = new Vector.<BGuildUser>();
  /** 帮会申请者 */
  private var _applicant:Vector.<BGuildUser> = new Vector.<BGuildUser>();
  /** 帮会受邀者 */
  private var _invitee:Vector.<BGuildUser> = new Vector.<BGuildUser>();
  /** 禅让到期时间 */
  private var _demiseTime:int;
  /** 值 */
  private var _values:Vector.<int> = new Vector.<int>();

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

  /** 帮会成员 */
  public function set members(value:Vector.<BGuildUser>):void {
    this._members = value;
  }

  /** 帮会成员 */
  public function get members():Vector.<BGuildUser> {
    return this._members;
  }

  /** 帮会申请者 */
  public function set applicant(value:Vector.<BGuildUser>):void {
    this._applicant = value;
  }

  /** 帮会申请者 */
  public function get applicant():Vector.<BGuildUser> {
    return this._applicant;
  }

  /** 帮会受邀者 */
  public function set invitee(value:Vector.<BGuildUser>):void {
    this._invitee = value;
  }

  /** 帮会受邀者 */
  public function get invitee():Vector.<BGuildUser> {
    return this._invitee;
  }

  /** 禅让到期时间 */
  public function set demiseTime(value:int):void {
    this._demiseTime = value;
  }

  /** 禅让到期时间 */
  public function get demiseTime():int {
    return this._demiseTime;
  }

  /** 值 */
  public function set values(value:Vector.<int>):void {
    this._values = value;
  }

  /** 值 */
  public function get values():Vector.<int> {
    return this._values;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeString(_buf, this._name);
        writeInt(_buf, this._capacity);
    writeInt(_buf, this._members.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._members.length; ++i_am_tmp_i) {
        _members[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._applicant.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._applicant.length; ++i_am_tmp_i) {
        _applicant[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._invitee.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._invitee.length; ++i_am_tmp_i) {
        _invitee[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._demiseTime);
    writeInt(_buf, this._values.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._values.length; ++i_am_tmp_i) {
        writeInt(_buf, _values[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._name = readString(_buf);
        this._capacity = readInt(_buf);
    size52413035 = readInt(_buf);
    this._members = new Vector.<BGuildUser>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._members[i_am_tmp_i] = readBeanInList(_buf, BGuildUser) as BGuildUser;
    }
    size52413035 = readInt(_buf);
    this._applicant = new Vector.<BGuildUser>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._applicant[i_am_tmp_i] = readBeanInList(_buf, BGuildUser) as BGuildUser;
    }
    size52413035 = readInt(_buf);
    this._invitee = new Vector.<BGuildUser>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._invitee[i_am_tmp_i] = readBeanInList(_buf, BGuildUser) as BGuildUser;
    }
        this._demiseTime = readInt(_buf);
    size52413035 = readInt(_buf);
    this._values = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._values[i_am_tmp_i] = readInt(_buf);
    }
  }
}
}