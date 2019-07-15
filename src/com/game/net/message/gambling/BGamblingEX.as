package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 天下卡包
 */
public class BGamblingEX extends Bean {
  /** 卡包ID */
  private var _id:int;
  /** 过期时间 */
  private var _time:int;

  /** 卡包ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 卡包ID */
  public function get id():int {
    return this._id;
  }

  /** 过期时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 过期时间 */
  public function get time():int {
    return this._time;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
        writeInt(_buf, this._time);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._time = readInt(_buf);
  }
}
}