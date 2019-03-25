using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种
     */
    public class Q_bing_zhong : Util.Bean
    {
        /** 兵种 */
        public int q_bing_zhong { get; }
        /** 兵种图标 */
        public string q_icon { get; }
        /** 兵种系列(兵种加成) */
        public int q_same_xi { get; }
        /** 兵种系列(技能学习) */
        public string q_skill_xi { get; }
        /** 可选技能列表(可为空) */
        public string q_skills { get; }
        /** 默认技能列表(可为空) */
        public string q_skills_default { get; }

        private Q_bing_zhong(BinaryReader reader)
        {
            this.q_bing_zhong = ReadInt(reader);
            this.q_icon = ReadString(reader);
            this.q_same_xi = ReadInt(reader);
            this.q_skill_xi = ReadString(reader);
            this.q_skills = ReadString(reader);
            this.q_skills_default = ReadString(reader);
        }

        public static Q_bing_zhong[] Create(BinaryReader reader)
        {
            Q_bing_zhong[] array = new Q_bing_zhong[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_bing_zhong(reader);
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
