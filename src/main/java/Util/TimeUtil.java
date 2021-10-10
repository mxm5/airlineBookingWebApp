package Util;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

public class TimeUtil {

    //    public static void now() {
//        return Timestamp.from(Instant.now());
//    }
    public static Timestamp nowToTimestamp() {
        return Timestamp.from(Instant.now());
    }

    public static LocalDateTime nowToLocalDateTime() {
        Instant now = Instant.now();
        return Timestamp.from(now).toLocalDateTime();
    }

    public static Date nowToSqlDate() {
        Timestamp fromInstant = Timestamp.from(Instant.now());
        return new Date(fromInstant.getTime());
    }

    public static String formatTicketTime(LocalDateTime time) {

        String pattern = " yyyy-mm-dd hh:mm ";

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(pattern);


        String format = time.format(dateTimeFormatter);
        System.out.println(format);
        return format;
    }

    public static Date fourYearsFromNow() {

        Calendar cal = Calendar.getInstance();
        cal.setTime(nowToTimestamp());
        cal.add(Calendar.YEAR, 4);
        return new Date(cal.getTime().getTime());


    }
}
