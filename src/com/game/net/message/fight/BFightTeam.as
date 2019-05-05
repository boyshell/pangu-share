package com.game.net.message.fight {

import com.game.net.message.fight.BFightHero;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗队伍
 */
public class BFightTeam extends Bean {
  /** 队伍名字 */
  private var _name:String;
  /** 武将 */
  private var _heroes:Vector.<BFightHero> = new Vector.<BFightHero>();

  /** 队伍名字 */
  public function set name(value:String):void {
    this._name = value;
  }

  /** 队伍名字 */
  public function get name():String {
    return this._name;
  }

  /** 武将 */
  public function set heroes(value:Vector.<BFightHero>):void {
    this._heroes = value;
  }

  /** 武将 */
  public function get heroes():Vector.<BFightHero> {
    return this._heroes;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._name);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._name = readString(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BFightHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BFightHero) as BFightHero;
    }
  }
}
}