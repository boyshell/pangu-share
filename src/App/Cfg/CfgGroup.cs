using System;
using System.IO;
using App.Cfg.Container;
using Util;

namespace App.Cfg
{
    /** Created by FreeMarker. DO NOT EDIT!!! */
    public class CfgGroup
    {
        public const string CODE_VERSION = "77a4592b9597108e474f886514a1d57c";
        public int DATA_VERSION { get; }

        public C_buff buff { get; }
        public C_bing_zhong bing_zhong { get; }
        public C_bing_zhong_xi bing_zhong_xi { get; }
        public C_building building { get; }
        public C_building_dian_jiang_tai building_dian_jiang_tai { get; }
        public C_building_param building_param { get; }
        public C_fight_param fight_param { get; }
        public C_skill skill { get; }
        public C_skill_level skill_level { get; }
        public C_skill_param skill_param { get; }
        public C_gambling_house gambling_house { get; }
        public C_hero hero { get; }
        public C_hero_level hero_level { get; }
        public C_hero_param hero_param { get; }
        public C_hero_star hero_star { get; }
        public C_hero_combo hero_combo { get; }
        public C_team_param team_param { get; }
        public C_team_cost team_cost { get; }
        public C_land land { get; }
        public C_land_param land_param { get; }

        private static CfgGroup instance;

        private CfgGroup(BinaryReader reader)
        {
            string ac = ByteBufUtil.ReadString(reader);
            if (!ac.Equals(CODE_VERSION))
            {
                throw new Exception("expect version " + CODE_VERSION + ", actual version " + ac);
            }
            this.DATA_VERSION = ByteBufUtil.ReadInt(reader);

            this.buff = new C_buff(reader);
            this.bing_zhong = new C_bing_zhong(reader);
            this.bing_zhong_xi = new C_bing_zhong_xi(reader);
            this.building = new C_building(reader);
            this.building_dian_jiang_tai = new C_building_dian_jiang_tai(reader);
            this.building_param = new C_building_param(reader);
            this.fight_param = new C_fight_param(reader);
            this.skill = new C_skill(reader);
            this.skill_level = new C_skill_level(reader);
            this.skill_param = new C_skill_param(reader);
            this.gambling_house = new C_gambling_house(reader);
            this.hero = new C_hero(reader);
            this.hero_level = new C_hero_level(reader);
            this.hero_param = new C_hero_param(reader);
            this.hero_star = new C_hero_star(reader);
            this.hero_combo = new C_hero_combo(reader);
            this.team_param = new C_team_param(reader);
            this.team_cost = new C_team_cost(reader);
            this.land = new C_land(reader);
            this.land_param = new C_land_param(reader);
        }

        public static CfgGroup GetInstance(BinaryReader reader)
        {
            instance = new CfgGroup(reader);
            return instance;
        }

        public static CfgGroup GetInstance()
        {
            return instance;
        }
    }
}