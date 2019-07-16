package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将卡包
 */
public class BGamblingWJ extends Bean {
  /** 卡包ID */
  private var _id:int;
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
        writeInt(_buf, this._starMin);
        writeInt(_buf, this._starMax);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._starMin = readInt(_buf);
        this._starMax = readInt(_buf);
  }
}
}