using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑
     */
    public class Q_building : Util.Bean
    {
        /** 建筑ID */
        public int q_id { get; }
        /** 建筑等级 */
        public int q_level { get; }
        /** 建筑类型 */
        public int q_type { get; }
        /** 建筑参数 */
        public string q_param { get; }
        /** 升级所需时间(秒) */
        public int q_upgrade_time { get; }
        /** 升级消耗资源 */
        public int q_upgrade_cost { get; }

        private Q_building(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_level = ReadInt(reader);
            this.q_type = ReadInt(reader);
            this.q_param = ReadString(reader);
            this.q_upgrade_time = ReadInt(reader);
            this.q_upgrade_cost = ReadInt(reader);
        }

        public static Q_building[] Create(BinaryReader reader)
        {
            Q_building[] array = new Q_building[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_building(reader);
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
