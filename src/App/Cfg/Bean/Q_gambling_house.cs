using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募卡包
     */
    public class Q_gambling_house : Util.Bean
    {
        /** 卡包ID */
        public int q_id { get; }
        /** 名字(有美术资源就可以干掉这个) */
        public string q_name { get; }
        /** 背景图 */
        public int q_bg { get; }
        /** 图标 */
        public string q_icon { get; }
        /** 卡包类型 */
        public int q_type { get; }
        /** 卡包参数 */
        public string q_param { get; }
        /** 价格类型(对应值类型) */
        public int q_price_type { get; }
        /** 招募价格[[次数,价格][次数,价格]…] */
        public string q_price { get; }
        /** 是否允许自定义次数 */
        public bool q_free_times { get; }
        /** 是否固定显示 */
        public bool q_static { get; }
        /** 星级权重[[星,权重][星,权重]…] */
        public string q_star_weight { get; }

        private Q_gambling_house(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_name = ReadString(reader);
            this.q_bg = ReadInt(reader);
            this.q_icon = ReadString(reader);
            this.q_type = ReadInt(reader);
            this.q_param = ReadString(reader);
            this.q_price_type = ReadInt(reader);
            this.q_price = ReadString(reader);
            this.q_free_times = ReadBool(reader);
            this.q_static = ReadBool(reader);
            this.q_star_weight = ReadString(reader);
        }

        public static Q_gambling_house[] Create(BinaryReader reader)
        {
            Q_gambling_house[] array = new Q_gambling_house[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_gambling_house(reader);
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
