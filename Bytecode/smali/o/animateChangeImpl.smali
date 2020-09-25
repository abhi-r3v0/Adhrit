.class public final Lo/animateChangeImpl;
.super Lo/PlaybackStateCompat;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n*\u0001\u001b\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010#\u001a\u00020\t2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\tJ\u0006\u0010)\u001a\u00020\'J\u0008\u0010*\u001a\u00020\'H\u0002J\u0006\u0010+\u001a\u00020\'J\u0008\u0010,\u001a\u00020\'H\u0016J\u0010\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020 H\u0016J\u0006\u0010/\u001a\u00020\'J\u0008\u00100\u001a\u00020\tH\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR.\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u0004\u0018\u00010 *\u00020\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u00061"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPager;",
        "Landroidx/viewpager/widget/ViewPager;",
        "Ljava/lang/Runnable;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "autoScroll",
        "",
        "digestSlideListener",
        "Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPagerListener;",
        "getDigestSlideListener",
        "()Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPagerListener;",
        "setDigestSlideListener",
        "(Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPagerListener;)V",
        "duration",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getDuration",
        "()Ljava/util/ArrayList;",
        "setDuration",
        "(Ljava/util/ArrayList;)V",
        "elapsedDuration",
        "haltScrolling",
        "onPageChangeListener",
        "com/dreamplug/fabrik/ui/digest/DigestSlideViewPager$onPageChangeListener$1",
        "Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPager$onPageChangeListener$1;",
        "startDuration",
        "tapTime",
        "lastItem",
        "",
        "getLastItem",
        "(Landroidx/viewpager/widget/ViewPager;)Ljava/lang/Integer;",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "",
        "hardPause",
        "reset",
        "restart",
        "resume",
        "run",
        "setCurrentItem",
        "item",
        "start",
        "stop",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsService:J

.field private asBinder:Z

.field private asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Lo/animateChangeImpl$onPostMessage;

.field onPostMessage:Lo/endChangeAnimationIfNecessary;

.field private onRelationshipValidationResult:J

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/animateChangeImpl;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lo/animateChangeImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lo/PlaybackStateCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lo/animateChangeImpl$onPostMessage;

    invoke-direct {v0, p0}, Lo/animateChangeImpl$onPostMessage;-><init>(Lo/animateChangeImpl;)V

    iput-object v0, p0, Lo/animateChangeImpl;->getInterfaceDescriptor:Lo/animateChangeImpl$onPostMessage;

    if-eqz p2, :cond_0

    .line 34
    sget-object v0, Lo/getSwitchMinWidth$onMessageChannelReady;->AutoSlideViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lo/animateChangeImpl;->onTransact:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    :cond_0
    iget-object p1, p0, Lo/animateChangeImpl;->getInterfaceDescriptor:Lo/animateChangeImpl$onPostMessage;

    check-cast p1, Lo/PlaybackStateCompat$onPostMessage;

    .line 12723
    iget-object p2, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-nez p2, :cond_1

    .line 12724
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    .line 12726
    :cond_1
    iget-object p2, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic extraCallback(Lo/animateChangeImpl;Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lo/animateChangeImpl;->asBinder:Z

    return-void
.end method

.method public static synthetic onNavigationEvent(Lo/animateChangeImpl;)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lo/animateChangeImpl;->onPostMessage(Z)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/animateChangeImpl;)V
    .locals 3

    .line 13115
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x0

    .line 13116
    iput-wide v1, p0, Lo/animateChangeImpl;->onRelationshipValidationResult:J

    .line 13117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/animateChangeImpl;->ICustomTabsCallback$Stub:J

    .line 13118
    iget-object v1, p0, Lo/animateChangeImpl;->asInterface:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 13627
    iget v2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 13118
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it[currentItem]"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/animateChangeImpl;->ICustomTabsCallback$Stub:J

    .line 95
    iget-object v0, p0, Lo/animateChangeImpl;->asInterface:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    .line 9627
    iget v2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "it[currentItem]"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 6

    .line 109
    iget-object v0, p0, Lo/animateChangeImpl;->asInterface:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    .line 11627
    iget v2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lo/animateChangeImpl;->onRelationshipValidationResult:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/animateChangeImpl;->ICustomTabsCallback$Stub:J

    .line 111
    iget-object v0, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 12627
    :cond_1
    iget v1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 111
    invoke-interface {v0, v1}, Lo/endChangeAnimationIfNecessary;->onPostMessage(I)V

    :cond_2
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 6

    .line 101
    iget-wide v0, p0, Lo/animateChangeImpl;->onRelationshipValidationResult:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lo/animateChangeImpl;->ICustomTabsCallback$Stub:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/animateChangeImpl;->onRelationshipValidationResult:J

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 10627
    :cond_0
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 104
    invoke-interface {p1, v0}, Lo/endChangeAnimationIfNecessary;->onNavigationEvent(I)V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 52
    iget-boolean v1, p0, Lo/animateChangeImpl;->onTransact:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_15

    .line 54
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    .line 1100
    invoke-virtual {p0, v3}, Lo/animateChangeImpl;->onPostMessage(Z)V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/animateChangeImpl;->ICustomTabsService:J

    goto/16 :goto_a

    :cond_7
    if-ne v1, v3, :cond_15

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lo/animateChangeImpl;->ICustomTabsService:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    if-eqz p1, :cond_8

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_7

    :cond_8
    move-object p1, v0

    :goto_7
    if-nez p1, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_11

    .line 1627
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 2572
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v1, :cond_a

    .line 2127
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_a
    move-object v1, v0

    :goto_8
    if-nez v1, :cond_b

    goto :goto_9

    .line 61
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 62
    iget-object p1, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz p1, :cond_15

    invoke-interface {p1, v3}, Lo/endChangeAnimationIfNecessary;->onNavigationEvent(Z)V

    goto :goto_a

    .line 2627
    :cond_c
    :goto_9
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 3572
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v1, :cond_d

    .line 3127
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_e

    .line 64
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 65
    iget-object p1, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lo/endChangeAnimationIfNecessary;->onPostMessage()V

    .line 3627
    :cond_f
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/2addr p1, v3

    .line 66
    invoke-virtual {p0, p1, v2}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    goto :goto_a

    .line 67
    :cond_10
    invoke-virtual {p0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    goto :goto_a

    .line 4627
    :cond_11
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lez p1, :cond_13

    .line 71
    iget-object p1, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lo/endChangeAnimationIfNecessary;->onMessageChannelReady()V

    .line 5627
    :cond_12
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    sub-int/2addr p1, v3

    .line 72
    invoke-virtual {p0, p1, v2}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    goto :goto_a

    .line 73
    :cond_13
    invoke-virtual {p0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    goto :goto_a

    .line 76
    :cond_14
    invoke-virtual {p0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    :cond_15
    :goto_a
    return v3
.end method

.method public final run()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo/animateChangeImpl;->asBinder:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6627
    :cond_0
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 7572
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v1, :cond_1

    .line 7127
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 86
    iget-object v0, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 8136
    invoke-interface {v0, v1}, Lo/endChangeAnimationIfNecessary;->onNavigationEvent(Z)V

    :cond_3
    return-void

    .line 8627
    :cond_4
    :goto_1
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lo/PlaybackStateCompat;->setCurrentItem(I)V

    .line 90
    invoke-virtual {p0}, Lo/animateChangeImpl;->ICustomTabsCallback()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lo/PlaybackStateCompat;->setCurrentItem(I)V

    if-nez p1, :cond_0

    .line 46
    iget-object v0, p0, Lo/animateChangeImpl;->getInterfaceDescriptor:Lo/animateChangeImpl$onPostMessage;

    invoke-virtual {v0, p1}, Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;->onMessageChannelReady(I)V

    :cond_0
    return-void
.end method

.method public final setDigestSlideListener(Lo/endChangeAnimationIfNecessary;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    return-void
.end method

.method public final setDuration(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lo/animateChangeImpl;->asInterface:Ljava/util/ArrayList;

    return-void
.end method
