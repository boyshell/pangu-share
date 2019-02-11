package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将
 */
public class Q_hero extends Bean {
    /** 武将ID */
    private var _q_id:int;
    /** 武将队伍ID */
    private var _q_team_id:int;
    /** 武将名字 */
    private var _q_name:String;
    /** 星 */
    private var _q_star:int;
    /** 国家(1魏2蜀3吴4汉5群) */
    private var _q_country:int;
    /** 默认兵种(1弓2步3骑) */
    private var _q_bingzhong_default:int;
    /** 可进阶兵种列表(1弓2步3骑) */
    private var _q_bingzhong_jinjie:String;
    /** 统帅 */
    private var _q_cost:int;
    /** 性别(1男2女) */
    private var _q_gender:int;
    /** 攻击距离 */
    private var _q_distance:int;
    /** 攻击 */
    private var _q_gongji:int;
    /** 防御 */
    private var _q_fangyu:int;
    /** 谋略 */
    private var _q_moulve:int;
    /** 攻城 */
    private var _q_gongcheng:int;
    /** 速度 */
    private var _q_sudu:int;
    /** 默认技能 */
    private var _q_skill:int;
    /** 拆解技能 */
    private var _q_chaijie_skill:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_team_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_star = readInt(_buf);
        this._q_country = readInt(_buf);
        this._q_bingzhong_default = readInt(_buf);
        this._q_bingzhong_jinjie = readString(_buf);
        this._q_cost = readInt(_buf);
        this._q_gender = readInt(_buf);
        this._q_distance = readInt(_buf);
        this._q_gongji = readInt(_buf);
        this._q_fangyu = readInt(_buf);
        this._q_moulve = readInt(_buf);
        this._q_gongcheng = readInt(_buf);
        this._q_sudu = readInt(_buf);
        this._q_skill = readInt(_buf);
        this._q_chaijie_skill = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_team_id():int {
        return _q_team_id;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_star():int {
        return _q_star;
    }
    public function get q_country():int {
        return _q_country;
    }
    public function get q_bingzhong_default():int {
        return _q_bingzhong_default;
    }
    public function get q_bingzhong_jinjie():String {
        return _q_bingzhong_jinjie;
    }
    public function get q_cost():int {
        return _q_cost;
    }
    public function get q_gender():int {
        return _q_gender;
    }
    public function get q_distance():int {
        return _q_distance;
    }
    public function get q_gongji():int {
        return _q_gongji;
    }
    public function get q_fangyu():int {
        return _q_fangyu;
    }
    public function get q_moulve():int {
        return _q_moulve;
    }
    public function get q_gongcheng():int {
        return _q_gongcheng;
    }
    public function get q_sudu():int {
        return _q_sudu;
    }
    public function get q_skill():int {
        return _q_skill;
    }
    public function get q_chaijie_skill():int {
        return _q_chaijie_skill;
    }
}
}
