
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将重置
     */
    public class ReqHeroResetPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
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
        get { return 317; }
      }
    }
}