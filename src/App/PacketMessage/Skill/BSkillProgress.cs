using Util;

namespace App.PacketMessage.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能进度
     */
    public class BSkillProgress : Bean {

        public BSkillProgress() {}
        public BSkillProgress(System.IO.BinaryReader reader) => Read(reader);

        /** 技能ID */
        public int skillID{ get; set; }
        /** 研究进度(百分比) */
        public int progress{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.skillID);
            WriteInt(writer, this.progress);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skillID = ReadInt(reader);
            this.progress = ReadInt(reader);
        }
    }
}