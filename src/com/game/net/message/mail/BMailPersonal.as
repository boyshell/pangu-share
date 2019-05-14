package com.game.net.message.mail {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 个人邮件
 */
public class BMailPersonal extends Bean {
  /** 我是否发送者 */
  private var _sender:Boolean;
  /** 发送时间 */
  private var _time:int;
  /** 邮件内容 */
  private var _content:String;

  /** 我是否发送者 */
  public function set sender(value:Boolean):void {
    this._sender = value;
  }

  /** 我是否发送者 */
  public function get sender():Boolean {
    return this._sender;
  }

  /** 发送时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 发送时间 */
  public function get time():int {
    return this._time;
  }

  /** 邮件内容 */
  public function set content(value:String):void {
    this._content = value;
  }

  /** 邮件内容 */
  public function get content():String {
    return this._content;
  }

  override public function write(_buf:ByteArray): void {
        writeBoolean(_buf, this._sender);
        writeInt(_buf, this._time);
        writeString(_buf, this._content);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._sender = readBoolean(_buf);
        this._time = readInt(_buf);
        this._content = readString(_buf);
  }
}
}