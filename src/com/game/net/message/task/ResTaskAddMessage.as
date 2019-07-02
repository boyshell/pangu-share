package com.game.net.message.task {

import com.game.net.message.task.BTask;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加任务
 */
public class ResTaskAddMessage extends Message {
  /** 任务 */
  private var _task:BTask;

  /** 任务 */
  public function set task(value:BTask):void {
    this._task = value;
  }

  /** 任务 */
  public function get task():BTask {
    return this._task;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._task);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._task = readBean(_buf, BTask) as BTask;
  }

  override public function getId(): int {
    return 474;
  }
}
}