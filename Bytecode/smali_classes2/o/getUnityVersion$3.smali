.class final Lo/getUnityVersion$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getUnityVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private synthetic asInterface:Lo/Settings;

.field private extraCallback:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:J

.field private onPostMessage:J


# direct methods
.method constructor <init>(Lo/Settings;)V
    .locals 2

    .line 26
    iput-object p1, p0, Lo/getUnityVersion$3;->asInterface:Lo/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 93
    iput-wide v0, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 95
    iput-wide v0, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 96
    iput-boolean p1, p0, Lo/getUnityVersion$3;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    if-le p1, v3, :cond_0

    .line 1085
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 1086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 1087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 1088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 1089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    return v0

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_b

    const-wide/16 v3, 0x64

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 v5, 0x5

    if-eq p1, v5, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    .line 51
    :cond_1
    iget-boolean p1, p0, Lo/getUnityVersion$3;->extraCallback:Z

    if-eqz p1, :cond_2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    goto/16 :goto_0

    .line 4085
    :cond_2
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 4086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 4087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 4088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 4089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    goto/16 :goto_0

    .line 40
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gez p1, :cond_5

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/getUnityVersion$3;->onPostMessage:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    .line 2085
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 2086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 2087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 2088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 2089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    .line 44
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 45
    iput-boolean p2, p0, Lo/getUnityVersion$3;->extraCallback:Z

    goto :goto_0

    .line 3085
    :cond_5
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 3086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 3087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 3088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 3089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    goto :goto_0

    .line 58
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gez p1, :cond_c

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x9c4

    cmp-long p1, v3, v5

    if-ltz p1, :cond_8

    .line 61
    iget p1, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 62
    iget-object p1, p0, Lo/getUnityVersion$3;->asInterface:Lo/Settings;

    const-string p2, "$ab_gesture1"

    invoke-virtual {p1, p2}, Lo/Settings;->onPostMessage(Ljava/lang/String;)V

    .line 5085
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 5086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 5087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 5088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 5089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    .line 65
    :cond_7
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    goto :goto_0

    .line 68
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 69
    iget p1, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    const/4 v3, 0x4

    if-ge p1, v3, :cond_9

    add-int/2addr p1, p2

    .line 70
    iput p1, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    goto :goto_0

    :cond_9
    if-ne p1, v3, :cond_a

    .line 72
    iget-object p1, p0, Lo/getUnityVersion$3;->asInterface:Lo/Settings;

    const-string p2, "$ab_gesture2"

    invoke-virtual {p1, p2}, Lo/Settings;->onPostMessage(Ljava/lang/String;)V

    .line 7085
    :cond_a
    iput-wide v1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    .line 7086
    iput-wide v1, p0, Lo/getUnityVersion$3;->onNavigationEvent:J

    .line 7087
    iput v0, p0, Lo/getUnityVersion$3;->onMessageChannelReady:I

    .line 7088
    iput-wide v1, p0, Lo/getUnityVersion$3;->onPostMessage:J

    .line 7089
    iput-boolean v0, p0, Lo/getUnityVersion$3;->extraCallback:Z

    goto :goto_0

    .line 37
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/getUnityVersion$3;->ICustomTabsCallback:J

    :cond_c
    :goto_0
    return v0
.end method
