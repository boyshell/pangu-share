package com.game.net.message.fight {

import com.game.net.message.fight.BFightTarget;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗行为(使用技能)
 */
public class BFightAction extends Bean {
  /** 使用者ID */
  private var _heroID:int;
  /** 目标 */
  private var _targets:Vector.<BFightTarget> = new Vector.<BFightTarget>();

  /** 使用者ID */
  public function set heroID(value:int):void {
    this._heroID = value;
  }

  /** 使用者ID */
  public function get heroID():int {
    return this._heroID;
  }

  /** 目标 */
  public function set targets(value:Vector.<BFightTarget>):void {
    this._targets = value;
  }

  /** 目标 */
  public function get targets():Vector.<BFightTarget> {
    return this._targets;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroID);
    writeInt(_buf, this._targets.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._targets.length; ++i_am_tmp_i) {
        _targets[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroID = readInt(_buf);
    size52413035 = readInt(_buf);
    this._targets = new Vector.<BFightTarget>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._targets[i_am_tmp_i] = readBeanInList(_buf, BFightTarget) as BFightTarget;
    }
  }
}
}