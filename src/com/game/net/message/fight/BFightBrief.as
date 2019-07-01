package com.game.net.message.fight {

import com.game.net.message.fight.BFightBriefTeam;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 简略战报
 */
public class BFightBrief extends Bean {
  /** 战报唯一id */
  private var _uid:int;
  /** 战报时间 */
  private var _time:int;
  /** 左边队伍 */
  private var _lTeam:BFightBriefTeam;
  /** 右边队伍 */
  private var _rTeam:BFightBriefTeam;

  /** 战报唯一id */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 战报唯一id */
  public function get uid():int {
    return this._uid;
  }

  /** 战报时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 战报时间 */
  public function get time():int {
    return this._time;
  }

  /** 左边队伍 */
  public function set lTeam(value:BFightBriefTeam):void {
    this._lTeam = value;
  }

  /** 左边队伍 */
  public function get lTeam():BFightBriefTeam {
    return this._lTeam;
  }

  /** 右边队伍 */
  public function set rTeam(value:BFightBriefTeam):void {
    this._rTeam = value;
  }

  /** 右边队伍 */
  public function get rTeam():BFightBriefTeam {
    return this._rTeam;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeInt(_buf, this._time);
        writeBean(_buf, this._lTeam);
        writeBean(_buf, this._rTeam);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._time = readInt(_buf);
        this._lTeam = readBean(_buf, BFightBriefTeam) as BFightBriefTeam;
        this._rTeam = readBean(_buf, BFightBriefTeam) as BFightBriefTeam;
  }
}
}