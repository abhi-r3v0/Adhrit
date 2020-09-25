.class final Lo/canHandleCodeInApp;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field private static final onMessageChannelReady:I


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Calendar;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lo/canHandleCodeInApp;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "UTC"

    .line 2042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 53
    iput-object v0, p0, Lo/canHandleCodeInApp;->ICustomTabsCallback:Ljava/util/Calendar;

    const/4 v1, 0x7

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lo/canHandleCodeInApp;->onNavigationEvent:I

    .line 55
    iget-object v0, p0, Lo/canHandleCodeInApp;->ICustomTabsCallback:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lo/canHandleCodeInApp;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 75
    iget v0, p0, Lo/canHandleCodeInApp;->onNavigationEvent:I

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 2

    .line 3061
    iget v0, p0, Lo/canHandleCodeInApp;->onNavigationEvent:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3100
    :cond_0
    iget v1, p0, Lo/canHandleCodeInApp;->onPostMessage:I

    add-int/2addr p1, v1

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 3064
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 82
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 85
    sget v0, Lo/toStringMap$asBinder;->mtrl_calendar_day_of_week:I

    .line 86
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 88
    :cond_0
    iget-object p2, p0, Lo/canHandleCodeInApp;->ICustomTabsCallback:Ljava/util/Calendar;

    .line 2100
    iget v2, p0, Lo/canHandleCodeInApp;->onPostMessage:I

    add-int/2addr p1, v2

    .line 2101
    iget v2, p0, Lo/canHandleCodeInApp;->onNavigationEvent:I

    if-le p1, v2, :cond_1

    sub-int/2addr p1, v2

    :cond_1
    const/4 v2, 0x7

    .line 88
    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object p1, p0, Lo/canHandleCodeInApp;->ICustomTabsCallback:Ljava/util/Calendar;

    sget p2, Lo/canHandleCodeInApp;->onMessageChannelReady:I

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v2, p2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lo/toStringMap$onTransact;->mtrl_picker_day_of_week_column_header:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lo/canHandleCodeInApp;->ICustomTabsCallback:Ljava/util/Calendar;

    const/4 v3, 0x2

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p3, v2, v3, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 92
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method
