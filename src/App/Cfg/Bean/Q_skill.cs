using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能
     */
    public class Q_skill : Util.Bean
    {
        /** 技能ID */
        public int q_id { get; }
        /** 技能名字 */
        public string q_name { get; }
        /** 研究所需 */
        public string q_research_hero { get; }
        /** 研究提升进度 */
        public int q_research_progress { get; }
        /** 可装备数量 */
        public int q_count { get; }
        /** 拆解所需技能经验 */
        public int q_chaijie_exp { get; }
        /** 1敌方	2友方	3任意	4自己	5除了自己的友军	6防御最低敌军	7谋略最低敌军 */
        public int q_target_type { get; }
        /** 目标距离 */
        public int q_target_distance { get; }
        /** 目标数量(下限) */
        public int q_target_num_min { get; }
        /** 目标数量(上限) */
        public int q_target_num_max { get; }
        /** 添加的buff */
        public string q_buffs { get; }
        /** 伤害公式 */
        public string q_damage_formula { get; }
        /** 触发概率 */
        public String q_trigger_prob { get; }
        /** 准备回合数 */
        public int q_prepare_round { get; }

        private Q_skill(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_name = ReadString(reader);
            this.q_research_hero = ReadString(reader);
            this.q_research_progress = ReadInt(reader);
            this.q_count = ReadInt(reader);
            this.q_chaijie_exp = ReadInt(reader);
            this.q_target_type = ReadInt(reader);
            this.q_target_distance = ReadInt(reader);
            this.q_target_num_min = ReadInt(reader);
            this.q_target_num_max = ReadInt(reader);
            this.q_buffs = ReadString(reader);
            this.q_damage_formula = ReadString(reader);
            this.q_trigger_prob = ReadString(reader);
            this.q_prepare_round = ReadInt(reader);
        }

        public static Q_skill[] Create(BinaryReader reader)
        {
            Q_skill[] array = new Q_skill[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_skill(reader);
            }
            return array;
        }

        public override void Read(BinaryReader reader)
        {
            throw new NotImplementedException();
        }

        public override void Write(BinaryWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
