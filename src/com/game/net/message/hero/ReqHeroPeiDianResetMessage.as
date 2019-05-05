package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 重置武将配点
 */
public class ReqHeroPeiDianResetMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 是否免费重置 */
  private var _free:Boolean;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 是否免费重置 */
  public function set free(value:Boolean):void {
    this._free = value;
  }

  /** 是否免费重置 */
  public function get free():Boolean {
    return this._free;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeBoolean(_buf, this._free);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._free = readBoolean(_buf);
  }

  override public function getId(): int {
    return 311;
  }
}
}