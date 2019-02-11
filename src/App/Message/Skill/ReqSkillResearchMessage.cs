
namespace App.Message.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 研究技能
     */
    public class ReqSkillResearchMessage : Net.Message
    {
        /** 技能ID */
        public int skillID{ get; set; }
        /** 武将唯一ID */
        public System.Collections.Generic.List<int> heroes{ get; set; } = new System.Collections.Generic.List<int>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.skillID);
            WriteInt(writer, this.heroes.Count);
            for (int t52413035 = 0; t52413035 < this.heroes.Count; ++t52413035)
            {
                WriteInt(writer, heroes[t52413035]);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skillID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.heroes = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroes.Add(ReadInt(reader));
                }
            }
        }

      public override int Id()
      {
        return 294;
      }
    }
}