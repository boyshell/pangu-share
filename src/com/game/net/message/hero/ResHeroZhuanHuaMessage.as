package com.game.net.message.hero {

import com.game.net.message.skill.BSkillExp;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将转化
 */
public class ResHeroZhuanHuaMessage extends Message {
  /** 经验展示 */
  private var _exps:Vector.<BSkillExp> = new Vector.<BSkillExp>();

  /** 经验展示 */
  public function set exps(value:Vector.<BSkillExp>):void {
    this._exps = value;
  }

  /** 经验展示 */
  public function get exps():Vector.<BSkillExp> {
    return this._exps;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._exps.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._exps.length; ++i_am_tmp_i) {
        _exps[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._exps = new Vector.<BSkillExp>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._exps[i_am_tmp_i] = readBeanInList(_buf, BSkillExp) as BSkillExp;
    }
  }

  override public function getId(): int {
    return 306;
  }
}
}