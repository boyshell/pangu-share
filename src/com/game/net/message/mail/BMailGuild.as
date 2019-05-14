package com.game.net.message.mail {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会邮件
 */
public class BMailGuild extends Bean {
  /** 邮件唯一ID */
  private var _uid:int;
  /** 是否未读 */
  private var _notify:Boolean;
  /** 发送者唯一ID */
  private var _senderUID:long;
  /** 发送者名字 */
  private var _senderName:String;
  /** 发送者职位[1:皇帝][2:平民] */
  private var _senderPosition:int;
  /** 时间 */
  private var _time:int;
  /** 内容 */
  private var _content:String;

  /** 邮件唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 邮件唯一ID */
  public function get uid():int {
    return this._uid;
  }

  /** 是否未读 */
  public function set notify(value:Boolean):void {
    this._notify = value;
  }

  /** 是否未读 */
  public function get notify():Boolean {
    return this._notify;
  }

  /** 发送者唯一ID */
  public function set senderUID(value:long):void {
    this._senderUID = value;
  }

  /** 发送者唯一ID */
  public function get senderUID():long {
    return this._senderUID;
  }

  /** 发送者名字 */
  public function set senderName(value:String):void {
    this._senderName = value;
  }

  /** 发送者名字 */
  public function get senderName():String {
    return this._senderName;
  }

  /** 发送者职位[1:皇帝][2:平民] */
  public function set senderPosition(value:int):void {
    this._senderPosition = value;
  }

  /** 发送者职位[1:皇帝][2:平民] */
  public function get senderPosition():int {
    return this._senderPosition;
  }

  /** 时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 时间 */
  public function get time():int {
    return this._time;
  }

  /** 内容 */
  public function set content(value:String):void {
    this._content = value;
  }

  /** 内容 */
  public function get content():String {
    return this._content;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeBoolean(_buf, this._notify);
        writeLong(_buf, this._senderUID);
        writeString(_buf, this._senderName);
        writeInt(_buf, this._senderPosition);
        writeInt(_buf, this._time);
        writeString(_buf, this._content);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._notify = readBoolean(_buf);
        this._senderUID = readLong(_buf);
        this._senderName = readString(_buf);
        this._senderPosition = readInt(_buf);
        this._time = readInt(_buf);
        this._content = readString(_buf);
  }
}
}