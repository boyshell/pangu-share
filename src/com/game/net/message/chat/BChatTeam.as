package com.game.net.message.chat {

import com.game.net.message.chat.BChatHero;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天队伍
 */
public class BChatTeam extends Bean {
  /** 武将信息 */
  private var _heroes:Vector.<BChatHero> = new Vector.<BChatHero>();

  /** 武将信息 */
  public function set heroes(value:Vector.<BChatHero>):void {
    this._heroes = value;
  }

  /** 武将信息 */
  public function get heroes():Vector.<BChatHero> {
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
    this._heroes = new Vector.<BChatHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BChatHero) as BChatHero;
    }
  }
}
}