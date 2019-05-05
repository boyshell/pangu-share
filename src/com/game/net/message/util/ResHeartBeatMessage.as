package com.game.net.message.util {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 心跳
 */
public class ResHeartBeatMessage extends Message {
  /** 前端unix时间戳 */
  private var _ctime:long;
  /** 后端unix时间戳 */
  private var _stime:long;

  /** 前端unix时间戳 */
  public function set ctime(value:long):void {
    this._ctime = value;
  }

  /** 前端unix时间戳 */
  public function get ctime():long {
    return this._ctime;
  }

  /** 后端unix时间戳 */
  public function set stime(value:long):void {
    this._stime = value;
  }

  /** 后端unix时间戳 */
  public function get stime():long {
    return this._stime;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._ctime);
        writeLong(_buf, this._stime);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._ctime = readLong(_buf);
        this._stime = readLong(_buf);
  }

  override public function getId(): int {
    return 358;
  }
}
}