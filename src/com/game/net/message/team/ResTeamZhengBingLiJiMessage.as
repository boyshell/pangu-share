package com.game.net.message.team {

import com.game.net.message.team.BTeamHero;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵(立即)
 */
public class ResTeamZhengBingLiJiMessage extends Message {
  /** 武将卡信息 */
  private var _heroes:Vector.<BTeamHero> = new Vector.<BTeamHero>();

  /** 武将卡信息 */
  public function set heroes(value:Vector.<BTeamHero>):void {
    this._heroes = value;
  }

  /** 武将卡信息 */
  public function get heroes():Vector.<BTeamHero> {
    return this._heroes;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BTeamHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BTeamHero) as BTeamHero;
    }
  }

  override public function getId(): int {
    return 325;
  }
}
}