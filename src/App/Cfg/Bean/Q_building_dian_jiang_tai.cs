using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 点将台
     */
    public class Q_building_dian_jiang_tai : Util.Bean
    {
        /** 等级 */
        public int q_level { get; }
        /** 该国家武将卡征兵时间减少 */
        public int q_country_zheng_bing_time_reduce { get; }

        private Q_building_dian_jiang_tai(BinaryReader reader)
        {
            this.q_level = ReadInt(reader);
            this.q_country_zheng_bing_time_reduce = ReadInt(reader);
        }

        public static Q_building_dian_jiang_tai[] Create(BinaryReader reader)
        {
            Q_building_dian_jiang_tai[] array = new Q_building_dian_jiang_tai[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_building_dian_jiang_tai(reader);
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
