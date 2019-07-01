package com.game.net.message.train {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武武将
 */
public class BTrainHero extends Bean {
  /** 位置[1:大营][2:中军][3:前锋] */
  private var _position:int;
  /** 武将唯一ID */
  private var _heroUID:int;

  /** 位置[1:大营][2:中军][3:前锋] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 位置[1:大营][2:中军][3:前锋] */
  public function get position():int {
    return this._position;
  }

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._position);
        writeInt(_buf, this._heroUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._position = readInt(_buf);
        this._heroUID = readInt(_buf);
  }
}
}