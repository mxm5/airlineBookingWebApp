package Util;

import org.junit.jupiter.api.Test;

import javax.swing.text.DateFormatter;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static org.junit.jupiter.api.Assertions.*;

class TimeUtilTest {
    @Test
    void timesMustNotBeSame() {
        Timestamp t1 = TimeUtil.nowToTimestamp();
        Timestamp t2 = TimeUtil.nowToTimestamp();
        System.out.println(t1);
        System.out.println(t2);
        assertNotEquals(t1 ,t2);

    }

    @Test
    void format() {
        String pattern = " yyyy-mm-dd hh:mm ";
        SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(pattern);

        LocalDateTime now = LocalDateTime.now();
        String format = now.format(dateTimeFormatter);
        System.out.println(format);
//        String format = dateFormat.format(ins);
//        return new Date(fromInstant.getTime());
//        System.out.println(format);
    }
}