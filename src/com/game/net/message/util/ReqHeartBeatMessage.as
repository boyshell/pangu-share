package com.game.net.message.util {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 心跳
 */
public class ReqHeartBeatMessage extends Message {
  /** 前端unix时间戳 */
  private var _time:long;

  /** 前端unix时间戳 */
  public function set time(value:long):void {
    this._time = value;
  }

  /** 前端unix时间戳 */
  public function get time():long {
    return this._time;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._time);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._time = readLong(_buf);
  }

  override public function getId(): int {
    return 357;
  }
}
}