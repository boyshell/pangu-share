package com.game.net.message.gambling {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取卡包武将
 */
public class ResGamblingGetHeroesMessage extends Message {
  /** 武将卡ID */
  private var _heroIDs:Vector.<int> = new Vector.<int>();

  /** 武将卡ID */
  public function set heroIDs(value:Vector.<int>):void {
    this._heroIDs = value;
  }

  /** 武将卡ID */
  public function get heroIDs():Vector.<int> {
    return this._heroIDs;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._heroIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._heroIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 476;
  }
}
}