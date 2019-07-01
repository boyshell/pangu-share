package com.game.net.message.fight {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取战报详情
 */
public class ReqFightGetDetailMessage extends Message {
  /** 战报类型[1:关卡][2:演武] */
  private var _type:int;
  /** 战报唯一ID */
  private var _uid:int;

  /** 战报类型[1:关卡][2:演武] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function get type():int {
    return this._type;
  }

  /** 战报唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 战报唯一ID */
  public function get uid():int {
    return this._uid;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeInt(_buf, this._uid);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._uid = readInt(_buf);
  }

  override public function getId(): int {
    return 458;
  }
}
}