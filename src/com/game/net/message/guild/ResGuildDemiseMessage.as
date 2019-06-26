package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 禅让
 */
public class ResGuildDemiseMessage extends Message {
  /** 成员唯一ID */
  private var _memberUID:long;

  /** 成员唯一ID */
  public function set memberUID(value:long):void {
    this._memberUID = value;
  }

  /** 成员唯一ID */
  public function get memberUID():long {
    return this._memberUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._memberUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._memberUID = readLong(_buf);
  }

  override public function getId(): int {
    return 393;
  }
}
}