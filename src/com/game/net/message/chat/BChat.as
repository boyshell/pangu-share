package com.game.net.message.chat {

import com.game.net.message.chat.BChatTeam;
import com.game.net.message.fight.BFight;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天
 */
public class BChat extends Bean {
  /** 发言者唯一ID */
  private var _srcUID:long;
  /** 发言者名字 */
  private var _srcShowName:String;
  /** 发言者帮会名字 */
  private var _srcGuildName:String;
  /** 文字 */
  private var _txt:String;
  /** 战报 */
  private var _fight:BFight;
  /** 队伍 */
  private var _team:BChatTeam;

  /** 发言者唯一ID */
  public function set srcUID(value:long):void {
    this._srcUID = value;
  }

  /** 发言者唯一ID */
  public function get srcUID():long {
    return this._srcUID;
  }

  /** 发言者名字 */
  public function set srcShowName(value:String):void {
    this._srcShowName = value;
  }

  /** 发言者名字 */
  public function get srcShowName():String {
    return this._srcShowName;
  }

  /** 发言者帮会名字 */
  public function set srcGuildName(value:String):void {
    this._srcGuildName = value;
  }

  /** 发言者帮会名字 */
  public function get srcGuildName():String {
    return this._srcGuildName;
  }

  /** 文字 */
  public function set txt(value:String):void {
    this._txt = value;
  }

  /** 文字 */
  public function get txt():String {
    return this._txt;
  }

  /** 战报 */
  public function set fight(value:BFight):void {
    this._fight = value;
  }

  /** 战报 */
  public function get fight():BFight {
    return this._fight;
  }

  /** 队伍 */
  public function set team(value:BChatTeam):void {
    this._team = value;
  }

  /** 队伍 */
  public function get team():BChatTeam {
    return this._team;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._srcUID);
        writeString(_buf, this._srcShowName);
        writeString(_buf, this._srcGuildName);
        writeString(_buf, this._txt);
        writeBean(_buf, this._fight);
        writeBean(_buf, this._team);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._srcUID = readLong(_buf);
        this._srcShowName = readString(_buf);
        this._srcGuildName = readString(_buf);
        this._txt = readString(_buf);
        this._fight = readBean(_buf, BFight) as BFight;
        this._team = readBean(_buf, BChatTeam) as BChatTeam;
  }
}
}