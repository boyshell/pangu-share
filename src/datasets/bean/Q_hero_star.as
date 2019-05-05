package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将星
 */
public class Q_hero_star extends Bean {
    /** 武将星 */
    private var _q_hero_star:int;
    /** 转化可获得的技能经验 */
    private var _q_skill_exp:int;
    /** 兵种进阶消耗 */
    private var _q_bing_zhong_jin_jie:string;
    /** 觉醒消耗 */
    private var _q_jue_xing:string;
    /** 解锁兵种消耗 */
    private var _q_unlock:string;

    override public function read(_buf:ByteArray): void {
        this._q_hero_star = readInt(_buf);
        this._q_skill_exp = readInt(_buf);
        this._q_bing_zhong_jin_jie = readString(_buf);
        this._q_jue_xing = readString(_buf);
        this._q_unlock = readString(_buf);
    }

    public function get q_hero_star():int {
        return _q_hero_star;
    }
    public function get q_skill_exp():int {
        return _q_skill_exp;
    }
    public function get q_bing_zhong_jin_jie():string {
        return _q_bing_zhong_jin_jie;
    }
    public function get q_jue_xing():string {
        return _q_jue_xing;
    }
    public function get q_unlock():string {
        return _q_unlock;
    }
}
}
