package com.game.net.message.login {

import com.game.net.message.skill.BSkillProgress;
import com.game.net.message.gambling.BGambling;
import com.game.net.message.hero.BHero;
import com.game.net.message.team.BTeam;
import com.game.net.message.building.BBuilding;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 初始化数据
 */
public class BLoginInit extends Bean {
  /** 名字 */
  private var _name:String;
  /** 值列表 */
  private var _values:Vector.<int> = new Vector.<int>();
  /** 武将卡数量上限 */
  private var _heroMax:int;
  /** 武将列表 */
  private var _heroes:Vector.<BHero> = new Vector.<BHero>();
  /** 技能数量上限 */
  private var _skillMax:int;
  /** 技能列表 */
  private var _skills:Vector.<BSkillProgress> = new Vector.<BSkillProgress>();
  /** 队伍列表 */
  private var _teams:Vector.<BTeam> = new Vector.<BTeam>();
  /** 武将卡可重置的时间 */
  private var _heroResetTime:int;
  /** 建筑 */
  private var _buildings:Vector.<BBuilding> = new Vector.<BBuilding>();
  /** 招募信息 */
  private var _gambling:BGambling;
  /** 属性列表 */
  private var _attributes:Vector.<int> = new Vector.<int>();
  /** 已通关关卡ID */
  private var _guanQiaID:int;

  /** 名字 */
  public function set name(value:String):void {
    this._name = value;
  }

  /** 名字 */
  public function get name():String {
    return this._name;
  }

  /** 值列表 */
  public function set values(value:Vector.<int>):void {
    this._values = value;
  }

  /** 值列表 */
  public function get values():Vector.<int> {
    return this._values;
  }

  /** 武将卡数量上限 */
  public function set heroMax(value:int):void {
    this._heroMax = value;
  }

  /** 武将卡数量上限 */
  public function get heroMax():int {
    return this._heroMax;
  }

  /** 武将列表 */
  public function set heroes(value:Vector.<BHero>):void {
    this._heroes = value;
  }

  /** 武将列表 */
  public function get heroes():Vector.<BHero> {
    return this._heroes;
  }

  /** 技能数量上限 */
  public function set skillMax(value:int):void {
    this._skillMax = value;
  }

  /** 技能数量上限 */
  public function get skillMax():int {
    return this._skillMax;
  }

  /** 技能列表 */
  public function set skills(value:Vector.<BSkillProgress>):void {
    this._skills = value;
  }

  /** 技能列表 */
  public function get skills():Vector.<BSkillProgress> {
    return this._skills;
  }

  /** 队伍列表 */
  public function set teams(value:Vector.<BTeam>):void {
    this._teams = value;
  }

  /** 队伍列表 */
  public function get teams():Vector.<BTeam> {
    return this._teams;
  }

  /** 武将卡可重置的时间 */
  public function set heroResetTime(value:int):void {
    this._heroResetTime = value;
  }

  /** 武将卡可重置的时间 */
  public function get heroResetTime():int {
    return this._heroResetTime;
  }

  /** 建筑 */
  public function set buildings(value:Vector.<BBuilding>):void {
    this._buildings = value;
  }

  /** 建筑 */
  public function get buildings():Vector.<BBuilding> {
    return this._buildings;
  }

  /** 招募信息 */
  public function set gambling(value:BGambling):void {
    this._gambling = value;
  }

  /** 招募信息 */
  public function get gambling():BGambling {
    return this._gambling;
  }

  /** 属性列表 */
  public function set attributes(value:Vector.<int>):void {
    this._attributes = value;
  }

  /** 属性列表 */
  public function get attributes():Vector.<int> {
    return this._attributes;
  }

  /** 已通关关卡ID */
  public function set guanQiaID(value:int):void {
    this._guanQiaID = value;
  }

  /** 已通关关卡ID */
  public function get guanQiaID():int {
    return this._guanQiaID;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._name);
    writeInt(_buf, this._values.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._values.length; ++i_am_tmp_i) {
        writeInt(_buf, _values[i_am_tmp_i]);
    }
        writeInt(_buf, this._heroMax);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._skillMax);
    writeInt(_buf, this._skills.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skills.length; ++i_am_tmp_i) {
        _skills[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._teams.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._teams.length; ++i_am_tmp_i) {
        _teams[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._heroResetTime);
    writeInt(_buf, this._buildings.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._buildings.length; ++i_am_tmp_i) {
        _buildings[i_am_tmp_i].write(_buf);
    }
        writeBean(_buf, this._gambling);
    writeInt(_buf, this._attributes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._attributes.length; ++i_am_tmp_i) {
        writeInt(_buf, _attributes[i_am_tmp_i]);
    }
        writeInt(_buf, this._guanQiaID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._name = readString(_buf);
    size52413035 = readInt(_buf);
    this._values = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._values[i_am_tmp_i] = readInt(_buf);
    }
        this._heroMax = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BHero) as BHero;
    }
        this._skillMax = readInt(_buf);
    size52413035 = readInt(_buf);
    this._skills = new Vector.<BSkillProgress>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skills[i_am_tmp_i] = readBeanInList(_buf, BSkillProgress) as BSkillProgress;
    }
    size52413035 = readInt(_buf);
    this._teams = new Vector.<BTeam>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._teams[i_am_tmp_i] = readBeanInList(_buf, BTeam) as BTeam;
    }
        this._heroResetTime = readInt(_buf);
    size52413035 = readInt(_buf);
    this._buildings = new Vector.<BBuilding>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._buildings[i_am_tmp_i] = readBeanInList(_buf, BBuilding) as BBuilding;
    }
        this._gambling = readBean(_buf, BGambling) as BGambling;
    size52413035 = readInt(_buf);
    this._attributes = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._attributes[i_am_tmp_i] = readInt(_buf);
    }
        this._guanQiaID = readInt(_buf);
  }
}
}