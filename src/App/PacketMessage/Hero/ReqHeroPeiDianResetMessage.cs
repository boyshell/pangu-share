
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 重置武将配点
     */
    public class ReqHeroPeiDianResetPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 是否免费重置 */
        public bool free{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteBool(writer, this.free);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.free = ReadBool(reader);
        }

      public override int Id
      {
        get { return 311; }
      }
    }
}