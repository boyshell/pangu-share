using App.PacketMessage.Hero;

namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 添加武将卡
     */
    public class ResHeroAddPacketMessage : Network.PacketMessage
    {
        /** 武将信息信息 */
        public BHero hero{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.hero);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.hero = ReadBool(reader) ? new BHero(reader) : null;
        }

      public override int Id
      {
        get { return 298; }
      }
    }
}