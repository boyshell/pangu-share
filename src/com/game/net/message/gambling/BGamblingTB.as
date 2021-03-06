package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 铜币卡包
 */
public class BGamblingTB extends Bean {
  /** 卡包ID */
  private var _id:int;
  /** 是否已经激活 */
  private var _active:Boolean;
  /** 次数上限 */
  private var _timesMax:int;
  /** 剩余次数 */
  private var _times:int;
  /** 最低星级 */
  private var _starMin:int;
  /** 最高星级 */
  private var _starMax:int;

  /** 卡包ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 卡包ID */
  public function get id():int {
    return this._id;
  }

  /** 是否已经激活 */
  public function set active(value:Boolean):void {
    this._active = value;
  }

  /** 是否已经激活 */
  public function get active():Boolean {
    return this._active;
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

  /** 最低星级 */
  public function set starMin(value:int):void {
    this._starMin = value;
  }

  /** 最低星级 */
  public function get starMin():int {
    return this._starMin;
  }

  /** 最高星级 */
  public function set starMax(value:int):void {
    this._starMax = value;
  }

  /** 最高星级 */
  public function get starMax():int {
    return this._starMax;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
        writeBoolean(_buf, this._active);
        writeInt(_buf, this._timesMax);
        writeInt(_buf, this._times);
        writeInt(_buf, this._starMin);
        writeInt(_buf, this._starMax);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._active = readBoolean(_buf);
        this._timesMax = readInt(_buf);
        this._times = readInt(_buf);
        this._starMin = readInt(_buf);
        this._starMax = readInt(_buf);
  }
}
}