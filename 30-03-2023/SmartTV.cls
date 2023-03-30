public class SmartTV {
    
    private String brand;
    private String model;
    private Decimal screenSize;
    private Boolean isSmart;
    private Integer yearReleased;
    private List<String> appList = new List<String>();
    
    public String getBrand() {
        return brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }
    
    public String getModel() {
        return model;
    }
    
    public void setModel(String model) {
        this.model = model;
    }
    
    public Decimal getScreenSize() {
        return screenSize;
    }
    
    public void setScreenSize(Decimal screenSize) {
        this.screenSize = screenSize;
    }
    
    public Boolean getIsSmart() {
        return isSmart;
    }
    
    public void setIsSmart(Boolean isSmart) {
        this.isSmart = isSmart;
    }
    
    public Integer getYearReleased() {
        return yearReleased;
    }
    
    public void setYearReleased(Integer yearReleased) {
        this.yearReleased = yearReleased;
    }
    
    public List<String> getAppList() {
        return appList;
    }
    
    public void setAppList(List<String> appList) {
        this.appList = appList;
    }
    
    public SmartTV(){}
    
    public SmartTV(String brand, String model, Decimal screenSize, Boolean isSmart, Integer yearReleased) {
        this.brand = brand;
        this.model = model;
        this.screenSize = screenSize;
        this.isSmart = isSmart;
        this.yearReleased = yearReleased;
    }
    
    public SmartTV(String brand, String model, Decimal screenSize, Boolean isSmart, Integer yearReleased, List<String> appList) {
        this.brand = brand;
        this.model = model;
        this.screenSize = screenSize;
        this.isSmart = isSmart;
        this.yearReleased = yearReleased;
        this.appList = appList;
    }
    
    public void displayInfo() {
        System.debug('Brand: ' + brand);
        System.debug('Model: ' + model);
        System.debug('Screen Size: ' + screenSize + ' inches');
        System.debug('Smart TV: ' + (isSmart ? 'Yes' : 'No'));
        System.debug('Year Released: ' + yearReleased);
        if(isSmart == true){
          displayApps();  
        }
        
    }
    
    public void displayApps(){
        System.debug('Lista de apps presentes na tv:');
        For(String app: appList){
            System.debug('- ' + app);
        }
    }
    
}