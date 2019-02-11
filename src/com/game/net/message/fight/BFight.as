package com.game.net.message.fight {

import com.game.net.message.fight.BFightRound;
import com.game.net.message.fight.BFightTeam;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗
 */
public class BFight extends Bean {
  /** 左边队伍 */
  private var _lTeam:BFightTeam;
  /** 右边队伍 */
  private var _rTeam:BFightTeam;
  /** 回合 */
  private var _rounds:Vector.<BFightRound> = new Vector.<BFightRound>();

  /** 左边队伍 */
  public function set lTeam(value:BFightTeam):void {
    this._lTeam = value;
  }

  /** 左边队伍 */
  public function get lTeam():BFightTeam {
    return this._lTeam;
  }

  /** 右边队伍 */
  public function set rTeam(value:BFightTeam):void {
    this._rTeam = value;
  }

  /** 右边队伍 */
  public function get rTeam():BFightTeam {
    return this._rTeam;
  }

  /** 回合 */
  public function set rounds(value:Vector.<BFightRound>):void {
    this._rounds = value;
  }

  /** 回合 */
  public function get rounds():Vector.<BFightRound> {
    return this._rounds;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._lTeam);
        writeBean(_buf, this._rTeam);
    writeInt(_buf, this._rounds.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._rounds.length; ++i_am_tmp_i) {
        _rounds[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._lTeam = readBean(_buf, BFightTeam) as BFightTeam;
        this._rTeam = readBean(_buf, BFightTeam) as BFightTeam;
    size52413035 = readInt(_buf);
    this._rounds = new Vector.<BFightRound>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._rounds[i_am_tmp_i] = readBeanInList(_buf, BFightRound) as BFightRound;
    }
  }
}
}