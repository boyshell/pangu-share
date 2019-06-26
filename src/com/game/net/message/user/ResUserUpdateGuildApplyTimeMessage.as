package com.game.net.message.user {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 更新帮会申请时间
 */
public class ResUserUpdateGuildApplyTimeMessage extends Message {
  /** 可申请帮会时间 */
  private var _time:int;

  /** 可申请帮会时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 可申请帮会时间 */
  public function get time():int {
    return this._time;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._time);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._time = readInt(_buf);
  }

  override public function getId(): int {
    return 446;
  }
}
}