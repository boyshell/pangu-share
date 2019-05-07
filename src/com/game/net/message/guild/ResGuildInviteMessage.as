package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 邀请入帮
 */
public class ResGuildInviteMessage extends Message {
  /** 客人唯一ID */
  private var _guestUID:long;

  /** 客人唯一ID */
  public function set guestUID(value:long):void {
    this._guestUID = value;
  }

  /** 客人唯一ID */
  public function get guestUID():long {
    return this._guestUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._guestUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guestUID = readLong(_buf);
  }

  override public function getId(): int {
    return 229;
  }
}
}