
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将转化
     */
    public class ReqHeroZhuanHuaPacketMessage : Network.PacketMessage
    {
        /** 是否双倍转化 */
        public bool doubleZhuanHua{ get; set; }
        /** 武将唯一ID */
        public System.Collections.Generic.List<int> heroUIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBool(writer, this.doubleZhuanHua);
            WriteInt(writer, this.heroUIDs.Count);
            for (int t52413035 = 0; t52413035 < this.heroUIDs.Count; ++t52413035)
            {
                WriteInt(writer, heroUIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.doubleZhuanHua = ReadBool(reader);
            {
                int size52413035 = ReadInt(reader);
                this.heroUIDs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroUIDs.Add(ReadInt(reader));
                }
            }
        }

      public override int Id
      {
        get { return 305; }
      }
    }
}