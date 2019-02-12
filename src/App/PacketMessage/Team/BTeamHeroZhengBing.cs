using Util;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵信息
     */
    public class BTeamHeroZhengBing : Bean {

        public BTeamHeroZhengBing() {}
        public BTeamHeroZhengBing(System.IO.BinaryReader reader) => Read(reader);

        /** 目标兵力 */
        public int dstBingLi{ get; set; }
        /** 征兵开始时间 */
        public int stime{ get; set; }
        /** 征兵到期时间 */
        public int etime{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.dstBingLi);
            WriteInt(writer, this.stime);
            WriteInt(writer, this.etime);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.dstBingLi = ReadInt(reader);
            this.stime = ReadInt(reader);
            this.etime = ReadInt(reader);
        }
    }
}