
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将觉醒
     */
    public class ReqHeroJueXingPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 材料武将ID */
        public System.Collections.Generic.List<int> materialHeroIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.materialHeroIDs.Count);
            for (int t52413035 = 0; t52413035 < this.materialHeroIDs.Count; ++t52413035)
            {
                WriteInt(writer, materialHeroIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.materialHeroIDs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.materialHeroIDs.Add(ReadInt(reader));
                }
            }
        }

      public override int Id
      {
        get { return 351; }
      }
    }
}