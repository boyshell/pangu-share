package com.game.net.message.mail {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 发送个人邮件
 */
public class ReqMailPersonalSendMessage extends Message {
  /** 接收者唯一ID */
  private var _rcvUID:long;
  /** 内容 */
  private var _content:String;

  /** 接收者唯一ID */
  public function set rcvUID(value:long):void {
    this._rcvUID = value;
  }

  /** 接收者唯一ID */
  public function get rcvUID():long {
    return this._rcvUID;
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
        writeLong(_buf, this._rcvUID);
        writeString(_buf, this._content);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._rcvUID = readLong(_buf);
        this._content = readString(_buf);
  }

  override public function getId(): int {
    return 413;
  }
}
}