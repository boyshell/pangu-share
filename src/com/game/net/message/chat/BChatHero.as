package com.game.net.message.chat {

import com.game.net.message.skill.BSkillLevel;
import com.game.net.message.hero.BHeroBingZhong;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天武将
 */
public class BChatHero extends Bean {
  /** 位置[1:大营][2:中军][3:前锋] */
  private var _position:int;
  /** 武将ID */
  private var _heroID:int;
  /** 星 */
  private var _star:int;
  /** 等级 */
  private var _level:int;
  /** 是否觉醒 */
  private var _jueXing:Boolean;
  /** 技能 */
  private var _skills:Vector.<BSkillLevel> = new Vector.<BSkillLevel>();
  /** 当前兵种 */
  private var _bingZhong:BHeroBingZhong;

  /** 位置[1:大营][2:中军][3:前锋] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 位置[1:大营][2:中军][3:前锋] */
  public function get position():int {
    return this._position;
  }

  /** 武将ID */
  public function set heroID(value:int):void {
    this._heroID = value;
  }

  /** 武将ID */
  public function get heroID():int {
    return this._heroID;
  }

  /** 星 */
  public function set star(value:int):void {
    this._star = value;
  }

  /** 星 */
  public function get star():int {
    return this._star;
  }

  /** 等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 等级 */
  public function get level():int {
    return this._level;
  }

  /** 是否觉醒 */
  public function set jueXing(value:Boolean):void {
    this._jueXing = value;
  }

  /** 是否觉醒 */
  public function get jueXing():Boolean {
    return this._jueXing;
  }

  /** 技能 */
  public function set skills(value:Vector.<BSkillLevel>):void {
    this._skills = value;
  }

  /** 技能 */
  public function get skills():Vector.<BSkillLevel> {
    return this._skills;
  }

  /** 当前兵种 */
  public function set bingZhong(value:BHeroBingZhong):void {
    this._bingZhong = value;
  }

  /** 当前兵种 */
  public function get bingZhong():BHeroBingZhong {
    return this._bingZhong;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._position);
        writeInt(_buf, this._heroID);
        writeInt(_buf, this._star);
        writeInt(_buf, this._level);
        writeBoolean(_buf, this._jueXing);
    writeInt(_buf, this._skills.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skills.length; ++i_am_tmp_i) {
        _skills[i_am_tmp_i].write(_buf);
    }
        writeBean(_buf, this._bingZhong);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._position = readInt(_buf);
        this._heroID = readInt(_buf);
        this._star = readInt(_buf);
        this._level = readInt(_buf);
        this._jueXing = readBoolean(_buf);
    size52413035 = readInt(_buf);
    this._skills = new Vector.<BSkillLevel>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skills[i_am_tmp_i] = readBeanInList(_buf, BSkillLevel) as BSkillLevel;
    }
        this._bingZhong = readBean(_buf, BHeroBingZhong) as BHeroBingZhong;
  }
}
}