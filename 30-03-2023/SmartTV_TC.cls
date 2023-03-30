@isTest
public class SmartTV_TC {
    
    @isTest
    public static void SmartTest(){
        SmartTV tv = new SmartTV();
        
        tv.setBrand('Samsung');
        tv.setModel('QLED');
        tv.setScreenSize(65);
        tv.setIsSmart(true);
        tv.setYearReleased(2021);
        List<String> appList = new List<String>{'Netflix', 'Prime Video', 'YouTube'};
        tv.setAppList(appList);
        
        SmartTV tv2 = new SmartTV('LG','A230',52,true,2023,appList);
        SmartTV tv3 = new SmartTV('LG','A230',52,true,2023);
        
        System.assertEquals('Samsung', tv.getBrand());
        System.assertEquals('QLED', tv.getModel());
        System.assertEquals(65, tv.getScreenSize());
        System.assertEquals(true, tv.getIsSmart());
        System.assertEquals(2021, tv.getYearReleased());
        System.assertEquals(appList, tv.getAppList());
        
        tv.displayInfo();
    }
}