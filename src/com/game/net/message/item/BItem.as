package com.game.net.message.item {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 道具
 */
public class BItem extends Bean {
  /** 道具ID */
  private var _id:int;
  /** 道具数量 */
  private var _num:int;

  /** 道具ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 道具ID */
  public function get id():int {
    return this._id;
  }

  /** 道具数量 */
  public function set num(value:int):void {
    this._num = value;
  }

  /** 道具数量 */
  public function get num():int {
    return this._num;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
        writeInt(_buf, this._num);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
        this._num = readInt(_buf);
  }
}
}