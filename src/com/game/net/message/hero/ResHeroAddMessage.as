package com.game.net.message.hero {

import com.game.net.message.hero.BHero;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加武将卡
 */
public class ResHeroAddMessage extends Message {
  /** 武将信息信息 */
  private var _hero:BHero;

  /** 武将信息信息 */
  public function set hero(value:BHero):void {
    this._hero = value;
  }

  /** 武将信息信息 */
  public function get hero():BHero {
    return this._hero;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._hero);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._hero = readBean(_buf, BHero) as BHero;
  }

  override public function getId(): int {
    return 298;
  }
}
}