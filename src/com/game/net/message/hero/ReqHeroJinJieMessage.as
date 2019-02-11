package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将进阶
 */
public class ReqHeroJinJieMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 材料武将唯一ID */
  private var _mHeroUIDs:Vector.<int> = new Vector.<int>();

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 材料武将唯一ID */
  public function set mHeroUIDs(value:Vector.<int>):void {
    this._mHeroUIDs = value;
  }

  /** 材料武将唯一ID */
  public function get mHeroUIDs():Vector.<int> {
    return this._mHeroUIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
    writeInt(_buf, this._mHeroUIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._mHeroUIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _mHeroUIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
    size52413035 = readInt(_buf);
    this._mHeroUIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._mHeroUIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 302;
  }
}
}