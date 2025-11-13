public class TemperatureConverter
{
    public static Decimal FaherenhietToCelcius(decimal temp)
    {
        decimal new_temp = (temp-32)*5/9;
        return new_temp.setScale(2);
    }
}