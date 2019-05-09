package datasets {

import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;
import datasets.container.Q_buffContainer;
import datasets.container.Q_guan_qiaContainer;
import datasets.container.Q_bing_zhongContainer;
import datasets.container.Q_bing_zhong_xiContainer;
import datasets.container.Q_guild_levelContainer;
import datasets.container.Q_buildingContainer;
import datasets.container.Q_building_dian_jiang_taiContainer;
import datasets.container.Q_building_paramContainer;
import datasets.container.Q_fight_paramContainer;
import datasets.container.Q_skillContainer;
import datasets.container.Q_skill_levelContainer;
import datasets.container.Q_skill_paramContainer;
import datasets.container.Q_gambling_houseContainer;
import datasets.container.Q_heroContainer;
import datasets.container.Q_hero_levelContainer;
import datasets.container.Q_hero_paramContainer;
import datasets.container.Q_hero_starContainer;
import datasets.container.Q_hero_comboContainer;
import datasets.container.Q_team_paramContainer;
import datasets.container.Q_team_costContainer;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class ConfigGroup {
    public static const CODE_VERSION:String = "2ee8e2ede3dd3b5b0e81e3ac440ad9d9";
    public var DATA_VERSION:int;

    public function ConfigGroup(buf:ByteArray) {
        var ac:String = ByteBufferUtil.readString(buf);
        if (ac != CODE_VERSION) {
            throw new Error("expect version " + CODE_VERSION + ", actual version " + ac);
        }
        this.DATA_VERSION = ByteBufferUtil.readInt(buf);

        Q_buffContainer.SetData(buf);
        Q_guan_qiaContainer.SetData(buf);
        Q_bing_zhongContainer.SetData(buf);
        Q_bing_zhong_xiContainer.SetData(buf);
        Q_guild_levelContainer.SetData(buf);
        Q_buildingContainer.SetData(buf);
        Q_building_dian_jiang_taiContainer.SetData(buf);
        Q_building_paramContainer.SetData(buf);
        Q_fight_paramContainer.SetData(buf);
        Q_skillContainer.SetData(buf);
        Q_skill_levelContainer.SetData(buf);
        Q_skill_paramContainer.SetData(buf);
        Q_gambling_houseContainer.SetData(buf);
        Q_heroContainer.SetData(buf);
        Q_hero_levelContainer.SetData(buf);
        Q_hero_paramContainer.SetData(buf);
        Q_hero_starContainer.SetData(buf);
        Q_hero_comboContainer.SetData(buf);
        Q_team_paramContainer.SetData(buf);
        Q_team_costContainer.SetData(buf);
    }
}
}