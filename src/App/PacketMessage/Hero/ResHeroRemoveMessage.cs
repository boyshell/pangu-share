
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 移除武将卡
     */
    public class ResHeroRemovePacketMessage : Network.PacketMessage
    {
        /** 武将卡唯一ID */
        public int heroUID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 297; }
      }
    }
}