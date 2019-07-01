package com.game.net.message.fight {

import com.game.net.message.fight.BFight;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取战报详情
 */
public class ResFightGetDetailMessage extends Message {
  /** 战报类型[1:关卡][2:演武] */
  private var _type:int;
  /** 战报详情 */
  private var _fight:BFight;

  /** 战报类型[1:关卡][2:演武] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function get type():int {
    return this._type;
  }

  /** 战报详情 */
  public function set fight(value:BFight):void {
    this._fight = value;
  }

  /** 战报详情 */
  public function get fight():BFight {
    return this._fight;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeBean(_buf, this._fight);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._fight = readBean(_buf, BFight) as BFight;
  }

  override public function getId(): int {
    return 459;
  }
}
}