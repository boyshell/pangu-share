package com.game.net.message.train {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武挑战
 */
public class ReqTrainChallengeMessage extends Message {
  /** 挑战序号，1开始 */
  private var _index:int;
  /** 队伍 */
  private var _heroUIDs:Vector.<int> = new Vector.<int>();

  /** 挑战序号，1开始 */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 挑战序号，1开始 */
  public function get index():int {
    return this._index;
  }

  /** 队伍 */
  public function set heroUIDs(value:Vector.<int>):void {
    this._heroUIDs = value;
  }

  /** 队伍 */
  public function get heroUIDs():Vector.<int> {
    return this._heroUIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
    writeInt(_buf, this._heroUIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroUIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroUIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroUIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroUIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 464;
  }
}
}