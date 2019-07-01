package com.game.net.message.guanqia {

import com.game.net.message.fight.BFight;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 闯关
 */
public class ResGuanQiaFightMessage extends Message {
  /** 已通关关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  private var _guanQiaID:int;
  /** 战斗结果 */
  private var _fight:BFight;

  /** 已通关关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function set guanQiaID(value:int):void {
    this._guanQiaID = value;
  }

  /** 已通关关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function get guanQiaID():int {
    return this._guanQiaID;
  }

  /** 战斗结果 */
  public function set fight(value:BFight):void {
    this._fight = value;
  }

  /** 战斗结果 */
  public function get fight():BFight {
    return this._fight;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._guanQiaID);
        writeBean(_buf, this._fight);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guanQiaID = readInt(_buf);
        this._fight = readBean(_buf, BFight) as BFight;
  }

  override public function getId(): int {
    return 380;
  }
}
}