package com.game.net.message.team {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵信息
 */
public class BTeamHeroZhengBing extends Bean {
  /** 目标兵力 */
  private var _dstBingLi:int;
  /** 征兵开始时间 */
  private var _stime:int;
  /** 征兵到期时间 */
  private var _etime:int;

  /** 目标兵力 */
  public function set dstBingLi(value:int):void {
    this._dstBingLi = value;
  }

  /** 目标兵力 */
  public function get dstBingLi():int {
    return this._dstBingLi;
  }

  /** 征兵开始时间 */
  public function set stime(value:int):void {
    this._stime = value;
  }

  /** 征兵开始时间 */
  public function get stime():int {
    return this._stime;
  }

  /** 征兵到期时间 */
  public function set etime(value:int):void {
    this._etime = value;
  }

  /** 征兵到期时间 */
  public function get etime():int {
    return this._etime;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._dstBingLi);
        writeInt(_buf, this._stime);
        writeInt(_buf, this._etime);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._dstBingLi = readInt(_buf);
        this._stime = readInt(_buf);
        this._etime = readInt(_buf);
  }
}
}