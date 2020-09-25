.class final Lo/setUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/setUrl;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:I

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/util/Calendar;

.field final onNavigationEvent:I

.field final onPostMessage:I

.field final onRelationshipValidationResult:J

.field final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lo/setUrl$2;

    invoke-direct {v0}, Lo/setUrl$2;-><init>()V

    sput-object v0, Lo/setUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;)V
    .locals 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 58
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    const-string v2, "UTC"

    .line 3042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2074
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    if-nez p1, :cond_0

    .line 2076
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 2078
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4042
    :goto_0
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 3074
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 3076
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 1095
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 1096
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1097
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1094
    invoke-virtual {p1, v4, v6, v3}, Ljava/util/Calendar;->set(III)V

    .line 59
    iput-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    .line 60
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lo/setUrl;->ICustomTabsCallback:I

    .line 61
    iget-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lo/setUrl;->onPostMessage:I

    .line 62
    iget-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    iput p1, p0, Lo/setUrl;->onNavigationEvent:I

    .line 63
    iget-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    iput p1, p0, Lo/setUrl;->onTransact:I

    .line 4206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 5154
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM, yyyy"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 5155
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 64
    iget-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setUrl;->extraCallback:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setUrl;->onRelationshipValidationResult:J

    return-void
.end method

.method static onNavigationEvent(II)Lo/setUrl;
    .locals 2

    const-string v0, "UTC"

    .line 7042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 6074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 6076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 91
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 92
    new-instance p0, Lo/setUrl;

    invoke-direct {p0, v0}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/setUrl;)I
    .locals 2

    .line 145
    iget-object v0, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 146
    iget v0, p1, Lo/setUrl;->onPostMessage:I

    iget v1, p0, Lo/setUrl;->onPostMessage:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lo/setUrl;->ICustomTabsCallback:I

    iget v1, p0, Lo/setUrl;->ICustomTabsCallback:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 29
    check-cast p1, Lo/setUrl;

    .line 13132
    iget-object v0, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    iget-object p1, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lo/setUrl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lo/setUrl;

    .line 121
    iget v1, p0, Lo/setUrl;->ICustomTabsCallback:I

    iget v3, p1, Lo/setUrl;->ICustomTabsCallback:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/setUrl;->onPostMessage:I

    iget p1, p1, Lo/setUrl;->onPostMessage:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method final extraCallback(I)J
    .locals 5

    .line 166
    iget-object v0, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const-string v1, "UTC"

    .line 9042
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 8074
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v0, :cond_0

    .line 8076
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 8078
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10042
    :goto_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 9074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 9076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 7095
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    .line 7096
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 7097
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 7094
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 167
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    iget v1, p0, Lo/setUrl;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/setUrl;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final onPostMessage(I)Lo/setUrl;
    .locals 6

    .line 177
    iget-object v0, p0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const-string v1, "UTC"

    .line 12042
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 11074
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v0, :cond_0

    .line 11076
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 11078
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13042
    :goto_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 12074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 12076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 10095
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    .line 10096
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 10097
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 10094
    invoke-virtual {v0, v1, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 178
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 179
    new-instance p1, Lo/setUrl;

    invoke-direct {p1, v0}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 215
    iget p2, p0, Lo/setUrl;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget p2, p0, Lo/setUrl;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
