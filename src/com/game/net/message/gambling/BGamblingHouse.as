package com.game.net.message.gambling {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 卡包
 */
public class BGamblingHouse extends Bean {
  /** 卡包ID */
  private var _id:int;
  /** 参数列表,根据不同的卡包类型表示的意义不一样 */
  private var _vars:Vector.<int> = new Vector.<int>();
  /** 武将卡 */
  private var _heroIDs:Vector.<int> = new Vector.<int>();

  /** 卡包ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 卡包ID */
  public function get id():int {
    return this._id;
  }

  /** 参数列表,根据不同的卡包类型表示的意义不一样 */
  public function set vars(value:Vector.<int>):void {
    this._vars = value;
  }

  /** 参数列表,根据不同的卡包类型表示的意义不一样 */
  public function get vars():Vector.<int> {
    return this._vars;
  }

  /** 武将卡 */
  public function set heroIDs(value:Vector.<int>):void {
    this._heroIDs = value;
  }

  /** 武将卡 */
  public function get heroIDs():Vector.<int> {
    return this._heroIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
    writeInt(_buf, this._vars.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._vars.length; ++i_am_tmp_i) {
        writeInt(_buf, _vars[i_am_tmp_i]);
    }
    writeInt(_buf, this._heroIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
    size52413035 = readInt(_buf);
    this._vars = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._vars[i_am_tmp_i] = readInt(_buf);
    }
    size52413035 = readInt(_buf);
    this._heroIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroIDs[i_am_tmp_i] = readInt(_buf);
    }
  }
}
}