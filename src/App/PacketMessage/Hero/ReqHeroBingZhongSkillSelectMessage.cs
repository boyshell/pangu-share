
namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种技能选择
     */
    public class ReqHeroBingZhongSkillSelectPacketMessage : Network.PacketMessage
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 兵种 */
        public int bingZhong{ get; set; }
        /** 技能格子，0开始 */
        public int index{ get; set; }
        /** 技能ID */
        public int skillID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.bingZhong);
            WriteInt(writer, this.index);
            WriteInt(writer, this.skillID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.bingZhong = ReadInt(reader);
            this.index = ReadInt(reader);
            this.skillID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 345; }
      }
    }
}