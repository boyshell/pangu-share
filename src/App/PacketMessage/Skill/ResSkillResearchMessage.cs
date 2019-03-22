using App.PacketMessage.Skill;

namespace App.PacketMessage.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 研究技能
     */
    public class ResSkillResearchPacketMessage : Network.PacketMessage
    {
        /** 技能信息 */
        public BSkillProgress skill{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.skill);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skill = ReadBool(reader) ? new BSkillProgress(reader) : null;
        }

      public override int Id
      {
        get { return 295; }
      }
    }
}