package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 名将卡包
 */
public class BGamblingMJ extends Bean {
  /** 卡包ID */
  private var _id:int;
  /** 免费时间 */
  private var _freeTime:int;
  /** 保底4星还需次数 */
  private var _baodi4:int;
  /** 是否半价 */
  private var _banjia:Boolean;

  /** 卡包ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 卡包ID */
  public function get id():int {
    return this._id;
  }

  /** 免费时间 */
  public function set freeTime(value:int):void {
    this._freeTime = value;
  }

  /** 免费时间 */
  public function get freeTime():int {
    return this._freeTime;
  }

  /** 保底4星还需次数 */
  public function set baodi4(value:int):void {
    this._baodi4 = value;
  }

  /** 保底4星还需次数 */
  public function get baodi4():int {
    return this._baodi4;
  }

  /** 是否半价 */
  public function set banjia(value:Boolean):void {
    this._banjia = value;
  }

  /** 是否半价 */
  public function get banjia():Boolean {
    return this._banjia;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
        writeInt(_buf, this._freeTime);
        writeInt(_buf, this._baodi4);
        writeBoolean(_buf, this._banjia);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._freeTime = readInt(_buf);
        this._baodi4 = readInt(_buf);
        this._banjia = readBoolean(_buf);
  }
}
}