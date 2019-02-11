
namespace App.Message.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 装配技能
     */
    public class ReqHeroAddSkillMessage : Net.Message
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 技能格子(1,2,3) */
        public int grid{ get; set; }
        /** 技能ID */
        public int skillID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.grid);
            WriteInt(writer, this.skillID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.grid = ReadInt(reader);
            this.skillID = ReadInt(reader);
        }

      public override int Id()
      {
        return 299;
      }
    }
}