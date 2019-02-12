using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 面板配置
     */
    public class Q_uiform : Util.Bean
    {
        /** 界面编号 */
        public int q_id { get; }
        /** 资源名字 */
        public string q_assetname { get; }
        /** 界面组名称 */
        public string q_uigroupname { get; }
        /** 是否允许多个界面实例 */
        public bool q_allowmul { get; }
        /** 是否暂停被其覆盖的界面 */
        public bool q_pause_covereduifrom { get; }

        private Q_uiform(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_assetname = ReadString(reader);
            this.q_uigroupname = ReadString(reader);
            this.q_allowmul = ReadBool(reader);
            this.q_pause_covereduifrom = ReadBool(reader);
        }

        public static Q_uiform[] Create(BinaryReader reader)
        {
            Q_uiform[] array = new Q_uiform[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_uiform(reader);
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
