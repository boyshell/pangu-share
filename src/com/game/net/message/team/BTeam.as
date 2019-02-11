package com.game.net.message.team {

import com.game.net.message.team.BTeamHero;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍数据
 */
public class BTeam extends Bean {
  /** 队伍序号(1开始) */
  private var _index:int;
  /** 武将卡列表 */
  private var _heroes:Vector.<BTeamHero> = new Vector.<BTeamHero>();

  /** 队伍序号(1开始) */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 队伍序号(1开始) */
  public function get index():int {
    return this._index;
  }

  /** 武将卡列表 */
  public function set heroes(value:Vector.<BTeamHero>):void {
    this._heroes = value;
  }

  /** 武将卡列表 */
  public function get heroes():Vector.<BTeamHero> {
    return this._heroes;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BTeamHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BTeamHero) as BTeamHero;
    }
  }
}
}