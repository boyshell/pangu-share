
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种解锁
     */
    public class ReqHeroBingZhongUnlockPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 兵种 */
        public int bingZhong{ get; set; }
        /** 裁量武将卡唯一ID */
        public System.Collections.Generic.List<int> mHeroUIDs{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.bingZhong);
            WriteInt(writer, this.mHeroUIDs.Count);
            for (int t52413035 = 0; t52413035 < this.mHeroUIDs.Count; ++t52413035)
            {
                WriteInt(writer, mHeroUIDs[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.bingZhong = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.mHeroUIDs = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.mHeroUIDs.Add(ReadInt(reader));
                }
            }
        }

      public override int Id
      {
        get { return 342; }
      }
    }
}