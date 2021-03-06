package com.game.net.message.gambling {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募
 */
public class ReqGamblingMessage extends Message {
  /** 卡包ID */
  private var _houseID:int;
  /** 招募次数 */
  private var _times:int;

  /** 卡包ID */
  public function set houseID(value:int):void {
    this._houseID = value;
  }

  /** 卡包ID */
  public function get houseID():int {
    return this._houseID;
  }

  /** 招募次数 */
  public function set times(value:int):void {
    this._times = value;
  }

  /** 招募次数 */
  public function get times():int {
    return this._times;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._houseID);
        writeInt(_buf, this._times);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._houseID = readInt(_buf);
        this._times = readInt(_buf);
  }

  override public function getId(): int {
    return 359;
  }
}
}