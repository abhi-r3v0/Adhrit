.class public Lo/setOnButtonClickListener;
.super Lo/setPosition;
.source ""


# static fields
.field private static final onNavigationEvent:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Lo/Ι;

.field private final onMessageChannelReady:Lo/AppsFlyerLib;

.field private final onPostMessage:Lo/removeAllLottieOnCompositionLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lo/setOnButtonClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setOnButtonClickListener;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/removeAllLottieOnCompositionLoadedListener;Lo/AppsFlyerLib;Lo/Ι;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/setPosition;-><init>()V

    .line 38
    iput-object p1, p0, Lo/setOnButtonClickListener;->onPostMessage:Lo/removeAllLottieOnCompositionLoadedListener;

    .line 39
    iput-object p2, p0, Lo/setOnButtonClickListener;->onMessageChannelReady:Lo/AppsFlyerLib;

    .line 40
    iput-object p3, p0, Lo/setOnButtonClickListener;->extraCallback:Lo/Ι;

    return-void
.end method


# virtual methods
.method public final onPostMessage(IILandroid/graphics/Bitmap$Config;)Lo/getRootAlpha;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lo/setOnButtonClickListener;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lo/setOnButtonClickListener;->extraCallback:Lo/Ι;

    .line 1092
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2019
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    if-nez p2, :cond_0

    .line 2020
    new-instance p2, Lo/setSelectionAnimationInterpolator;

    invoke-direct {p2}, Lo/setSelectionAnimationInterpolator;-><init>()V

    sput-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 2022
    :cond_0
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 2053
    iget-object p3, v0, Lo/Ι;->onNavigationEvent:Lo/getRootAlpha$onPostMessage;

    invoke-static {p1, p2, p3}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    iget-object v0, p0, Lo/setOnButtonClickListener;->onPostMessage:Lo/removeAllLottieOnCompositionLoadedListener;

    int-to-short v1, p1

    int-to-short v2, p2

    .line 62
    invoke-virtual {v0, v1, v2}, Lo/removeAllLottieOnCompositionLoadedListener;->onMessageChannelReady(SS)Lo/getRootAlpha;

    move-result-object v0

    .line 64
    :try_start_0
    new-instance v1, Lo/getCardBackgroundColor;

    invoke-direct {v1, v0}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V

    .line 65
    sget-object v2, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    .line 2165
    iput-object v2, v1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    iget-object v2, p0, Lo/setOnButtonClickListener;->onMessageChannelReady:Lo/AppsFlyerLib;

    .line 69
    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v3

    .line 68
    invoke-interface {v2, v1, p3, v3}, Lo/AppsFlyerLib;->ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;I)Lo/getRootAlpha;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 71
    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 72
    iput-boolean v4, p0, Lo/setOnButtonClickListener;->ICustomTabsCallback:Z

    .line 73
    sget-object v2, Lo/setOnButtonClickListener;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "Immutable bitmap returned by decoder"

    invoke-static {v2, v3}, Lo/setTranslateX;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    iget-object v2, p0, Lo/setOnButtonClickListener;->extraCallback:Lo/Ι;

    .line 3092
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4019
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    if-nez p2, :cond_2

    .line 4020
    new-instance p2, Lo/setSelectionAnimationInterpolator;

    invoke-direct {p2}, Lo/setSelectionAnimationInterpolator;-><init>()V

    sput-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 4022
    :cond_2
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 4053
    iget-object p3, v2, Lo/Ι;->onNavigationEvent:Lo/getRootAlpha$onPostMessage;

    invoke-static {p1, p2, p3}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4425
    :try_start_2
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    return-object p1

    .line 78
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 79
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5425
    :try_start_4
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 6425
    :try_start_5
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V

    .line 82
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 85
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    throw p1
.end method
