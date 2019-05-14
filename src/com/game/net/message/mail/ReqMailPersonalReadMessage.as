package com.game.net.message.mail {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 读取邮件
 */
public class ReqMailPersonalReadMessage extends Message {
  /** 玩家唯一ID */
  private var _userUID:long;

  /** 玩家唯一ID */
  public function set userUID(value:long):void {
    this._userUID = value;
  }

  /** 玩家唯一ID */
  public function get userUID():long {
    return this._userUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._userUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._userUID = readLong(_buf);
  }

  override public function getId(): int {
    return 58;
  }
}
}