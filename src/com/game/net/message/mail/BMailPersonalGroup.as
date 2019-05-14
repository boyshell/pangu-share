package com.game.net.message.mail {

import com.game.net.message.mail.BMailPersonal;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 个人邮件组
 */
public class BMailPersonalGroup extends Bean {
  /** 玩家唯一ID */
  private var _userUID:long;
  /** 玩家名字 */
  private var _userName:String;
  /** 来往邮件 */
  private var _mails:Vector.<BMailPersonal> = new Vector.<BMailPersonal>();
  /** 是否有未读信息 */
  private var _notify:Boolean;

  /** 玩家唯一ID */
  public function set userUID(value:long):void {
    this._userUID = value;
  }

  /** 玩家唯一ID */
  public function get userUID():long {
    return this._userUID;
  }

  /** 玩家名字 */
  public function set userName(value:String):void {
    this._userName = value;
  }

  /** 玩家名字 */
  public function get userName():String {
    return this._userName;
  }

  /** 来往邮件 */
  public function set mails(value:Vector.<BMailPersonal>):void {
    this._mails = value;
  }

  /** 来往邮件 */
  public function get mails():Vector.<BMailPersonal> {
    return this._mails;
  }

  /** 是否有未读信息 */
  public function set notify(value:Boolean):void {
    this._notify = value;
  }

  /** 是否有未读信息 */
  public function get notify():Boolean {
    return this._notify;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._userUID);
        writeString(_buf, this._userName);
    writeInt(_buf, this._mails.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._mails.length; ++i_am_tmp_i) {
        _mails[i_am_tmp_i].write(_buf);
    }
        writeBoolean(_buf, this._notify);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._userUID = readLong(_buf);
        this._userName = readString(_buf);
    size52413035 = readInt(_buf);
    this._mails = new Vector.<BMailPersonal>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._mails[i_am_tmp_i] = readBeanInList(_buf, BMailPersonal) as BMailPersonal;
    }
        this._notify = readBoolean(_buf);
  }
}
}