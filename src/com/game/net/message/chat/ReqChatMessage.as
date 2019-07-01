package com.game.net.message.chat {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天
 */
public class ReqChatMessage extends Message {
  /** 频道类型[1:世界][2:帮会] */
  private var _type:int;
  /** 文字 */
  private var _txt:String;
  /** 战报类型[1:关卡][2:演武] */
  private var _fightType:int;
  /** 战报唯一ID */
  private var _fightUID:int;
  /** 队伍序号 */
  private var _teamIndex:int;

  /** 频道类型[1:世界][2:帮会] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 频道类型[1:世界][2:帮会] */
  public function get type():int {
    return this._type;
  }

  /** 文字 */
  public function set txt(value:String):void {
    this._txt = value;
  }

  /** 文字 */
  public function get txt():String {
    return this._txt;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function set fightType(value:int):void {
    this._fightType = value;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function get fightType():int {
    return this._fightType;
  }

  /** 战报唯一ID */
  public function set fightUID(value:int):void {
    this._fightUID = value;
  }

  /** 战报唯一ID */
  public function get fightUID():int {
    return this._fightUID;
  }

  /** 队伍序号 */
  public function set teamIndex(value:int):void {
    this._teamIndex = value;
  }

  /** 队伍序号 */
  public function get teamIndex():int {
    return this._teamIndex;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeString(_buf, this._txt);
        writeInt(_buf, this._fightType);
        writeInt(_buf, this._fightUID);
        writeInt(_buf, this._teamIndex);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._txt = readString(_buf);
        this._fightType = readInt(_buf);
        this._fightUID = readInt(_buf);
        this._teamIndex = readInt(_buf);
  }

  override public function getId(): int {
    return 179;
  }
}
}