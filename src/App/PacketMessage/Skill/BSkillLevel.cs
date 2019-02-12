using Util;

namespace App.PacketMessage.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能等级
     */
    public class BSkillLevel : Bean {

        public BSkillLevel() {}
        public BSkillLevel(System.IO.BinaryReader reader) => Read(reader);

        /** 技能格子(1,2,3) */
        public int grid{ get; set; }
        /** 技能ID */
        public int skillID{ get; set; }
        /** 技能等级 */
        public int level{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.grid);
            WriteInt(writer, this.skillID);
            WriteInt(writer, this.level);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.grid = ReadInt(reader);
            this.skillID = ReadInt(reader);
            this.level = ReadInt(reader);
        }
    }
}