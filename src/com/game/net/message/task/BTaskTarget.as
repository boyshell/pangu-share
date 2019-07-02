package com.game.net.message.task {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 任务目标
 */
public class BTaskTarget extends Bean {
  /** 进度 */
  private var _progress:int;
  /** 进度上限 */
  private var _progressMax:int;

  /** 进度 */
  public function set progress(value:int):void {
    this._progress = value;
  }

  /** 进度 */
  public function get progress():int {
    return this._progress;
  }

  /** 进度上限 */
  public function set progressMax(value:int):void {
    this._progressMax = value;
  }

  /** 进度上限 */
  public function get progressMax():int {
    return this._progressMax;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._progress);
        writeInt(_buf, this._progressMax);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._progress = readInt(_buf);
        this._progressMax = readInt(_buf);
  }
}
}