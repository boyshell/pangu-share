package com.game.net.message.team {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍设置
 */
public class ResTeamSetMessage extends Message {
  /** 队伍序号(1开始) */
  private var _teamIndex:int;
  /** 队伍中的位置[1:大营][2:中军][3:前锋] */
  private var _position:int;
  /** 武将卡唯一ID */
  private var _heroUID:int;

  /** 队伍序号(1开始) */
  public function set teamIndex(value:int):void {
    this._teamIndex = value;
  }

  /** 队伍序号(1开始) */
  public function get teamIndex():int {
    return this._teamIndex;
  }

  /** 队伍中的位置[1:大营][2:中军][3:前锋] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 队伍中的位置[1:大营][2:中军][3:前锋] */
  public function get position():int {
    return this._position;
  }

  /** 武将卡唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将卡唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._teamIndex);
        writeInt(_buf, this._position);
        writeInt(_buf, this._heroUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._teamIndex = readInt(_buf);
        this._position = readInt(_buf);
        this._heroUID = readInt(_buf);
  }

  override public function getId(): int {
    return 328;
  }
}
}