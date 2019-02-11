package com.game.net.message.skill {

import com.game.net.message.skill.BSkillProgress;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 研究技能
 */
public class ResSkillResearchMessage extends Message {
  /** 技能信息 */
  private var _skill:BSkillProgress;

  /** 技能信息 */
  public function set skill(value:BSkillProgress):void {
    this._skill = value;
  }

  /** 技能信息 */
  public function get skill():BSkillProgress {
    return this._skill;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._skill);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._skill = readBean(_buf, BSkillProgress) as BSkillProgress;
  }

  override public function getId(): int {
    return 295;
  }
}
}