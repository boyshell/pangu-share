package com.game.net.message.hero {

import com.game.net.message.skill.BSkillLevel;
import com.game.net.message.util.BAttribute;
import com.game.net.message.hero.BHeroBingZhong;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将
 */
public class BHero extends Bean {
  /** 唯一ID */
  private var _uid:int;
  /** 武将ID */
  private var _heroID:int;
  /** 星 */
  private var _star:int;
  /** 等级 */
  private var _level:int;
  /** 经验 */
  private var _exp:int;
  /** 体力 */
  private var _tiLi:int;
  /** 是否觉醒 */
  private var _jueXing:Boolean;
  /** 技能 */
  private var _skills:Vector.<BSkillLevel> = new Vector.<BSkillLevel>();
  /** 配点 */
  private var _peiDian:Vector.<BAttribute> = new Vector.<BAttribute>();
  /** 下次可免费重置配点时间 */
  private var _freePeiDianResetTime:int;
  /** 是否被保护 */
  private var _locked:Boolean;
  /** 当前兵种 */
  private var _bingZhong:int;
  /** 已解锁的兵种信息 */
  private var _bingzhongs:Vector.<BHeroBingZhong> = new Vector.<BHeroBingZhong>();
  /** 兵种是否已经进阶 */
  private var _jinJie:Boolean;

  /** 唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 唯一ID */
  public function get uid():int {
    return this._uid;
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

  /** 经验 */
  public function set exp(value:int):void {
    this._exp = value;
  }

  /** 经验 */
  public function get exp():int {
    return this._exp;
  }

  /** 体力 */
  public function set tiLi(value:int):void {
    this._tiLi = value;
  }

  /** 体力 */
  public function get tiLi():int {
    return this._tiLi;
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

  /** 配点 */
  public function set peiDian(value:Vector.<BAttribute>):void {
    this._peiDian = value;
  }

  /** 配点 */
  public function get peiDian():Vector.<BAttribute> {
    return this._peiDian;
  }

  /** 下次可免费重置配点时间 */
  public function set freePeiDianResetTime(value:int):void {
    this._freePeiDianResetTime = value;
  }

  /** 下次可免费重置配点时间 */
  public function get freePeiDianResetTime():int {
    return this._freePeiDianResetTime;
  }

  /** 是否被保护 */
  public function set locked(value:Boolean):void {
    this._locked = value;
  }

  /** 是否被保护 */
  public function get locked():Boolean {
    return this._locked;
  }

  /** 当前兵种 */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 当前兵种 */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  /** 已解锁的兵种信息 */
  public function set bingzhongs(value:Vector.<BHeroBingZhong>):void {
    this._bingzhongs = value;
  }

  /** 已解锁的兵种信息 */
  public function get bingzhongs():Vector.<BHeroBingZhong> {
    return this._bingzhongs;
  }

  /** 兵种是否已经进阶 */
  public function set jinJie(value:Boolean):void {
    this._jinJie = value;
  }

  /** 兵种是否已经进阶 */
  public function get jinJie():Boolean {
    return this._jinJie;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeInt(_buf, this._heroID);
        writeInt(_buf, this._star);
        writeInt(_buf, this._level);
        writeInt(_buf, this._exp);
        writeInt(_buf, this._tiLi);
        writeBoolean(_buf, this._jueXing);
    writeInt(_buf, this._skills.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skills.length; ++i_am_tmp_i) {
        _skills[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._peiDian.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._peiDian.length; ++i_am_tmp_i) {
        _peiDian[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._freePeiDianResetTime);
        writeBoolean(_buf, this._locked);
        writeInt(_buf, this._bingZhong);
    writeInt(_buf, this._bingzhongs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._bingzhongs.length; ++i_am_tmp_i) {
        _bingzhongs[i_am_tmp_i].write(_buf);
    }
        writeBoolean(_buf, this._jinJie);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._heroID = readInt(_buf);
        this._star = readInt(_buf);
        this._level = readInt(_buf);
        this._exp = readInt(_buf);
        this._tiLi = readInt(_buf);
        this._jueXing = readBoolean(_buf);
    size52413035 = readInt(_buf);
    this._skills = new Vector.<BSkillLevel>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skills[i_am_tmp_i] = readBeanInList(_buf, BSkillLevel) as BSkillLevel;
    }
    size52413035 = readInt(_buf);
    this._peiDian = new Vector.<BAttribute>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._peiDian[i_am_tmp_i] = readBeanInList(_buf, BAttribute) as BAttribute;
    }
        this._freePeiDianResetTime = readInt(_buf);
        this._locked = readBoolean(_buf);
        this._bingZhong = readInt(_buf);
    size52413035 = readInt(_buf);
    this._bingzhongs = new Vector.<BHeroBingZhong>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._bingzhongs[i_am_tmp_i] = readBeanInList(_buf, BHeroBingZhong) as BHeroBingZhong;
    }
        this._jinJie = readBoolean(_buf);
  }
}
}