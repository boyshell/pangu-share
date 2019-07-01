package com.game.net.message.train {

import com.game.net.message.fight.BFight;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武挑战
 */
public class ResTrainChallengeMessage extends Message {
  /** 战斗结果 */
  private var _fight:BFight;

  /** 战斗结果 */
  public function set fight(value:BFight):void {
    this._fight = value;
  }

  /** 战斗结果 */
  public function get fight():BFight {
    return this._fight;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._fight);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._fight = readBean(_buf, BFight) as BFight;
  }

  override public function getId(): int {
    return 465;
  }
}
}