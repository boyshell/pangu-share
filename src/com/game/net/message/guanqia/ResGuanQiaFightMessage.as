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
  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  private var _guanQiaID:int;
  /** 战斗结果 */
  private var _result:BFight;

  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function set guanQiaID(value:int):void {
    this._guanQiaID = value;
  }

  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function get guanQiaID():int {
    return this._guanQiaID;
  }

  /** 战斗结果 */
  public function set result(value:BFight):void {
    this._result = value;
  }

  /** 战斗结果 */
  public function get result():BFight {
    return this._result;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._guanQiaID);
        writeBean(_buf, this._result);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guanQiaID = readInt(_buf);
        this._result = readBean(_buf, BFight) as BFight;
  }

  override public function getId(): int {
    return 380;
  }
}
}