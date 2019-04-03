using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵及维护资源消耗
     */
    public class Q_team_cost : Util.Bean
    {
        /** 国家(1魏2蜀3吴4汉5群) */
        public int q_country { get; }
        /** 星级 */
        public int q_star { get; }
        /** 兵种(1弓2步3骑) */
        public int q_bingzhong { get; }
        /** 征兵消耗(单个兵) */
        public string q_zheng_bing_cost { get; }
        /** 维护消耗(粮100个兵每小时) */
        public int q_wei_hu_liang { get; }

        private Q_team_cost(BinaryReader reader)
        {
            this.q_country = ReadInt(reader);
            this.q_star = ReadInt(reader);
            this.q_bingzhong = ReadInt(reader);
            this.q_zheng_bing_cost = ReadString(reader);
            this.q_wei_hu_liang = ReadInt(reader);
        }

        public static Q_team_cost[] Create(BinaryReader reader)
        {
            Q_team_cost[] array = new Q_team_cost[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_team_cost(reader);
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
