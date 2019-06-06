package com.game.net.message.fight {

import com.game.net.message.fight.BFightBuffTrigger;
import com.game.net.message.fight.BFightDamage;
import com.game.net.message.fight.BFightSkillPrepare;
import com.game.net.message.fight.BFightBuffAdd;
import com.game.net.message.fight.BFightTeam;
import com.game.net.message.fight.BFightSkillUse;
import com.game.net.message.fight.BFightRecover;
import com.game.net.message.fight.BFightBuffRemove;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战报
 */
public class BFight extends Bean {
  /** 战报唯一id */
  private var _uid:int;
  /** 战报时间 */
  private var _time:int;
  /** 左边队伍 */
  private var _lTeam:BFightTeam;
  /** 右边队伍 */
  private var _rTeam:BFightTeam;
  /** 日志:准备使用技能 */
  private var _skillPrepare:Vector.<BFightSkillPrepare> = new Vector.<BFightSkillPrepare>();
  /** 日志:使用技能 */
  private var _skillUse:Vector.<BFightSkillUse> = new Vector.<BFightSkillUse>();
  /** 日志:添加buff */
  private var _buffAdd:Vector.<BFightBuffAdd> = new Vector.<BFightBuffAdd>();
  /** 日志:移除buff */
  private var _buffRemove:Vector.<BFightBuffRemove> = new Vector.<BFightBuffRemove>();
  /** 日志:buff触发 */
  private var _buffTrigger:Vector.<BFightBuffTrigger> = new Vector.<BFightBuffTrigger>();
  /** 日志:伤害 */
  private var _damage:Vector.<BFightDamage> = new Vector.<BFightDamage>();
  /** 日志:恢复 */
  private var _recover:Vector.<BFightRecover> = new Vector.<BFightRecover>();

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

  /** 日志:准备使用技能 */
  public function set skillPrepare(value:Vector.<BFightSkillPrepare>):void {
    this._skillPrepare = value;
  }

  /** 日志:准备使用技能 */
  public function get skillPrepare():Vector.<BFightSkillPrepare> {
    return this._skillPrepare;
  }

  /** 日志:使用技能 */
  public function set skillUse(value:Vector.<BFightSkillUse>):void {
    this._skillUse = value;
  }

  /** 日志:使用技能 */
  public function get skillUse():Vector.<BFightSkillUse> {
    return this._skillUse;
  }

  /** 日志:添加buff */
  public function set buffAdd(value:Vector.<BFightBuffAdd>):void {
    this._buffAdd = value;
  }

  /** 日志:添加buff */
  public function get buffAdd():Vector.<BFightBuffAdd> {
    return this._buffAdd;
  }

  /** 日志:移除buff */
  public function set buffRemove(value:Vector.<BFightBuffRemove>):void {
    this._buffRemove = value;
  }

  /** 日志:移除buff */
  public function get buffRemove():Vector.<BFightBuffRemove> {
    return this._buffRemove;
  }

  /** 日志:buff触发 */
  public function set buffTrigger(value:Vector.<BFightBuffTrigger>):void {
    this._buffTrigger = value;
  }

  /** 日志:buff触发 */
  public function get buffTrigger():Vector.<BFightBuffTrigger> {
    return this._buffTrigger;
  }

  /** 日志:伤害 */
  public function set damage(value:Vector.<BFightDamage>):void {
    this._damage = value;
  }

  /** 日志:伤害 */
  public function get damage():Vector.<BFightDamage> {
    return this._damage;
  }

  /** 日志:恢复 */
  public function set recover(value:Vector.<BFightRecover>):void {
    this._recover = value;
  }

  /** 日志:恢复 */
  public function get recover():Vector.<BFightRecover> {
    return this._recover;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeInt(_buf, this._time);
        writeBean(_buf, this._lTeam);
        writeBean(_buf, this._rTeam);
    writeInt(_buf, this._skillPrepare.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skillPrepare.length; ++i_am_tmp_i) {
        _skillPrepare[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._skillUse.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._skillUse.length; ++i_am_tmp_i) {
        _skillUse[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._buffAdd.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._buffAdd.length; ++i_am_tmp_i) {
        _buffAdd[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._buffRemove.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._buffRemove.length; ++i_am_tmp_i) {
        _buffRemove[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._buffTrigger.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._buffTrigger.length; ++i_am_tmp_i) {
        _buffTrigger[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._damage.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._damage.length; ++i_am_tmp_i) {
        _damage[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._recover.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._recover.length; ++i_am_tmp_i) {
        _recover[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._time = readInt(_buf);
        this._lTeam = readBean(_buf, BFightTeam) as BFightTeam;
        this._rTeam = readBean(_buf, BFightTeam) as BFightTeam;
    size52413035 = readInt(_buf);
    this._skillPrepare = new Vector.<BFightSkillPrepare>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skillPrepare[i_am_tmp_i] = readBeanInList(_buf, BFightSkillPrepare) as BFightSkillPrepare;
    }
    size52413035 = readInt(_buf);
    this._skillUse = new Vector.<BFightSkillUse>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._skillUse[i_am_tmp_i] = readBeanInList(_buf, BFightSkillUse) as BFightSkillUse;
    }
    size52413035 = readInt(_buf);
    this._buffAdd = new Vector.<BFightBuffAdd>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._buffAdd[i_am_tmp_i] = readBeanInList(_buf, BFightBuffAdd) as BFightBuffAdd;
    }
    size52413035 = readInt(_buf);
    this._buffRemove = new Vector.<BFightBuffRemove>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._buffRemove[i_am_tmp_i] = readBeanInList(_buf, BFightBuffRemove) as BFightBuffRemove;
    }
    size52413035 = readInt(_buf);
    this._buffTrigger = new Vector.<BFightBuffTrigger>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._buffTrigger[i_am_tmp_i] = readBeanInList(_buf, BFightBuffTrigger) as BFightBuffTrigger;
    }
    size52413035 = readInt(_buf);
    this._damage = new Vector.<BFightDamage>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._damage[i_am_tmp_i] = readBeanInList(_buf, BFightDamage) as BFightDamage;
    }
    size52413035 = readInt(_buf);
    this._recover = new Vector.<BFightRecover>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._recover[i_am_tmp_i] = readBeanInList(_buf, BFightRecover) as BFightRecover;
    }
  }
}
}