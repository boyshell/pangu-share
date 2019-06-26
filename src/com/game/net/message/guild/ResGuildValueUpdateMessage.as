package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 帮会值更新
 */
public class ResGuildValueUpdateMessage extends Message {
  /** 类型 */
  private var _type:int;
  /** 值 */
  private var _value:int;

  /** 类型 */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 类型 */
  public function get type():int {
    return this._type;
  }

  /** 值 */
  public function set value(value:int):void {
    this._value = value;
  }

  /** 值 */
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

  override public function getId(): int {
    return 447;
  }
}
}