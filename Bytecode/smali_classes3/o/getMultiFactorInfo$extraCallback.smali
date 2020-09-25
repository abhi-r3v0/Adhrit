.class public final Lo/getMultiFactorInfo$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMultiFactorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field private static onMessageChannelReady:J

.field private static onRelationshipValidationResult:J


# instance fields
.field ICustomTabsCallback:J

.field extraCallback:Lo/getMultiFactorInfo$onNavigationEvent;

.field onNavigationEvent:J

.field onPostMessage:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "UTC"

    .line 8042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 7074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 7076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x1

    const/16 v3, 0x76c

    .line 6090
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 6091
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 6092
    new-instance v4, Lo/setUrl;

    invoke-direct {v4, v1}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 178
    iget-wide v4, v4, Lo/setUrl;->onRelationshipValidationResult:J

    .line 10042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 9074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 9076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 8110
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 11074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v1, :cond_0

    .line 11076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 11078
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13042
    :goto_0
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 12074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 12076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 10095
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 10096
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    .line 10097
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 10094
    invoke-virtual {v1, v5, v6, v4}, Ljava/util/Calendar;->set(III)V

    .line 8112
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 178
    sput-wide v4, Lo/getMultiFactorInfo$extraCallback;->onMessageChannelReady:J

    .line 15042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 14074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 14076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/16 v4, 0x834

    .line 13090
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    .line 13091
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 13092
    new-instance v4, Lo/setUrl;

    invoke-direct {v4, v1}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 184
    iget-wide v4, v4, Lo/setUrl;->onRelationshipValidationResult:J

    .line 17042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 16074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 16076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 15110
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 18074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v1, :cond_1

    .line 18076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_1

    .line 18078
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20042
    :goto_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 19074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 19076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 17095
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 17096
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 17097
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 17094
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 15112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 184
    sput-wide v0, Lo/getMultiFactorInfo$extraCallback;->onRelationshipValidationResult:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-wide v0, Lo/getMultiFactorInfo$extraCallback;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    .line 189
    sget-wide v0, Lo/getMultiFactorInfo$extraCallback;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->onNavigationEvent:J

    .line 1044
    new-instance v0, Lo/getIOSBundle;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lo/getIOSBundle;-><init>(J)V

    .line 191
    iput-object v0, p0, Lo/getMultiFactorInfo$extraCallback;->extraCallback:Lo/getMultiFactorInfo$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Lo/getMultiFactorInfo;)V
    .locals 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-wide v0, Lo/getMultiFactorInfo$extraCallback;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    .line 189
    sget-wide v0, Lo/getMultiFactorInfo$extraCallback;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->onNavigationEvent:J

    .line 2044
    new-instance v0, Lo/getIOSBundle;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lo/getIOSBundle;-><init>(J)V

    .line 191
    iput-object v0, p0, Lo/getMultiFactorInfo$extraCallback;->extraCallback:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 3031
    iget-object v0, p1, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 196
    iget-wide v0, v0, Lo/setUrl;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->ICustomTabsCallback:J

    .line 4031
    iget-object v0, p1, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    .line 197
    iget-wide v0, v0, Lo/setUrl;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/getMultiFactorInfo$extraCallback;->onNavigationEvent:J

    .line 5031
    iget-object v0, p1, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    .line 198
    iget-wide v0, v0, Lo/setUrl;->onRelationshipValidationResult:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/getMultiFactorInfo$extraCallback;->onPostMessage:Ljava/lang/Long;

    .line 6031
    iget-object p1, p1, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 199
    iput-object p1, p0, Lo/getMultiFactorInfo$extraCallback;->extraCallback:Lo/getMultiFactorInfo$onNavigationEvent;

    return-void
.end method
