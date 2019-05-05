package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种选择
 */
public class ReqHeroBingZhongSelectMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 兵种 */
  private var _bingZhong:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 兵种 */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 兵种 */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._bingZhong);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._bingZhong = readInt(_buf);
  }

  override public function getId(): int {
    return 348;
  }
}
}