//
//  ViewController.swift
//  MenloCalendar
//
//  Created by Ben Siminoff on 8/18/16.
//  Copyright © 2016 Ben Siminoff. All rights reserved.
//

import UIKit
import CalendarView
import SwiftMoment
// class ViewController is a subclass of UIViewController and inherits the interface CalenderViewDelegate's methods
class ViewController: UIViewController, CalendarViewDelegate {
    @IBOutlet weak var monthLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // CalenderView has a constructor that takes in a frame which is a CGRectMake object
        // the first parameter of this CGRectMake constructor is the x position and the second value
        // is the y position. The third value is the width and the fourth value is the hight
        // CGRectGetWidth() finds the width of the view.frame. View.frame is your screen size
        let calendar = CalendarView(frame: CGRectMake(0,0,CGRectGetWidth(view.frame), 320))
        // set the CalendarView's delegate to be the ViewController. It is now "hooked up" to CalendarView responsive methods so if the user selects a date the calendarDidSelectDate method would fire and this CalendarView would be respond accordingly below
        calendar.delegate = self
        // view.addSubView adds the calendar to the screen with the above constraints
        view.addSubview(calendar)
        // NSDate() empty constructor will get you the current date
        let date: NSDate = NSDate()
        // select the date using SwiftMoment api which came with this library
        calendar.selectDate(moment(date))
        
    }
    
    func calendarDidSelectDate(date: Moment) {
        // do something if a date is selected using the CalendarView that set its delegate as this view controller above
        var selectedDate = date.format("MMMM d, yyyy")
        print(selectedDate)
        monthLabel.text = selectedDate
        // you now have the selectedDate. Not entirely sure the difference between this method and the calendarDidPageToDate method but you will have to figure that out by using print statements and such
    }
    func calendarDidPageToDate(date: Moment) {
        // do something if a page is selected using the CalendarView that set its delegate as this view controller above
        var selectedDate = date.format("MMMM d, yyyy")
        print(selectedDate)
        // you now have the selectedDate
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
