package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 禅让信息更新
 */
public class ResGuildDemiseUpdateMessage extends Message {
  /** 禅让到期时间 */
  private var _time:int;

  /** 禅让到期时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 禅让到期时间 */
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
    return 442;
  }
}
}