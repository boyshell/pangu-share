using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 领地
     */
    public class Q_land : Util.Bean
    {
        /** 产品类型,对应ValueType */
        public int q_production_type { get; }
        /** 产量 */
        public string q_production { get; }
        /** 屯田产量 */
        public string q_tun_tian { get; }
        /** 练兵经验 */
        public string q_lian_bing { get; }

        private Q_land(BinaryReader reader)
        {
            this.q_production_type = ReadInt(reader);
            this.q_production = ReadString(reader);
            this.q_tun_tian = ReadString(reader);
            this.q_lian_bing = ReadString(reader);
        }

        public static Q_land[] Create(BinaryReader reader)
        {
            Q_land[] array = new Q_land[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_land(reader);
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
