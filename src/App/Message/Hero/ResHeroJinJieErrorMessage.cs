
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将进阶错误
   */
  public class ResHeroJinJieErrorMessage : Net.Message
  {
    /** 1:找不到武将卡;2:星上限;3:找不到材料武将卡;4:材料武将卡不自由;5:武将卡不一致; */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id()
    {
      return 304;
    }
  }
}