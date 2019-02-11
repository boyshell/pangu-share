
namespace App.Message.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 移除技能
     */
    public class ResSkillRemoveMessage : Net.Message
    {
        /** 技能ID */
        public int skillID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.skillID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skillID = ReadInt(reader);
        }

      public override int Id()
      {
        return 293;
      }
    }
}