package com.game.net.message.team {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 取消征兵
 */
public class ResTeamZhengBingCancelMessage extends Message {
  /** 取消征兵的武将卡 */
  private var _heroUIDs:Vector.<int> = new Vector.<int>();

  /** 取消征兵的武将卡 */
  public function set heroUIDs(value:Vector.<int>):void {
    this._heroUIDs = value;
  }

  /** 取消征兵的武将卡 */
  public function get heroUIDs():Vector.<int> {
    return this._heroUIDs;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._heroUIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroUIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroUIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._heroUIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroUIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 331;
  }
}
}