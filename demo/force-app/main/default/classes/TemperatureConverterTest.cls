@isTest
private class TemperatureConverterTest
{
    @isTest
    static void testFreezingPoint()
    {
        Decimal celsius = TemperatureConverter.FaherenhietToCelcius(32);
        System.Assert.areEqual(0, celsius, '32F should be 0C');
    }
}