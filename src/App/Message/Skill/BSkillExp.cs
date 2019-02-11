using Util;

namespace App.Message.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能经验
     */
    public class BSkillExp : Bean {

        public BSkillExp() {}
        public BSkillExp(System.IO.BinaryReader reader) => Read(reader);

        /** 技能经验 */
        public int exp{ get; set; }
        /** 是否暴击 */
        public bool crit{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.exp);
            WriteBool(writer, this.crit);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.exp = ReadInt(reader);
            this.crit = ReadBool(reader);
        }
    }
}