package com.game.net.message.fight {

import com.game.net.message.fight.BFightAttribute;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 目标
 */
public class BFightTarget extends Bean {
  /** 目标ID */
  private var _heroID:int;
  /** 当前属性 */
  private var _attributes:Vector.<BFightAttribute> = new Vector.<BFightAttribute>();
  /** 当前兵力 */
  private var _bingLi:int;

  /** 目标ID */
  public function set heroID(value:int):void {
    this._heroID = value;
  }

  /** 目标ID */
  public function get heroID():int {
    return this._heroID;
  }

  /** 当前属性 */
  public function set attributes(value:Vector.<BFightAttribute>):void {
    this._attributes = value;
  }

  /** 当前属性 */
  public function get attributes():Vector.<BFightAttribute> {
    return this._attributes;
  }

  /** 当前兵力 */
  public function set bingLi(value:int):void {
    this._bingLi = value;
  }

  /** 当前兵力 */
  public function get bingLi():int {
    return this._bingLi;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroID);
    writeInt(_buf, this._attributes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._attributes.length; ++i_am_tmp_i) {
        _attributes[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._bingLi);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroID = readInt(_buf);
    size52413035 = readInt(_buf);
    this._attributes = new Vector.<BFightAttribute>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._attributes[i_am_tmp_i] = readBeanInList(_buf, BFightAttribute) as BFightAttribute;
    }
        this._bingLi = readInt(_buf);
  }
}
}