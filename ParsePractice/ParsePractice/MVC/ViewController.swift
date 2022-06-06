import UIKit

import SnapKit

class ViewController: UIViewController {
    
    private var controller: ContollerParse?

    private lazy var firstBackground: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "RectanglemainBG")
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        return image
    }()
    
    private lazy var parentOfSquare: UIView = {
        let view = UIView()
        view.tintColor = .white
        return view
    }()
    
    private lazy var leftTopSquare: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.fill")
        return image
    }()
    
    private lazy var rightTopSquare: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.fill")
        return image
    }()
    
    private lazy var leftBottomSquare: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.fill")
        return image
    }()
    
    private lazy var rightBottomSquare: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.fill")
        return image
    }()
    
    private lazy var cityTitle: UILabel = {
        let label = UILabel()
        label.text = "London, UK"
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.heavy)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var parentDotes: UIView = {
        let view = UIView()
        view.tintColor = .white
        return view
    }()
    
    private lazy var topDot: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "circle.fill")
        return image
    }()
    
    private lazy var middelDot: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "circle.fill")
        return image
    }()
    
    private lazy var bottomDot: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "circle.fill")
        return image
    }()
    
    private lazy var changeButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Change", for: .normal)
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.3)
        button.layer.cornerRadius = 11
        button.layer.masksToBounds = true
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 13)
        button.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
        button.tintColor = .white
        button.semanticContentAttribute = .forceRightToLeft

        return button
    }()
    
    private lazy var tempratureIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "circle")
        image.tintColor = .white
        return image
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "15"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = .white
        return label
    }()
    
    private lazy var tempDescription: UILabel = {
        let label = UILabel()
        label.text = "Cloudy"
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        
        let today = Date()
        let weekday = Calendar.current.component(.weekday, from: today)
        let month = Calendar.current.component(.month, from: today)
        let date = Calendar.current.component(.day, from: today)

        let weekend = Calendar.current.weekdaySymbols[weekday-1].capitalized
        let monthTitle = Calendar.current.shortMonthSymbols[month-1].capitalized
        
        label.text = "\(weekend) \(date) \(monthTitle)"
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var windIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "wind")
        image.tintColor = .white
        return image
    }()
    
    private lazy var windLabel: UILabel = {
        let label = UILabel()
        label.text = "14 mph"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .white
        return label
    }()
    
    private lazy var humIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "drop")
        image.tintColor = .white
        return image
    }()
    
    private lazy var humLabel: UILabel = {
        let label = UILabel()
        label.text = "56% Humidity"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var umbrellaIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "umbrella")
        image.tintColor = .white
        return image
    }()
    
    private lazy var umbrellaLabel: UILabel = {
        let label = UILabel()
        label.text = "1 mm Rainfall"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var todayLabel: UILabel = {
        let label = UILabel()
        label.text = "Today"
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = UIColor(red: 102/255, green: 104/255, blue: 150/255, alpha: 1)
        return label
    }()
    
    private lazy var secondBG: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "RectangleSecondBG")
        return image
    }()
    
    private lazy var leftCloud: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "sunrise")
        image.tintColor = .white
        return image
    }()
    
    private lazy var middelCloud: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "sun.max")
        image.tintColor = .white
        return image
    }()
    
    private lazy var trallingCloud: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "moon.stars")
        image.tintColor = .white
        return image
    }()
    
    private lazy var tempUnderLeftCloud: UILabel = {
        let label = UILabel()
        label.text = "15°"
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var tempUnderMiddleCloud: UILabel = {
        let label = UILabel()
        label.text = "15°"
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var tempUnderRightCloud: UILabel = {
        let label = UILabel()
        label.text = "15°"
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var windLeftLabel: UILabel = {
        let label = UILabel()
        
        let today = Date()
        let hour = Calendar.current.component(.hour, from: today)
        let minute = Calendar.current.component(.minute, from: today)
        
        label.text = "\(hour):\(minute)"
        label.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.medium)
        label.layer.opacity = 0.6
        label.textColor = .white
        return label
    }()
    
    private lazy var windMiddelLabel: UILabel = {
        let label = UILabel()
        
        let today = Date()
        let hour = Calendar.current.component(.hour, from: today)
        let minute = Calendar.current.component(.minute, from: today)
        
        label.text = "\(hour):\(minute)"
        label.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.medium)
        label.layer.opacity = 0.6
        label.textColor = .white
        return label
    }()
    
    private lazy var windRightLabel: UILabel = {
        let label = UILabel()
        
        let today = Date()
        let hour = Calendar.current.component(.hour, from: today)
        let minute = Calendar.current.component(.minute, from: today)
        
        label.text = "\(hour):\(minute)"
        label.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.medium)
        label.layer.opacity = 0.6
        label.textColor = .white
        return label
    }()
    
    private lazy var showWeekButton: UIButton = {
        let button = UIButton()
        button.setTitle("7 Days           ", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        button.setTitleColor(UIColor.systemGray, for: .normal)
        button.backgroundColor = UIColor(red: 238/255, green: 244/255, blue: 248/255, alpha: 1)
        button.layer.cornerRadius = 14
        button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        button.tintColor = UIColor.systemGray
        button.semanticContentAttribute = .forceRightToLeft

        return button
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller = ContollerParse(view: self)
        controller?.startParse()
        firstBackground.isHidden = false
        
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {

            self.firstBackground.isHidden = false
            
            let main = self.controller?.getFromModel().first
            let forecasts = main?.forecasts
            let facts = main?.fact
            
            let totalSpeendWind = forecasts?.first?.parts.day.wind_speed
            self.windLabel.text = "\(totalSpeendWind ?? 0) km/h"
            
            let mainTemp = forecasts?.first?.parts.day.temp_avg
            self.temperatureLabel.text = "\(mainTemp ?? 0)"
            
            self.tempDescription.text = "\(facts?.condition.capitalized ?? "none")"
            
            let morningTemp = forecasts?.first?.parts.morning
            self.tempUnderLeftCloud.text = "\(morningTemp?.temp_avg ?? 0)"
            self.windLeftLabel.text = "\(morningTemp?.wind_speed ?? 0) km/h"
            
            let dayTemp = forecasts?.first?.parts.day
            self.tempUnderMiddleCloud.text = "\(dayTemp?.temp_avg ?? 0)"
            self.windMiddelLabel.text = "\(dayTemp?.wind_speed ?? 0) km/h"
            
            let night = forecasts?.first?.parts.night
            
            self.tempUnderRightCloud.text = "\(night?.temp_avg ?? 0)"
            self.windRightLabel.text = "\(night?.wind_speed ?? 0) km/h"
            
            let city = main?.info
            self.cityTitle.text = "\(city?.tzinfo.name ?? "None")"
            
            let hummidity = main?.fact.humidity
            self.humLabel.text = "\(hummidity ?? 0)%"
            
            let rain = main?.forecasts.first?.parts.day.condition
            
            if rain ?? "none" == "clear"{
                self.umbrellaIcon.image = UIImage(systemName: "sun.min")
            }else if rain ?? "none" == "cloudy"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.sun")
            }else if rain ?? "none" == "overcast"{
                self.umbrellaIcon.image = UIImage(systemName: "smoke")
            }else if rain ?? "none" == "light-rain"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.drizzle")
            }else if rain ?? "none" == "rain"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.heavyrain")
            }else if rain ?? "none" == "wet-snow"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.sleet")
            }else if rain ?? "none" == "snow"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.snow")
            }else if rain ?? "none" == "thunderstorm"{
                self.umbrellaIcon.image = UIImage(systemName: "cloud.bolt")
            }
            self.umbrellaLabel.text = "\(rain?.capitalized ?? "none")"
   
        }
        
        
        view.addSubview(firstBackground)
        
        firstBackground.snp.makeConstraints { make in
            make.leading.equalTo(15)
            make.trailing.equalTo(-15)
            make.top.equalTo(40)
            make.bottom.equalTo(-290)
        }
        
        firstBackground.addSubview(parentOfSquare)
        
        parentOfSquare.snp.makeConstraints { make in
            make.leading.equalTo(25)
            make.top.equalTo(30)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        parentOfSquare.addSubview(leftTopSquare)
        
        leftTopSquare.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
        
        parentOfSquare.addSubview(rightTopSquare)
        
        rightTopSquare.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
        
        parentOfSquare.addSubview(leftBottomSquare)
        
        leftBottomSquare.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(leftTopSquare.snp.bottom)
            make.width.equalTo(15)
            make.height.equalTo(15)
        }
        
        parentOfSquare.addSubview(rightBottomSquare)
        
        rightBottomSquare.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.top.equalTo(rightTopSquare.snp.bottom)
            make.leading.equalTo(leftBottomSquare.snp.trailing)
            make.bottom.equalToSuperview()
        }
        
        firstBackground.addSubview(cityTitle)
        
        cityTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(parentOfSquare)
        }
        
        firstBackground.addSubview(parentDotes)
        
        parentDotes.snp.makeConstraints { make in
            make.trailing.equalTo(-25)
            make.centerY.equalTo(cityTitle)
            make.height.equalTo(30)
            make.width.equalTo(10)
        }
        
        parentDotes.addSubview(topDot)
        
        topDot.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(10)
        }
        
        parentDotes.addSubview(middelDot)
        
        middelDot.snp.makeConstraints { make in
            make.top.equalTo(topDot.snp.bottom)
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(10)
        }
        
        parentDotes.addSubview(bottomDot)
        
        bottomDot.snp.makeConstraints { make in
            make.top.equalTo(middelDot.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        
        firstBackground.addSubview(changeButton)
        
        changeButton.snp.makeConstraints { make in
            make.top.equalTo(cityTitle.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(80)
        }
        
        firstBackground.addSubview(tempratureIcon)
        
        tempratureIcon.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-15)
            make.centerX.equalToSuperview().offset(35)
        }
        
        firstBackground.addSubview(temperatureLabel)
        
        temperatureLabel.snp.makeConstraints { make in
            make.top.equalTo(tempratureIcon.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        firstBackground.addSubview(tempDescription)
        
        tempDescription.snp.makeConstraints { make in
            make.top.equalTo(temperatureLabel.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        firstBackground.addSubview(dateLabel)
        
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(tempDescription.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        
        firstBackground.addSubview(windIcon)
        
        windIcon.snp.makeConstraints { make in
            make.leading.equalTo(55)
            make.height.equalTo(30)
            make.width.equalTo(35)
            make.top.equalTo(dateLabel.snp.bottom).offset(35)
        }
        
        firstBackground.addSubview(windLabel)
        
        windLabel.snp.makeConstraints { make in
            make.top.equalTo(windIcon.snp.bottom).offset(5)
            make.centerX.equalTo(windIcon)
        }
        
        firstBackground.addSubview(humIcon)
        
        humIcon.snp.makeConstraints { make in
            make.centerY.equalTo(windIcon)
            make.height.equalTo(30)
            make.width.equalTo(20)
            make.centerX.equalToSuperview()
        }
        
        firstBackground.addSubview(humLabel)
        
        humLabel.snp.makeConstraints { make in
            make.top.equalTo(humIcon.snp.bottom).offset(5)
            make.centerX.equalTo(humIcon)
        }
        
        firstBackground.addSubview(umbrellaIcon)
        
        umbrellaIcon.snp.makeConstraints { make in
            make.centerY.equalTo(windIcon)
            make.height.equalTo(30)
            make.width.equalTo(35)
            make.trailing.equalTo(-55)
            }
        
        firstBackground.addSubview(umbrellaLabel)
        
        umbrellaLabel.snp.makeConstraints { make in
            make.top.equalTo(umbrellaIcon.snp.bottom).offset(5)
            make.centerX.equalTo(umbrellaIcon)
        }
        
        view.addSubview(todayLabel)
        
        todayLabel.snp.makeConstraints { make in
            make.leading.equalTo(45)
            make.top.equalTo(firstBackground.snp.bottom).offset(10)
        }
        
        view.addSubview(secondBG)
        
        secondBG.snp.makeConstraints { make in
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.top.equalTo(todayLabel.snp.bottom)
            make.height.equalTo(150)
        }
        
        
        secondBG.addSubview(leftCloud)
        
        leftCloud.snp.makeConstraints { make in
            make.leading.equalTo(45)
            make.height.equalTo(40)
            make.width.equalTo(45)
            make.top.equalTo(20)
        }
        
        secondBG.addSubview(middelCloud)
        
        middelCloud.snp.makeConstraints { make in
            make.centerY.equalTo(leftCloud)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(45)
        }
        
        secondBG.addSubview(trallingCloud)
        
        trallingCloud.snp.makeConstraints { make in
            make.trailing.equalTo(-45)
            make.centerY.equalTo(middelCloud)
            make.height.equalTo(40)
            make.width.equalTo(45)
        }
        
        secondBG.addSubview(tempUnderLeftCloud)
        
        tempUnderLeftCloud.snp.makeConstraints { make in
            make.top.equalTo(leftCloud.snp.bottom)
            make.centerX.equalTo(leftCloud)
        }
        
        secondBG.addSubview(tempUnderMiddleCloud)
        
        tempUnderMiddleCloud.snp.makeConstraints { make in
            make.centerX.equalTo(middelCloud)
            make.top.equalTo(middelCloud.snp.bottom)
        }
        
        secondBG.addSubview(tempUnderRightCloud)
        
        tempUnderRightCloud.snp.makeConstraints { make in
            make.centerX.equalTo(trallingCloud)
            make.top.equalTo(trallingCloud.snp.bottom)
        }
        
        secondBG.addSubview(windLeftLabel)
        
        windLeftLabel.snp.makeConstraints { make in
            make.centerX.equalTo(tempUnderLeftCloud)
            make.top.equalTo(tempUnderLeftCloud.snp.bottom).offset(5)
        }
        
        secondBG.addSubview(windMiddelLabel)
        
        windMiddelLabel.snp.makeConstraints { make in
            make.centerX.equalTo(tempUnderMiddleCloud)
            make.top.equalTo(tempUnderMiddleCloud.snp.bottom).offset(5)
        }
        
        secondBG.addSubview(windRightLabel)
        
        windRightLabel.snp.makeConstraints { make in
            make.centerX.equalTo(tempUnderRightCloud)
            make.top.equalTo(tempUnderRightCloud.snp.bottom).offset(5)
        }
        
        view.addSubview(showWeekButton)
        
        showWeekButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(140)
            make.height.equalTo(30)
            make.bottom.equalTo(-70)
        }
    }
}
