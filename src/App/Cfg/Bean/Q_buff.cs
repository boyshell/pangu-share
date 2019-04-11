using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * buff
     */
    public class Q_buff : Util.Bean
    {
        /** id */
        public int q_id { get; }
        /** 名字 */
        public String q_name { get; }
        /** 类型 */
        public int q_type { get; }
        /** 参数 */
        public string q_param { get; }
        /**  */
        public string q_trigger_str { get; }

        private Q_buff(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_name = ReadString(reader);
            this.q_type = ReadInt(reader);
            this.q_param = ReadString(reader);
            this.q_trigger_str = ReadString(reader);
        }

        public static Q_buff[] Create(BinaryReader reader)
        {
            Q_buff[] array = new Q_buff[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_buff(reader);
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
