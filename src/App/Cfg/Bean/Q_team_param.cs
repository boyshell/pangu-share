using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍参数
     */
    public class Q_team_param : Util.Bean
    {
        /** 参数ID */
        public int q_id { get; }
        /** 参数值 */
        public string q_value { get; }

        private Q_team_param(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_value = ReadString(reader);
        }

        public static Q_team_param[] Create(BinaryReader reader)
        {
            Q_team_param[] array = new Q_team_param[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_team_param(reader);
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
