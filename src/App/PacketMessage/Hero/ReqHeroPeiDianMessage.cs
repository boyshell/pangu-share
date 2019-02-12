using App.PacketMessage.Util;

namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将配点
     */
    public class ReqHeroPeiDianPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 配点 */
        public System.Collections.Generic.List<BAttribute> peiDian{ get; set; } = new System.Collections.Generic.List<BAttribute>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.peiDian.Count);
            for (int t52413035 = 0; t52413035 < this.peiDian.Count; ++t52413035)
            {
                peiDian[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.peiDian = new System.Collections.Generic.List<BAttribute>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.peiDian.Add(new BAttribute(reader));
                }
            }
        }

      public override int Id
      {
        get { return 320; }
      }
    }
}