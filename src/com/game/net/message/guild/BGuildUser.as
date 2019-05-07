package com.game.net.message.guild {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会玩家
 */
public class BGuildUser extends Bean {
  /** 唯一ID */
  private var _uid:long;

  /** 唯一ID */
  public function set uid(value:long):void {
    this._uid = value;
  }

  /** 唯一ID */
  public function get uid():long {
    return this._uid;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
  }
}
}