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
        /** 描述 */
        public string q_desc { get; }
        /** 技能图标 */
        public int q_icon { get; }
        /** 所属大类(0攻击   1谋略  2恢复   3辅助) */
        public int q_tab { get; }
        /** 研究所需 */
        public string q_research_hero { get; }
        /** 研究提升进度 */
        public int q_research_progress { get; }
        /** 可装备数量 */
        public int q_count { get; }
        /** 拆解所需技能经验 */
        public int q_chaijie_exp { get; }
        /** 技能目标描述 */
        public string q_target_type_desc { get; }
        /** 准备回合数 */
        public int q_prepare_round { get; }

        private Q_skill(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_name = ReadString(reader);
            this.q_desc = ReadString(reader);
            this.q_icon = ReadInt(reader);
            this.q_tab = ReadInt(reader);
            this.q_research_hero = ReadString(reader);
            this.q_research_progress = ReadInt(reader);
            this.q_count = ReadInt(reader);
            this.q_chaijie_exp = ReadInt(reader);
            this.q_target_type_desc = ReadString(reader);
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
