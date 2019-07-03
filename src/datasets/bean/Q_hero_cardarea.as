package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 卡片显示区域配置
 */
public class Q_hero_cardarea extends Bean {
    /** 卡片id */
    private var _q_id:int;
    /** 卡区域(244*336) */
    private var _q_s1_x:int;
    /** 卡区域(244*336) */
    private var _q_s1_y:int;
    /** 卡区域(270*160) */
    private var _q_s2_x:int;
    /** 卡区域(270*160) */
    private var _q_s2_y:int;
    /** 114*114 */
    private var _q_s3_x:int;
    /** 114*114 */
    private var _q_s3_y:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_s1_x = readInt(_buf);
        this._q_s1_y = readInt(_buf);
        this._q_s2_x = readInt(_buf);
        this._q_s2_y = readInt(_buf);
        this._q_s3_x = readInt(_buf);
        this._q_s3_y = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_s1_x():int {
        return _q_s1_x;
    }
    public function get q_s1_y():int {
        return _q_s1_y;
    }
    public function get q_s2_x():int {
        return _q_s2_x;
    }
    public function get q_s2_y():int {
        return _q_s2_y;
    }
    public function get q_s3_x():int {
        return _q_s3_x;
    }
    public function get q_s3_y():int {
        return _q_s3_y;
    }
}
}
