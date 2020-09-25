.class Lo/setIOSBundleId;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field static final onMessageChannelReady:I


# instance fields
.field final ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalyticsConnectorRegistrar<",
            "*>;"
        }
    .end annotation
.end field

.field extraCallback:Lo/onMessageTriggered;

.field private onNavigationEvent:Lo/getMultiFactorInfo;

.field final onPostMessage:Lo/setUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTC"

    .line 33042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 32074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 32076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x4

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lo/setIOSBundleId;->onMessageChannelReady:I

    return-void
.end method

.method constructor <init>(Lo/setUrl;Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setUrl;",
            "Lo/AnalyticsConnectorRegistrar<",
            "*>;",
            "Lo/getMultiFactorInfo;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 54
    iput-object p2, p0, Lo/setIOSBundleId;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    .line 55
    iput-object p3, p0, Lo/setIOSBundleId;->onNavigationEvent:Lo/getMultiFactorInfo;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 3

    .line 167
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 5105
    iget-object v1, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 5107
    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getCount()I
    .locals 4

    .line 95
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v0, v0, Lo/setUrl;->onTransact:I

    .line 3167
    iget-object v1, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 4105
    iget-object v2, v1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 4107
    iget v1, v1, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v2, v1

    :cond_0
    add-int/2addr v0, v2

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lo/setIOSBundleId;->onMessageChannelReady(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 82
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 6101
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6154
    iget-object v1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    if-nez v1, :cond_0

    .line 6155
    new-instance v1, Lo/onMessageTriggered;

    invoke-direct {v1, v0}, Lo/onMessageTriggered;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    .line 6102
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 6104
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 6105
    sget v0, Lo/toStringMap$asBinder;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 6107
    :cond_1
    invoke-virtual {p0}, Lo/setIOSBundleId;->ICustomTabsCallback()I

    move-result p2

    sub-int p2, p1, p2

    const/4 p3, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "UTC"

    if-ltz p2, :cond_7

    .line 6108
    iget-object v5, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v5, v5, Lo/setUrl;->onTransact:I

    if-lt p2, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/2addr p2, v3

    .line 6114
    iget-object v5, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6115
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6116
    iget-object v5, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    invoke-virtual {v5, p2}, Lo/setUrl;->extraCallback(I)J

    move-result-wide v5

    .line 6117
    iget-object p2, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget p2, p2, Lo/setUrl;->onPostMessage:I

    .line 7101
    new-instance v7, Lo/setUrl;

    .line 8051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 10042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 9074
    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    if-nez v8, :cond_3

    .line 9076
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 9078
    :cond_3
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11042
    :goto_0
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 10074
    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 10076
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 8095
    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 8096
    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 8097
    invoke-virtual {v9, p3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 8094
    invoke-virtual {v8, v10, v11, v9}, Ljava/util/Calendar;->set(III)V

    .line 7101
    invoke-direct {v7, v8}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 6117
    iget v7, v7, Lo/setUrl;->onPostMessage:I

    const/16 v8, 0x18

    if-ne p2, v7, :cond_5

    .line 11076
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 11080
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_4

    const-string v7, "MMMEd"

    .line 12118
    invoke-static {v7, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 13047
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v7

    .line 12119
    invoke-virtual {p2, v7}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 11081
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 14124
    :cond_4
    invoke-static {v1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 15042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 14125
    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11083
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 6118
    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 15087
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 15091
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_6

    const-string v7, "yMMMEd"

    .line 16118
    invoke-static {v7, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 17047
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v7

    .line 16119
    invoke-virtual {p2, v7}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 15092
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 18124
    :cond_6
    invoke-static {v1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 19042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 18125
    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15094
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 6120
    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6122
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6123
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5

    :cond_7
    :goto_4
    const/16 p2, 0x8

    .line 6109
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6126
    :goto_5
    invoke-virtual {p0, p1}, Lo/setIOSBundleId;->onMessageChannelReady(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 6130
    :cond_8
    iget-object p2, p0, Lo/setIOSBundleId;->onNavigationEvent:Lo/getMultiFactorInfo;

    .line 19077
    iget-object p2, p2, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 6130
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-interface {p2, v5, v6}, Lo/getMultiFactorInfo$onNavigationEvent;->ICustomTabsCallback(J)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 6131
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6132
    iget-object p2, p0, Lo/setIOSBundleId;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    invoke-interface {p2}, Lo/AnalyticsConnectorRegistrar;->ICustomTabsCallback()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 6133
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 21042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 20074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 20076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 19110
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 22074
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    if-nez v1, :cond_a

    .line 22076
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    goto :goto_6

    .line 22078
    :cond_a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24042
    :goto_6
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 23074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 23076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 21095
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 21096
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 21097
    invoke-virtual {v7, p3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 21094
    invoke-virtual {v1, v8, v9, v7}, Ljava/util/Calendar;->set(III)V

    .line 19112
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 26042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 25074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 25076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 24110
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 28042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 27074
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    if-nez v1, :cond_b

    .line 27076
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    goto :goto_7

    .line 27078
    :cond_b
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 29042
    :goto_7
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 28074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 28076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 26095
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 26096
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 26097
    invoke-virtual {v5, p3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 26094
    invoke-virtual {v1, v6, v9, v5}, Ljava/util/Calendar;->set(III)V

    .line 24112
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v1, v7, v5

    if-nez v1, :cond_9

    .line 6134
    iget-object p1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    iget-object p1, p1, Lo/onMessageTriggered;->onNavigationEvent:Lo/getPreviousEmail;

    invoke-virtual {p1, v0}, Lo/getPreviousEmail;->ICustomTabsCallback(Landroid/widget/TextView;)V

    return-object v0

    .line 29051
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 31042
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 30074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    if-nez p2, :cond_d

    .line 30076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    goto :goto_8

    .line 30078
    :cond_d
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32042
    :goto_8
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    .line 31074
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 31076
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 29095
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 29096
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 29097
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 29094
    invoke-virtual {p2, v3, v2, p3}, Ljava/util/Calendar;->set(III)V

    .line 6139
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    cmp-long p1, p2, v1

    if-nez p1, :cond_e

    .line 6140
    iget-object p1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    iget-object p1, p1, Lo/onMessageTriggered;->onMessageChannelReady:Lo/getPreviousEmail;

    invoke-virtual {p1, v0}, Lo/getPreviousEmail;->ICustomTabsCallback(Landroid/widget/TextView;)V

    return-object v0

    .line 6143
    :cond_e
    iget-object p1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    iget-object p1, p1, Lo/onMessageTriggered;->onPostMessage:Lo/getPreviousEmail;

    invoke-virtual {p1, v0}, Lo/getPreviousEmail;->ICustomTabsCallback(Landroid/widget/TextView;)V

    return-object v0

    .line 6147
    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6148
    iget-object p1, p0, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    iget-object p1, p1, Lo/onMessageTriggered;->onTransact:Lo/getPreviousEmail;

    invoke-virtual {p1, v0}, Lo/getPreviousEmail;->ICustomTabsCallback(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady(I)Ljava/lang/Long;
    .locals 4

    .line 74
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 1105
    iget-object v1, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_0

    .line 1107
    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v1, v0

    :cond_0
    if-lt p1, v1, :cond_4

    .line 1178
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 2105
    iget-object v1, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_1

    .line 2107
    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1178
    :cond_1
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v0, v0, Lo/setUrl;->onTransact:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 3105
    iget-object v1, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_3

    .line 3107
    iget v2, v0, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v1, v2

    :cond_3
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 77
    invoke-virtual {v0, p1}, Lo/setUrl;->extraCallback(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
