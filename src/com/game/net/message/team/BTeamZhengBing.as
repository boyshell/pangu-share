package com.game.net.message.team {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵信息
 */
public class BTeamZhengBing extends Bean {
  /** 武将卡唯一ID */
  private var _heroUID:int;
  /** 征兵兵力 */
  private var _zhengBingBingLi:int;

  /** 武将卡唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将卡唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 征兵兵力 */
  public function set zhengBingBingLi(value:int):void {
    this._zhengBingBingLi = value;
  }

  /** 征兵兵力 */
  public function get zhengBingBingLi():int {
    return this._zhengBingBingLi;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._zhengBingBingLi);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._zhengBingBingLi = readInt(_buf);
  }
}
}