package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 拒绝邀请
 */
public class ResGuildRefuseInviteMessage extends Message {
  /** 帮会唯一ID */
  private var _guildUID:long;

  /** 帮会唯一ID */
  public function set guildUID(value:long):void {
    this._guildUID = value;
  }

  /** 帮会唯一ID */
  public function get guildUID():long {
    return this._guildUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._guildUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guildUID = readLong(_buf);
  }

  override public function getId(): int {
    return 396;
  }
}
}