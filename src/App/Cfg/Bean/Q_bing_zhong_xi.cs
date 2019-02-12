using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵种系
     */
    public class Q_bing_zhong_xi : Util.Bean
    {
        /** 系列ID */
        public int q_xi { get; }
        /** 2武将兵种系相同的技能 */
        public int q_skill2 { get; }
        /** 3武将兵种系相同的技能 */
        public int q_skill3 { get; }

        private Q_bing_zhong_xi(BinaryReader reader)
        {
            this.q_xi = ReadInt(reader);
            this.q_skill2 = ReadInt(reader);
            this.q_skill3 = ReadInt(reader);
        }

        public static Q_bing_zhong_xi[] Create(BinaryReader reader)
        {
            Q_bing_zhong_xi[] array = new Q_bing_zhong_xi[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_bing_zhong_xi(reader);
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
