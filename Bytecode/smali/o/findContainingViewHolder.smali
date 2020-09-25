.class public final Lo/findContainingViewHolder;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\u0019\u001a\u00020\u0018J\u001f\u0010\u001a\u001a\u00020\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ1\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0014\u0010$\u001a\u00020%*\u00020%2\u0006\u0010&\u001a\u00020\u0007H\u0002R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "digitsView",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView;",
        "value",
        "numberOfDigits",
        "getNumberOfDigits",
        "()I",
        "setNumberOfDigits",
        "(I)V",
        "soundPool",
        "Landroid/media/SoundPool;",
        "spinSound",
        "Ljava/lang/Integer;",
        "winningSound",
        "initViews",
        "",
        "playWinningSound",
        "resetAllDigits",
        "onComplete",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "spinAndStopAt",
        "number",
        "",
        "setResult",
        "",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withMarginEnd",
        "Landroid/widget/LinearLayout$LayoutParams;",
        "position",
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
.field private ICustomTabsCallback:I

.field public extraCallback:Ljava/lang/Integer;

.field public onMessageChannelReady:Landroid/media/SoundPool;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getChildViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/findContainingViewHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V
    .locals 0

    const/4 p3, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lo/findContainingViewHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    .line 35
    sget-object v0, Lo/getSwitchMinWidth$onMessageChannelReady;->LuckyNumberView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 36
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 37
    invoke-virtual {p0, p3}, Lo/findContainingViewHolder;->setNumberOfDigits(I)V

    const/16 p3, 0x11

    .line 38
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 39
    invoke-direct {p0}, Lo/findContainingViewHolder;->onMessageChannelReady()V

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 p3, 0xe

    .line 44
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 p3, 0x4

    .line 45
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 47
    new-instance p3, Landroid/media/SoundPool$Builder;

    invoke-direct {p3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 48
    invoke-virtual {p3, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p2

    const/16 p3, 0xa

    .line 49
    invoke-virtual {p2, p3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p2

    const-string p3, "SoundPool.Builder()\n    \u2026\n                .build()"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/findContainingViewHolder;->onMessageChannelReady:Landroid/media/SoundPool;

    const p3, 0x7f120020

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    :try_start_0
    invoke-virtual {p2, p1, p3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p2, v0

    .line 51
    :goto_0
    iput-object p2, p0, Lo/findContainingViewHolder;->onPostMessage:Ljava/lang/Integer;

    .line 59
    :try_start_1
    iget-object p2, p0, Lo/findContainingViewHolder;->onMessageChannelReady:Landroid/media/SoundPool;

    const p3, 0x7f120053

    invoke-virtual {p2, p1, p3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    :goto_1
    iput-object v0, p0, Lo/findContainingViewHolder;->extraCallback:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/findContainingViewHolder;)Ljava/lang/Integer;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/findContainingViewHolder;->onPostMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/findContainingViewHolder;)Landroid/media/SoundPool;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/findContainingViewHolder;->onMessageChannelReady:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Landroid/widget/LinearLayout$LayoutParams;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8111
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 9009
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "Resources.getSystem()"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41000000    # 8.0f

    .line 9010
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 8108
    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-object p0
.end method

.method private final onMessageChannelReady()V
    .locals 3

    .line 68
    iget v0, p0, Lo/findContainingViewHolder;->ICustomTabsCallback:I

    if-lez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    iget-object v0, p0, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget v0, p0, Lo/findContainingViewHolder;->ICustomTabsCallback:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 73
    :goto_0
    new-instance v2, Lo/findContainingViewHolder$ICustomTabsCallback;

    invoke-direct {v2, p0, v1}, Lo/findContainingViewHolder$ICustomTabsCallback;-><init>(Lo/findContainingViewHolder;I)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/findContainingViewHolder;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic onPostMessage(Lo/findContainingViewHolder;Ljava/lang/String;Lo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0, p2, p3}, Lo/findContainingViewHolder;->onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/setSessionPersistenceKey<",
            "-",
            "Lo/addWrites;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lo/findContainingViewHolder$onMessageChannelReady;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lo/findContainingViewHolder$onMessageChannelReady;

    iget v1, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onMessageChannelReady:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onMessageChannelReady:I

    sub-int/2addr p2, v2

    iput p2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onMessageChannelReady:I

    goto :goto_0

    :cond_0
    new-instance v0, Lo/findContainingViewHolder$onMessageChannelReady;

    invoke-direct {v0, p0, p2}, Lo/findContainingViewHolder$onMessageChannelReady;-><init>(Lo/findContainingViewHolder;Lo/setSessionPersistenceKey;)V

    :goto_0
    iget-object p2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1054
    sget-object v1, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 118
    iget v2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p1, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onTransact:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget v2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iget-object v4, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onPostMessage:Ljava/lang/Object;

    check-cast v5, Lo/getServerTime;

    iget-object v6, v0, Lo/findContainingViewHolder$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v6, Lo/findContainingViewHolder;

    .line 3126
    instance-of v7, p2, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p2, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p2, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_3
    instance-of v2, p2, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_9

    .line 119
    iget-object p2, p0, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 179
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, p0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v4

    move-object v4, v10

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    if-ltz v2, :cond_7

    .line 2032
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v5, Lo/getChildViewHolder;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2043
    iget v8, v5, Lo/getChildViewHolder;->onNavigationEvent:I

    neg-int v8, v8

    .line 2459
    invoke-virtual {v5}, Lo/getChildViewHolder;->extraCallback()I

    move-result v9

    mul-int v8, v8, v9

    iget v9, v5, Lo/getChildViewHolder;->extraCallback:I

    sub-int/2addr v8, v9

    .line 2460
    iget-object v5, v5, Lo/getChildViewHolder;->onPostMessage:Lo/invalidateItemDecorations;

    if-nez v5, :cond_4

    const-string/jumbo v9, "scroller"

    invoke-static {v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    const/16 v9, 0x7d0

    invoke-virtual {v5, v8, v9}, Lo/invalidateItemDecorations;->onMessageChannelReady(II)V

    .line 124
    iget v5, v6, Lo/findContainingViewHolder;->ICustomTabsCallback:I

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_6

    const-wide/16 v8, 0x7d0

    .line 125
    iput-object v6, v0, Lo/findContainingViewHolder$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p2, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onPostMessage:Ljava/lang/Object;

    iput-object v4, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Object;

    iput v7, v0, Lo/findContainingViewHolder$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iput-object p1, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onTransact:Ljava/lang/Object;

    iput v3, v0, Lo/findContainingViewHolder$onMessageChannelReady;->onMessageChannelReady:I

    invoke-static {v8, v9, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p2

    move v2, v7

    .line 126
    :goto_2
    invoke-interface {v5}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-object p2, v5

    goto :goto_1

    :cond_6
    move v2, v7

    goto :goto_1

    .line 1441
    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Index overflow has happened."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 129
    :cond_8
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_9
    check-cast p2, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p2, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/setSessionPersistenceKey<",
            "-",
            "Lo/addWrites;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lo/findContainingViewHolder$onNavigationEvent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lo/findContainingViewHolder$onNavigationEvent;

    iget v3, v2, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v4

    iput v1, v2, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    goto :goto_0

    :cond_0
    new-instance v2, Lo/findContainingViewHolder$onNavigationEvent;

    invoke-direct {v2, v0, v1}, Lo/findContainingViewHolder$onNavigationEvent;-><init>(Lo/findContainingViewHolder;Lo/setSessionPersistenceKey;)V

    :goto_0
    iget-object v1, v2, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    .line 4054
    sget-object v3, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 131
    iget v4, v2, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-ne v4, v6, :cond_2

    iget-object v4, v2, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget v7, v2, Lo/findContainingViewHolder$onNavigationEvent;->getInterfaceDescriptor:I

    iget-object v8, v2, Lo/findContainingViewHolder$onNavigationEvent;->onTransact:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    iget-object v9, v2, Lo/findContainingViewHolder$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/Object;

    check-cast v9, Lo/toDebugString$onPostMessage;

    iget-object v10, v2, Lo/findContainingViewHolder$onNavigationEvent;->asInterface:Ljava/lang/Object;

    check-cast v10, Lo/toDebugString$onPostMessage;

    iget-object v11, v2, Lo/findContainingViewHolder$onNavigationEvent;->asBinder:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lo/findContainingViewHolder$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    check-cast v13, Lo/getServerTime;

    iget-boolean v14, v2, Lo/findContainingViewHolder$onNavigationEvent;->newSession:Z

    iget-object v15, v2, Lo/findContainingViewHolder$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v5, v2, Lo/findContainingViewHolder$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    check-cast v5, Lo/findContainingViewHolder;

    .line 7126
    instance-of v6, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v6, :cond_1

    move-object v6, v5

    move v1, v14

    const/4 v0, 0x1

    move-object v5, v3

    move-object v3, v2

    move-object v2, v13

    move v13, v7

    move-object v7, v9

    move-object v9, v4

    move-object v4, v15

    goto/16 :goto_4

    :cond_1
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4126
    :cond_3
    instance-of v4, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v4, :cond_e

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, v0, Lo/findContainingViewHolder;->ICustomTabsCallback:I

    if-ge v1, v4, :cond_4

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v4, v1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object/from16 v4, p1

    move-object v1, v4

    .line 139
    :goto_1
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 182
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 139
    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v8, :cond_5

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 183
    :cond_6
    check-cast v6, Ljava/util/List;

    .line 140
    new-instance v5, Lo/toDebugString$onPostMessage;

    invoke-direct {v5}, Lo/toDebugString$onPostMessage;-><init>()V

    const/16 v7, 0x14

    iput v7, v5, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 141
    new-instance v7, Lo/toDebugString$onPostMessage;

    invoke-direct {v7}, Lo/toDebugString$onPostMessage;-><init>()V

    const/16 v8, 0x7d0

    iput v8, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 143
    iget-object v8, v0, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .line 185
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v12, v1

    move-object v10, v5

    move-object v11, v6

    const/4 v13, 0x0

    move/from16 v1, p2

    move-object v6, v0

    move-object v5, v3

    move-object v3, v2

    move-object/from16 v2, p3

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_c

    .line 6032
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v14, Lo/getChildViewHolder;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eqz v1, :cond_8

    .line 145
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual {v14, v0, v5}, Lo/getChildViewHolder;->setCurrentItem(IZ)V

    .line 146
    iget-object v0, v6, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    if-ne v13, v0, :cond_7

    .line 147
    invoke-interface {v2}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_7
    move-object/from16 v13, v16

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_8
    move-object/from16 v16, v5

    const/4 v5, 0x0

    .line 151
    iget v0, v10, Lo/toDebugString$onPostMessage;->onPostMessage:I

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int v0, v0, v17

    iget v5, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 6459
    invoke-virtual {v14}, Lo/getChildViewHolder;->extraCallback()I

    move-result v17

    mul-int v0, v0, v17

    move-object/from16 p1, v9

    iget v9, v14, Lo/getChildViewHolder;->extraCallback:I

    sub-int/2addr v0, v9

    .line 6460
    iget-object v9, v14, Lo/getChildViewHolder;->onPostMessage:Lo/invalidateItemDecorations;

    if-nez v9, :cond_9

    const-string/jumbo v17, "scroller"

    invoke-static/range {v17 .. v17}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v9, v0, v5}, Lo/invalidateItemDecorations;->onMessageChannelReady(II)V

    .line 153
    iget-object v0, v6, Lo/findContainingViewHolder;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    if-ne v13, v0, :cond_b

    .line 154
    new-instance v0, Lo/findContainingViewHolder$extraCallback;

    invoke-direct {v0, v14, v6}, Lo/findContainingViewHolder$extraCallback;-><init>(Lo/getChildViewHolder;Lo/findContainingViewHolder;)V

    check-cast v0, Lo/getServerTime;

    invoke-virtual {v14, v0}, Lo/getChildViewHolder;->setDigitUpdateListener(Lo/getServerTime;)V

    .line 161
    iget v0, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    int-to-long v13, v0

    iput-object v6, v3, Lo/findContainingViewHolder$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    iput-object v4, v3, Lo/findContainingViewHolder$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    iput-boolean v1, v3, Lo/findContainingViewHolder$onNavigationEvent;->newSession:Z

    iput-object v2, v3, Lo/findContainingViewHolder$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput-object v12, v3, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    iput-object v11, v3, Lo/findContainingViewHolder$onNavigationEvent;->asBinder:Ljava/lang/Object;

    iput-object v10, v3, Lo/findContainingViewHolder$onNavigationEvent;->asInterface:Ljava/lang/Object;

    iput-object v7, v3, Lo/findContainingViewHolder$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/Object;

    iput-object v8, v3, Lo/findContainingViewHolder$onNavigationEvent;->onTransact:Ljava/lang/Object;

    iput v15, v3, Lo/findContainingViewHolder$onNavigationEvent;->getInterfaceDescriptor:I

    move-object/from16 v9, p1

    iput-object v9, v3, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v3, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v13, v14, v3}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v13, v16

    if-ne v5, v13, :cond_a

    return-object v13

    :cond_a
    move-object v5, v13

    move v13, v15

    .line 162
    :goto_4
    invoke-interface {v2}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v9, p1

    move-object/from16 v13, v16

    const/4 v0, 0x1

    .line 164
    iget v5, v10, Lo/toDebugString$onPostMessage;->onPostMessage:I

    add-int/lit8 v5, v5, 0xa

    iput v5, v10, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 165
    iget v5, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    add-int/lit16 v5, v5, 0x3e8

    iput v5, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    :goto_5
    move-object/from16 v0, p0

    move-object v5, v13

    move v13, v15

    goto/16 :goto_3

    .line 5441
    :cond_c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 170
    :cond_d
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0

    .line 4126
    :cond_e
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v0, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v0
.end method

.method public final setNumberOfDigits(I)V
    .locals 0

    .line 26
    iput p1, p0, Lo/findContainingViewHolder;->ICustomTabsCallback:I

    .line 27
    invoke-direct {p0}, Lo/findContainingViewHolder;->onMessageChannelReady()V

    return-void
.end method
