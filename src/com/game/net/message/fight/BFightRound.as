package com.game.net.message.fight {

import com.game.net.message.fight.BFightAction;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗回合
 */
public class BFightRound extends Bean {
  /** 行为 */
  private var _actions:Vector.<BFightAction> = new Vector.<BFightAction>();

  /** 行为 */
  public function set actions(value:Vector.<BFightAction>):void {
    this._actions = value;
  }

  /** 行为 */
  public function get actions():Vector.<BFightAction> {
    return this._actions;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._actions.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._actions.length; ++i_am_tmp_i) {
        _actions[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._actions = new Vector.<BFightAction>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._actions[i_am_tmp_i] = readBeanInList(_buf, BFightAction) as BFightAction;
    }
  }
}
}