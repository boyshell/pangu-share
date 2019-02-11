package com.game.net.message.hero {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 兵种信息
 */
public class BHeroBingZhong extends Bean {
  /** 兵种[1:弓][2:步][3:骑] */
  private var _bingZhong:int;
  /** 技能(0表示未装备技能) */
  private var _skills:Vector.<int> = new Vector.<int>();

  /** 兵种[1:弓][2:步][3:骑] */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 兵种[1:弓][2:步][3:骑] */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  /** 技能(0表示未装备技能) */
  public function set skills(value:Vector.<int>):void {
    this._skills = value;
  }

  /** 技能(0表示未装备技能) */
  public function get skills():Vector.<int> {
    return this._skills;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._bingZhong);
    writeInt(_buf, this._skills.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skills.length; ++i_am_tmp_i) {
        writeInt(_buf, _skills[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._bingZhong = readInt(_buf);
    size52413035 = readInt(_buf);
    this._skills = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skills[i_am_tmp_i] = readInt(_buf);
    }
  }
}
}