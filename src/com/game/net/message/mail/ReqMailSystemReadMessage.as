package com.game.net.message.mail {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 读取邮件
 */
public class ReqMailSystemReadMessage extends Message {
  /** 邮件唯一ID */
  private var _mailUID:int;

  /** 邮件唯一ID */
  public function set mailUID(value:int):void {
    this._mailUID = value;
  }

  /** 邮件唯一ID */
  public function get mailUID():int {
    return this._mailUID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._mailUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._mailUID = readInt(_buf);
  }

  override public function getId(): int {
    return 409;
  }
}
}