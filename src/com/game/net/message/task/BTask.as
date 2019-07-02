package com.game.net.message.task {

import com.game.net.message.task.BTaskTarget;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 任务
 */
public class BTask extends Bean {
  /** 任务ID */
  private var _id:int;
  /** 任务目标 */
  private var _targets:Vector.<BTaskTarget> = new Vector.<BTaskTarget>();

  /** 任务ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 任务ID */
  public function get id():int {
    return this._id;
  }

  /** 任务目标 */
  public function set targets(value:Vector.<BTaskTarget>):void {
    this._targets = value;
  }

  /** 任务目标 */
  public function get targets():Vector.<BTaskTarget> {
    return this._targets;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
    writeInt(_buf, this._targets.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._targets.length; ++i_am_tmp_i) {
        _targets[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
    size52413035 = readInt(_buf);
    this._targets = new Vector.<BTaskTarget>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._targets[i_am_tmp_i] = readBeanInList(_buf, BTaskTarget) as BTaskTarget;
    }
  }
}
}