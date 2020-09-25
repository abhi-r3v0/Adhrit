.class public final Lo/resolveKeyPath;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFFacebookDeferredDeeplink$5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resolveKeyPath$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CoroutineWorker;

.field private final asBinder:Lo/InstallReferrerClient$InstallReferrerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setRenderMode;

.field private final onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

.field private final onNavigationEvent:Ljava/util/concurrent/ExecutorService;

.field private final onPostMessage:Lo/setPosition;

.field private final onTransact:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setRenderMode;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lo/CoroutineWorker;Lo/setPosition;Lo/InstallReferrerClient$InstallReferrerResponse;Lo/setPivotX;Lo/setPivotX;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setRenderMode;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lo/CoroutineWorker;",
            "Lo/setPosition;",
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/setPivotX<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/setPivotX<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lo/resolveKeyPath;->extraCallback:Lo/setRenderMode;

    .line 74
    iput-object p2, p0, Lo/resolveKeyPath;->onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    iput-object p3, p0, Lo/resolveKeyPath;->onNavigationEvent:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p4, p0, Lo/resolveKeyPath;->ICustomTabsCallback:Lo/CoroutineWorker;

    .line 77
    iput-object p5, p0, Lo/resolveKeyPath;->onPostMessage:Lo/setPosition;

    .line 78
    iput-object p6, p0, Lo/resolveKeyPath;->asBinder:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 79
    iput-object p7, p0, Lo/resolveKeyPath;->asInterface:Lo/setPivotX;

    .line 80
    iput-object p8, p0, Lo/resolveKeyPath;->onTransact:Lo/setPivotX;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 1090
    new-instance v0, Lo/setTextDelegate;

    check-cast p1, Lo/AFFacebookDeferredDeeplink;

    .line 1092
    invoke-virtual {p1}, Lo/AFFacebookDeferredDeeplink;->onRelationshipValidationResult()Lo/layoutChildLeft$extraCallback;

    move-result-object p1

    .line 2065
    iget-object v1, p1, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 1137
    new-instance v2, Landroid/graphics/Rect;

    invoke-interface {v1}, Lo/setSafeMode;->extraCallback()I

    move-result v3

    invoke-interface {v1}, Lo/setSafeMode;->onNavigationEvent()I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1138
    iget-object v1, p0, Lo/resolveKeyPath;->extraCallback:Lo/setRenderMode;

    invoke-interface {v1, p1, v2}, Lo/setRenderMode;->onNavigationEvent(Lo/layoutChildLeft$extraCallback;Landroid/graphics/Rect;)Lo/setFrame;

    move-result-object v1

    .line 2142
    iget-object v2, p0, Lo/resolveKeyPath;->asInterface:Lo/setPivotX;

    invoke-interface {v2}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    .line 2151
    new-instance p1, Lo/serializeObject$ICustomTabsCallback;

    invoke-direct {p1}, Lo/serializeObject$ICustomTabsCallback;-><init>()V

    goto :goto_0

    .line 2148
    :cond_0
    new-instance p1, Lo/invoke;

    invoke-direct {p1}, Lo/invoke;-><init>()V

    :goto_0
    move-object v8, p1

    goto :goto_2

    .line 2146
    :cond_1
    new-instance v2, Lo/getImageAssetsFolder;

    .line 3157
    new-instance v3, Lo/setApplyingOpacityToLayersEnabled;

    new-instance v5, Lo/resolveKeyPath$onPostMessage;

    .line 3158
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v5, p1}, Lo/resolveKeyPath$onPostMessage;-><init>(I)V

    iget-object p1, p0, Lo/resolveKeyPath;->asBinder:Lo/InstallReferrerClient$InstallReferrerResponse;

    invoke-direct {v3, v5, p1}, Lo/setApplyingOpacityToLayersEnabled;-><init>(Lo/invalidateSpanInfo;Lo/InstallReferrerClient$InstallReferrerResponse;)V

    .line 2146
    invoke-direct {v2, v3, v4}, Lo/getImageAssetsFolder;-><init>(Lo/setApplyingOpacityToLayersEnabled;Z)V

    goto :goto_1

    .line 2144
    :cond_2
    new-instance v2, Lo/getImageAssetsFolder;

    .line 2157
    new-instance v4, Lo/setApplyingOpacityToLayersEnabled;

    new-instance v5, Lo/resolveKeyPath$onPostMessage;

    .line 2158
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v5, p1}, Lo/resolveKeyPath$onPostMessage;-><init>(I)V

    iget-object p1, p0, Lo/resolveKeyPath;->asBinder:Lo/InstallReferrerClient$InstallReferrerResponse;

    invoke-direct {v4, v5, p1}, Lo/setApplyingOpacityToLayersEnabled;-><init>(Lo/invalidateSpanInfo;Lo/InstallReferrerClient$InstallReferrerResponse;)V

    .line 2144
    invoke-direct {v2, v4, v3}, Lo/getImageAssetsFolder;-><init>(Lo/setApplyingOpacityToLayersEnabled;Z)V

    :goto_1
    move-object v8, v2

    .line 1100
    :goto_2
    new-instance v10, Lo/setImageAssetDelegate;

    invoke-direct {v10, v8, v1}, Lo/setImageAssetDelegate;-><init>(Lo/addAnimatorListener;Lo/setFrame;)V

    .line 1103
    iget-object p1, p0, Lo/resolveKeyPath;->onTransact:Lo/setPivotX;

    invoke-interface {p1}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_3

    .line 1107
    new-instance v2, Lo/setRepeatCount;

    invoke-direct {v2, p1}, Lo/setRepeatCount;-><init>(I)V

    .line 4127
    new-instance p1, Lo/setImageAssetsFolder;

    iget-object v3, p0, Lo/resolveKeyPath;->onPostMessage:Lo/setPosition;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v5, p0, Lo/resolveKeyPath;->onNavigationEvent:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v3, v10, v4, v5}, Lo/setImageAssetsFolder;-><init>(Lo/setPosition;Lo/removeUpdateListener;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    move-object v12, p1

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object v11, v2

    move-object v12, v11

    .line 1112
    :goto_3
    new-instance p1, Lo/removeAllUpdateListeners;

    iget-object v7, p0, Lo/resolveKeyPath;->onPostMessage:Lo/setPosition;

    new-instance v9, Lo/setContentInsetStartWithNavigation$onPostMessage;

    invoke-direct {v9, v1}, Lo/setContentInsetStartWithNavigation$onPostMessage;-><init>(Lo/setFrame;)V

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lo/removeAllUpdateListeners;-><init>(Lo/setPosition;Lo/addAnimatorListener;Lo/removeAllAnimatorListeners;Lo/removeUpdateListener;Lo/loop;Lo/getRepeatCount;)V

    .line 1120
    iget-object v1, p0, Lo/resolveKeyPath;->ICustomTabsCallback:Lo/CoroutineWorker;

    iget-object v2, p0, Lo/resolveKeyPath;->onMessageChannelReady:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5045
    move-object v3, p1

    check-cast v3, Lo/removeAnimatorListener$onPostMessage;

    .line 5054
    new-instance v4, Lo/removeAnimatorListener;

    invoke-direct {v4, p1, v3, v1, v2}, Lo/removeAnimatorListener;-><init>(Lo/reverseAnimationSpeed;Lo/removeAnimatorListener$onPostMessage;Lo/CoroutineWorker;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1091
    invoke-direct {v0, v4}, Lo/setTextDelegate;-><init>(Lo/reverseAnimationSpeed;)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/convertToJsonObject;)Z
    .locals 0

    .line 85
    instance-of p1, p1, Lo/AFFacebookDeferredDeeplink;

    return p1
.end method
