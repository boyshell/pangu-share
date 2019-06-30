package com.game.net.message.sign {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 签到信息
 */
public class BSign extends Bean {
  /** 签到ID */
  private var _id:int;
  /** 已签到次数 */
  private var _times:int;
  /** 上次签到的时间 */
  private var _time:int;

  /** 签到ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 签到ID */
  public function get id():int {
    return this._id;
  }

  /** 已签到次数 */
  public function set times(value:int):void {
    this._times = value;
  }

  /** 已签到次数 */
  public function get times():int {
    return this._times;
  }

  /** 上次签到的时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 上次签到的时间 */
  public function get time():int {
    return this._time;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
        writeInt(_buf, this._times);
        writeInt(_buf, this._time);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._times = readInt(_buf);
        this._time = readInt(_buf);
  }
}
}