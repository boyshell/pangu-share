
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将移除技能
     */
    public class ResHeroRemoveSkillPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 技能格子(1,2,3) */
        public int grid{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.grid);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.grid = ReadInt(reader);
        }

      public override int Id
      {
        get { return 315; }
      }
    }
}