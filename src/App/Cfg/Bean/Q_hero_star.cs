using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将星
     */
    public class Q_hero_star : Util.Bean
    {
        /** 武将星 */
        public int q_hero_star { get; }
        /** 转化可获得的技能经验 */
        public int q_skill_exp { get; }
        /** 兵种进阶消耗 */
        public string q_bing_zhong_jin_jie { get; }
        /** 觉醒消耗 */
        public string q_jue_xing { get; }
        /** 解锁兵种消耗 */
        public string q_unlock { get; }

        private Q_hero_star(BinaryReader reader)
        {
            this.q_hero_star = ReadInt(reader);
            this.q_skill_exp = ReadInt(reader);
            this.q_bing_zhong_jin_jie = ReadString(reader);
            this.q_jue_xing = ReadString(reader);
            this.q_unlock = ReadString(reader);
        }

        public static Q_hero_star[] Create(BinaryReader reader)
        {
            Q_hero_star[] array = new Q_hero_star[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_hero_star(reader);
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
