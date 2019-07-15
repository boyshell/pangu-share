package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 活动卡包
 */
public class BGamblingHD extends Bean {
  /** 卡包ID */
  private var _id:int;
  /** 次数上限 */
  private var _timesMax:int;
  /** 剩余次数 */
  private var _times:int;
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

  /** 次数上限 */
  public function set timesMax(value:int):void {
    this._timesMax = value;
  }

  /** 次数上限 */
  public function get timesMax():int {
    return this._timesMax;
  }

  /** 剩余次数 */
  public function set times(value:int):void {
    this._times = value;
  }

  /** 剩余次数 */
  public function get times():int {
    return this._times;
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
        writeInt(_buf, this._timesMax);
        writeInt(_buf, this._times);
        writeInt(_buf, this._time);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._timesMax = readInt(_buf);
        this._times = readInt(_buf);
        this._time = readInt(_buf);
  }
}
}