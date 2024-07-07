//Working Module!, DO NOT update until new changes have been confirmed working!
//This file (edutraktypes.mo) contains the types used on main.mo for the:
        //-Students Records
        //-Professors Records
        //-Init Types to run the nested functions
        //-Progress Tracker: The Progress Tracker Holds and segregates the student records! At least that is the intent so far! Unless I find a more efficient way to do it!
            //-With Nested Type: Years (2024-2030)
                //-With Nested Type: Months (jan-dec)
                    //-With Nested Type: Weeks (1-5)
                        //-With Nested Type: Days (1-2)
                            //-With Nested Type: Tracker
                                //-With Nested Type: Subjects (math, history, pe, english, cooking, art, pshce, employability, games, spanish )
                                    //-With Nested Type: Scores ( teacherAssigned, notes, engagmentWithLearning, applicationEffort, personalWellBeing, academicProgress)


//NOTE: When using modules your need to use and add "public" type to all Types. This allow main.mo to call them.

module {
  
     public type Score = {
        teacherAssigned: Text;
        notes: Text;
        engagementWithLearning: Text;
        applicationEffort: Text;
        personalWellBeing: Text;
        academicProgress: Text;
    };
    
    public type Subjects = {
        math: Score;
        history: Score;
        pe: Score;
        english: Score;
        cooking: Score;
        art: Score;
        pshce: Score;
        employability: Score;
        games: Score;
        spanish: Score;
    };
    
    public type Tracker = {
        date: Text;
        subjects: Subjects;
    };
    
    public type Days = {
        day1: Tracker;
        day2: Tracker;
    };
    
    public type Weeks = {
        week1: Days;
        week2: Days;
        week3: Days;
        week4: Days;
        week5: Days;
    };
    
    public type Months = {
        january: Weeks;
        february: Weeks;
        march: Weeks;
        april: Weeks;
        may: Weeks;
        june: Weeks;
        july: Weeks;
        august: Weeks;
        september: Weeks;
        october: Weeks;
        november: Weeks;
        december: Weeks;
    };
    
    public type Years = {
        _2024: Months;
        _2025: Months;
        _2026: Months;
        _2027: Months;
        _2028: Months;
        _2029: Months;
        _2030: Months;
    };
    
    public type Student = {
        name: Text;
        dob: Text;
        parentsName: Text;
        tutorName: Text;
        contactNumber: Text;
        email: Text;
        progressTracker: Years;
    };

    public type Professor = { 
        name: Text;
        email: Text;
        contactNumber: Text;
        principalId: Text;
        startingDate: Text;
        registrationDate: Text;
    };


//Functions to initialize the nested structures:
//initScore, initSubjects, initTracker, initDays, initWeeks, initMonths, initYears:

    // Initialize a score
    public func initScore(): Score {
        {
            teacherAssigned = "";
            notes = "";
            engagementWithLearning = "";
            applicationEffort = "";
            personalWellBeing = "";
            academicProgress = "";
        };
    };

    // Initialize subjects
    public func initSubjects(): Subjects {
        {
            math = initScore();
            history = initScore();
            pe = initScore();
            english = initScore();
            cooking = initScore();
            art = initScore();
            pshce = initScore();
            employability = initScore();
            games = initScore();
            spanish = initScore();
        };
    };

    // Initialize tracker
    public func initTracker(): Tracker {
        {
            date = "";
            subjects = initSubjects();
        }
    };

    // Initialize days
    public func initDays(): Days {
        {
            day1 = initTracker();
            day2 = initTracker();
        }
    };

    // Initialize weeks
    public func initWeeks(): Weeks {
        {
            week1 = initDays();
            week2 = initDays();
            week3 = initDays();
            week4 = initDays();
            week5 = initDays();
        }
    };

    // Initialize months
    public func initMonths(): Months {
        {
            january = initWeeks();
            february = initWeeks();
            march = initWeeks();
            april = initWeeks();
            may = initWeeks();
            june = initWeeks();
            july = initWeeks();
            august = initWeeks();
            september = initWeeks();
            october = initWeeks();
            november = initWeeks();
            december = initWeeks();
        }
    };

    // Initialize years
    public func initYears(): Years {
        {
            _2024 = initMonths();
            _2025 = initMonths();
            _2026 = initMonths();
            _2027 = initMonths();
            _2028 = initMonths();
            _2029 = initMonths();
            _2030 = initMonths();
        }
    };
}