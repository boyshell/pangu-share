package com.game.net.message.fight {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗属性
 */
public class BFightAttribute extends Bean {
  /** 战斗属性类型[1:攻击][2:防御][3:谋略][4:速度][5:攻城] */
  private var _type:int;
  /** 属性值 */
  private var _value:int;

  /** 战斗属性类型[1:攻击][2:防御][3:谋略][4:速度][5:攻城] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 战斗属性类型[1:攻击][2:防御][3:谋略][4:速度][5:攻城] */
  public function get type():int {
    return this._type;
  }

  /** 属性值 */
  public function set value(value:int):void {
    this._value = value;
  }

  /** 属性值 */
  public function get value():int {
    return this._value;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeInt(_buf, this._value);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._value = readInt(_buf);
  }
}
}