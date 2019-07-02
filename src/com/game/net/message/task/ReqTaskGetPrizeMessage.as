package com.game.net.message.task {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 任务领奖
 */
public class ReqTaskGetPrizeMessage extends Message {
  /** 任务ID */
  private var _taskID:int;

  /** 任务ID */
  public function set taskID(value:int):void {
    this._taskID = value;
  }

  /** 任务ID */
  public function get taskID():int {
    return this._taskID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._taskID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._taskID = readInt(_buf);
  }

  override public function getId(): int {
    return 471;
  }
}
}