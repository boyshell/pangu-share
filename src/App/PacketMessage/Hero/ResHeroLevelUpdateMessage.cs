
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将等级or经验变更
     */
    public class ResHeroLevelUpdatePacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 等级 */
        public int level{ get; set; }
        /** 经验 */
        public int exp{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.level);
            WriteInt(writer, this.exp);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.level = ReadInt(reader);
            this.exp = ReadInt(reader);
        }

      public override int Id
      {
        get { return 377; }
      }
    }
}