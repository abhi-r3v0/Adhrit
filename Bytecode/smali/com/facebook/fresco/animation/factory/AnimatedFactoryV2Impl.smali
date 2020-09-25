.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildDrawingCache;


# annotations
.annotation build Lo/getGroupName;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lo/setSelectedTextColor;

.field private extraCallback:Lo/disableExtraScaleModeInFitXY;

.field private final onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/setPosition;

.field private final onPostMessage:Lo/urlString;

.field private onRelationshipValidationResult:Lo/AFFacebookDeferredDeeplink$5;

.field private onTransact:Lo/setRenderMode;


# direct methods
.method public constructor <init>(Lo/setPosition;Lo/urlString;Lo/InstallReferrerClient$InstallReferrerResponse;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPosition;",
            "Lo/urlString;",
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lo/getGroupName;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onNavigationEvent:Lo/setPosition;

    .line 66
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onPostMessage:Lo/urlString;

    .line 67
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 68
    iput-boolean p4, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->ICustomTabsCallback:Z

    return-void
.end method

.method static synthetic extraCallback(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->ICustomTabsCallback:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo/setSelectedTextColor;
    .locals 1

    .line 3138
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->ICustomTabsCallback$Stub:Lo/setSelectedTextColor;

    if-nez v0, :cond_0

    .line 3139
    new-instance v0, Lo/setSelectedTextColor;

    invoke-direct {v0}, Lo/setSelectedTextColor;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->ICustomTabsCallback$Stub:Lo/setSelectedTextColor;

    .line 3141
    :cond_0
    iget-object p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->ICustomTabsCallback$Stub:Lo/setSelectedTextColor;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo/disableExtraScaleModeInFitXY;
    .locals 3

    .line 2145
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->extraCallback:Lo/disableExtraScaleModeInFitXY;

    if-nez v0, :cond_0

    .line 2170
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 2181
    new-instance v1, Lo/addLottieOnCompositionLoadedListener;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onNavigationEvent:Lo/setPosition;

    invoke-direct {v1, v0, v2}, Lo/addLottieOnCompositionLoadedListener;-><init>(Lo/setRenderMode;Lo/setPosition;)V

    .line 2146
    iput-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->extraCallback:Lo/disableExtraScaleModeInFitXY;

    .line 2148
    :cond_0
    iget-object p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->extraCallback:Lo/disableExtraScaleModeInFitXY;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/AFFacebookDeferredDeeplink$5;
    .locals 10

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onRelationshipValidationResult:Lo/AFFacebookDeferredDeeplink$5;

    if-nez v0, :cond_1

    .line 1109
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;

    invoke-direct {v8}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;-><init>()V

    .line 1116
    new-instance v4, Lo/setStrokeAlpha;

    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onPostMessage:Lo/urlString;

    .line 1117
    invoke-interface {v0}, Lo/urlString;->onNavigationEvent()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v4, v0}, Lo/setStrokeAlpha;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1119
    new-instance v9, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$4;

    invoke-direct {v9}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$4;-><init>()V

    .line 1126
    new-instance v0, Lo/resolveKeyPath;

    .line 1152
    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onTransact:Lo/setRenderMode;

    if-nez v1, :cond_0

    .line 1153
    new-instance v1, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;

    invoke-direct {v1, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onTransact:Lo/setRenderMode;

    .line 1166
    :cond_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onTransact:Lo/setRenderMode;

    .line 1128
    invoke-static {}, Lo/getTrimPathEnd;->onPostMessage()Lo/getTrimPathEnd;

    move-result-object v3

    .line 1130
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onNavigationEvent:Lo/setPosition;

    iget-object v7, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lo/resolveKeyPath;-><init>(Lo/setRenderMode;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lo/CoroutineWorker;Lo/setPosition;Lo/InstallReferrerClient$InstallReferrerResponse;Lo/setPivotX;Lo/setPivotX;)V

    .line 75
    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onRelationshipValidationResult:Lo/AFFacebookDeferredDeeplink$5;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->onRelationshipValidationResult:Lo/AFFacebookDeferredDeeplink$5;

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/graphics/Bitmap$Config;)Lo/isEncrypt;
    .locals 1

    .line 82
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Bitmap$Config;)Lo/isEncrypt;
    .locals 1

    .line 96
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
