package com.game.net.message.team {

import com.game.net.message.team.BTeamHeroZhengBing;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将(队伍中)
 */
public class BTeamHero extends Bean {
  /** 位置[1:大营][2:中军][3:前锋] */
  private var _position:int;
  /** 唯一ID */
  private var _uid:int;
  /** 兵力 */
  private var _bingLi:int;
  /** 征兵信息(可为空) */
  private var _zhengBing:BTeamHeroZhengBing;

  /** 位置[1:大营][2:中军][3:前锋] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 位置[1:大营][2:中军][3:前锋] */
  public function get position():int {
    return this._position;
  }

  /** 唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 唯一ID */
  public function get uid():int {
    return this._uid;
  }

  /** 兵力 */
  public function set bingLi(value:int):void {
    this._bingLi = value;
  }

  /** 兵力 */
  public function get bingLi():int {
    return this._bingLi;
  }

  /** 征兵信息(可为空) */
  public function set zhengBing(value:BTeamHeroZhengBing):void {
    this._zhengBing = value;
  }

  /** 征兵信息(可为空) */
  public function get zhengBing():BTeamHeroZhengBing {
    return this._zhengBing;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._position);
        writeInt(_buf, this._uid);
        writeInt(_buf, this._bingLi);
        writeBean(_buf, this._zhengBing);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._position = readInt(_buf);
        this._uid = readInt(_buf);
        this._bingLi = readInt(_buf);
        this._zhengBing = readBean(_buf, BTeamHeroZhengBing) as BTeamHeroZhengBing;
  }
}
}