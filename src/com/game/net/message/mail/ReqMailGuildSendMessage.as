package com.game.net.message.mail {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 发送帮会邮件
 */
public class ReqMailGuildSendMessage extends Message {
  /** 内容 */
  private var _content:String;

  /** 内容 */
  public function set content(value:String):void {
    this._content = value;
  }

  /** 内容 */
  public function get content():String {
    return this._content;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._content);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._content = readString(_buf);
  }

  override public function getId(): int {
    return 406;
  }
}
}