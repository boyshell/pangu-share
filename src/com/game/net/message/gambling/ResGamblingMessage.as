package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingHouse;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募
 */
public class ResGamblingMessage extends Message {
  /** 卡包 */
  private var _house:BGamblingHouse;
  /** 武将卡ID */
  private var _heroIDs:Vector.<int> = new Vector.<int>();

  /** 卡包 */
  public function set house(value:BGamblingHouse):void {
    this._house = value;
  }

  /** 卡包 */
  public function get house():BGamblingHouse {
    return this._house;
  }

  /** 武将卡ID */
  public function set heroIDs(value:Vector.<int>):void {
    this._heroIDs = value;
  }

  /** 武将卡ID */
  public function get heroIDs():Vector.<int> {
    return this._heroIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._house);
    writeInt(_buf, this._heroIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._house = readBean(_buf, BGamblingHouse) as BGamblingHouse;
    size52413035 = readInt(_buf);
    this._heroIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 360;
  }
}
}