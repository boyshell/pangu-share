package com.game.net.message.mail {

import com.game.net.message.mail.BMailPersonal;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 新的个人邮件
 */
public class ResMailPersonalNewMessage extends Message {
  /** 玩家唯一ID */
  private var _userUID:long;
  /** 玩家名字 */
  private var _userName:String;
  /** 邮件 */
  private var _mail:BMailPersonal;

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

  /** 邮件 */
  public function set mail(value:BMailPersonal):void {
    this._mail = value;
  }

  /** 邮件 */
  public function get mail():BMailPersonal {
    return this._mail;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._userUID);
        writeString(_buf, this._userName);
        writeBean(_buf, this._mail);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._userUID = readLong(_buf);
        this._userName = readString(_buf);
        this._mail = readBean(_buf, BMailPersonal) as BMailPersonal;
  }

  override public function getId(): int {
    return 416;
  }
}
}