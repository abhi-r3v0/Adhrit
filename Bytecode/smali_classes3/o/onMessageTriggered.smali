.class final Lo/onMessageTriggered;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Lo/getPreviousEmail;

.field final ICustomTabsCallback$Stub:Lo/getPreviousEmail;

.field final asBinder:Landroid/graphics/Paint;

.field final extraCallback:Lo/getPreviousEmail;

.field final onMessageChannelReady:Lo/getPreviousEmail;

.field final onNavigationEvent:Lo/getPreviousEmail;

.field final onPostMessage:Lo/getPreviousEmail;

.field final onTransact:Lo/getPreviousEmail;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget v0, Lo/toStringMap$extraCallback;->materialCalendarStyle:I

    const-class v1, Lo/getAndroidMinimumVersion;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p1, v0, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 78
    sget-object v1, Lo/toStringMap$newSession;->MaterialCalendar:[I

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    sget v1, Lo/toStringMap$newSession;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 82
    invoke-static {p1, v1}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v1

    iput-object v1, p0, Lo/onMessageTriggered;->onPostMessage:Lo/getPreviousEmail;

    .line 84
    sget v1, Lo/toStringMap$newSession;->MaterialCalendar_dayInvalidStyle:I

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 85
    invoke-static {p1, v1}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v1

    iput-object v1, p0, Lo/onMessageTriggered;->onTransact:Lo/getPreviousEmail;

    .line 88
    sget v1, Lo/toStringMap$newSession;->MaterialCalendar_daySelectedStyle:I

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 89
    invoke-static {p1, v1}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v1

    iput-object v1, p0, Lo/onMessageTriggered;->onNavigationEvent:Lo/getPreviousEmail;

    .line 92
    sget v1, Lo/toStringMap$newSession;->MaterialCalendar_dayTodayStyle:I

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 93
    invoke-static {p1, v1}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v1

    iput-object v1, p0, Lo/onMessageTriggered;->onMessageChannelReady:Lo/getPreviousEmail;

    .line 96
    sget v1, Lo/toStringMap$newSession;->MaterialCalendar_rangeFillColor:I

    .line 97
    invoke-static {p1, v0, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 100
    sget v3, Lo/toStringMap$newSession;->MaterialCalendar_yearStyle:I

    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 101
    invoke-static {p1, v3}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v3

    iput-object v3, p0, Lo/onMessageTriggered;->extraCallback:Lo/getPreviousEmail;

    .line 103
    sget v3, Lo/toStringMap$newSession;->MaterialCalendar_yearSelectedStyle:I

    .line 106
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 104
    invoke-static {p1, v3}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object v3

    iput-object v3, p0, Lo/onMessageTriggered;->ICustomTabsCallback:Lo/getPreviousEmail;

    .line 107
    sget v3, Lo/toStringMap$newSession;->MaterialCalendar_yearTodayStyle:I

    .line 110
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 108
    invoke-static {p1, v2}, Lo/getPreviousEmail;->onPostMessage(Landroid/content/Context;I)Lo/getPreviousEmail;

    move-result-object p1

    iput-object p1, p0, Lo/onMessageTriggered;->ICustomTabsCallback$Stub:Lo/getPreviousEmail;

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/onMessageTriggered;->asBinder:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
