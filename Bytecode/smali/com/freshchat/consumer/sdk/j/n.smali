.class public Lcom/freshchat/consumer/sdk/j/n;
.super Ljava/lang/Object;


# static fields
.field private static hA:Ljava/text/SimpleDateFormat;

.field private static hB:Ljava/text/SimpleDateFormat;

.field private static kH:Ljava/text/SimpleDateFormat;

.field private static kI:Ljava/text/SimpleDateFormat;

.field private static kX:Ljava/text/SimpleDateFormat;


# direct methods
.method public static a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bq(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {p1, p2, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, p2, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->d(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bp(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bs(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->br(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bp(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_other_year:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FRESHCHAT"

    const-string v1, "Error parsing date format template in getDateFormatForOtherYear(), using fallback template dd MMM yyyy\',\' hh:mm a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bq(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_today:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FRESHCHAT"

    const-string v1, "Error parsing date format template in getDateFormatForToday(), using fallback template dd MMM yyyy\',\' hh:mm a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static br(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_this_year_short:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FRESHCHAT"

    const-string v1, "Error parsing date format template in getDateFormatForThisYearShort(), using fallback template dd MMM yyyy\',\' hh:mm a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bs(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_this_year_long:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FRESHCHAT"

    const-string v1, "Error parsing date format template in getDateFormatForThisYearLong(), using fallback template dd MMM yyyy\',\' hh:mm a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy\',\' hh:mm a"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FRESHCHAT"

    const-string v0, "Error parsing date format template in getDateFormatDefault()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static c(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p3
.end method

.method public static d(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p2, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ef()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static fP()J
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static i(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/j/n;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(I)Ljava/lang/String;
    .locals 4

    if-lez p0, :cond_2

    div-int/lit8 v0, p0, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p0, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "00:00"

    return-object p0
.end method
