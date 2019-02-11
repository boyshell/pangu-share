
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 重置武将配点错误
   */
  public class ResHeroPeiDianResetErrorMessage : Net.Message
  {
    /** 1:找不到英雄;2:不需要重置;3:数据同步异常;4:没钱; */
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
      return 313;
    }
  }
}