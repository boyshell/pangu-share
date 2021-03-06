package com.game.net.message.skill {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除技能
 */
public class ResSkillRemoveMessage extends Message {
  /** 技能ID */
  private var _skillID:int;

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._skillID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._skillID = readInt(_buf);
  }

  override public function getId(): int {
    return 293;
  }
}
}