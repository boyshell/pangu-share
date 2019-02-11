package com.game.net.message.skill {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 研究技能
 */
public class ReqSkillResearchMessage extends Message {
  /** 技能ID */
  private var _skillID:int;
  /** 武将唯一ID */
  private var _heroes:Vector.<int> = new Vector.<int>();

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  /** 武将唯一ID */
  public function set heroes(value:Vector.<int>):void {
    this._heroes = value;
  }

  /** 武将唯一ID */
  public function get heroes():Vector.<int> {
    return this._heroes;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._skillID);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroes[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._skillID = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 294;
  }
}
}