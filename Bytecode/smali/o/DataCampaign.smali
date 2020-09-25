.class public abstract Lo/DataCampaign;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMinFrame;
.implements Lo/BECampaign$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DataCampaign$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getMinFrame;",
        "Lo/BECampaign$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field private static final asBinder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/Attribute;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

.field private ICustomTabsService:Lo/CampaignResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CampaignResponseJsonAdapter<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Lo/WorkDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WorkDatabase<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final newSession:Ljava/util/concurrent/Executor;

.field public onMessageChannelReady:Lo/cancelAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/cancelAnimation<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/setMinAndMaxFrame;

.field public onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Lo/BECampaign;

.field onTransact:Ljava/lang/String;

.field private postMessage:Z

.field private requestPostMessageChannel:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private updateVisuals:Z

.field private warmup:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24033
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "component_tag"

    const-string v2, "drawee"

    .line 24034
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24035
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 60
    sput-object v0, Lo/DataCampaign;->extraCallback:Ljava/util/Map;

    const-string v0, "origin"

    const-string v1, "memory_bitmap"

    const-string v2, "origin_sub"

    const-string/jumbo v3, "shortcut"

    .line 62
    invoke-static {v0, v1, v2, v3}, Lo/getLocalMatrix;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/DataCampaign;->asInterface:Ljava/util/Map;

    .line 86
    const-class v0, Lo/DataCampaign;

    sput-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/BECampaign;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lo/Attribute;->onPostMessage()Lo/Attribute;

    move-result-object v0

    iput-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    .line 98
    new-instance v0, Lo/cancelAnimation;

    invoke-direct {v0}, Lo/cancelAnimation;-><init>()V

    iput-object v0, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lo/DataCampaign;->postMessage:Z

    .line 128
    iput-object p1, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    .line 129
    iput-object p2, p0, Lo/DataCampaign;->newSession:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, p1, p1}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lo/setScaleType$extraCallback;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lo/setScaleType$extraCallback;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    instance-of v1, v0, Lo/getComposition;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 833
    check-cast v0, Lo/getComposition;

    const/4 v1, 0x2

    .line 17379
    invoke-virtual {v0, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v3

    .line 17380
    instance-of v3, v3, Lo/fromAssets;

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_1

    .line 18369
    :cond_0
    invoke-virtual {v0, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 18370
    instance-of v3, v0, Lo/fromAssets;

    if-eqz v3, :cond_1

    .line 18371
    check-cast v0, Lo/fromAssets;

    goto :goto_0

    .line 18373
    :cond_1
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 19085
    :goto_0
    iget-object v0, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 834
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v3, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    check-cast v3, Lo/getComposition;

    .line 20379
    invoke-virtual {v3, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v4

    .line 20380
    instance-of v4, v4, Lo/fromAssets;

    if-nez v4, :cond_2

    move-object v1, v2

    goto :goto_3

    .line 21369
    :cond_2
    invoke-virtual {v3, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v1

    .line 21370
    instance-of v3, v1, Lo/fromAssets;

    if-eqz v3, :cond_3

    .line 21371
    check-cast v1, Lo/fromAssets;

    goto :goto_2

    .line 21373
    :cond_3
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v1, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v1

    .line 22111
    :goto_2
    iget-object v1, v1, Lo/fromAssets;->onMessageChannelReady:Landroid/graphics/PointF;

    :goto_3
    move-object v7, v0

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v7, v2

    move-object v8, v7

    .line 838
    :goto_4
    sget-object v3, Lo/DataCampaign;->extraCallback:Ljava/util/Map;

    sget-object v4, Lo/DataCampaign;->asInterface:Ljava/util/Map;

    .line 22861
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-nez v0, :cond_5

    goto :goto_5

    .line 22864
    :cond_5
    invoke-interface {v0}, Lo/setMinAndMaxFrame;->onPostMessage()Landroid/graphics/Rect;

    move-result-object v2

    :goto_5
    move-object v6, v2

    .line 23246
    iget-object v10, p0, Lo/DataCampaign;->warmup:Ljava/lang/Object;

    move-object v5, p1

    move-object v9, p2

    move-object v11, p3

    .line 838
    invoke-static/range {v3 .. v11}, Lo/setFontAssetDelegate;->onNavigationEvent(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Lo/setScaleType$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 150
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->asInterface:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 152
    iget-boolean v0, p0, Lo/DataCampaign;->postMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    invoke-virtual {v0, p0}, Lo/BECampaign;->onNavigationEvent(Lo/BECampaign$ICustomTabsCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lo/DataCampaign;->getInterfaceDescriptor:Z

    .line 158
    invoke-direct {p0}, Lo/DataCampaign;->onPostMessage()V

    .line 159
    iput-boolean v0, p0, Lo/DataCampaign;->ICustomTabsCallback:Z

    .line 168
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    instance-of v0, v0, Lo/DataCampaign$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    check-cast v0, Lo/DataCampaign$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/CampaignJsonAdapter;->extraCallback()V

    goto :goto_0

    .line 171
    :cond_1
    iput-object v1, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    .line 175
    :goto_0
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {v0}, Lo/setMinAndMaxFrame;->extraCallback()V

    .line 177
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {v0, v1}, Lo/setMinAndMaxFrame;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iput-object v1, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    .line 180
    :cond_2
    iput-object v1, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 182
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    :cond_3
    iput-object p1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lo/DataCampaign;->warmup:Ljava/lang/Object;

    .line 187
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/WorkDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 809
    invoke-virtual {p0, p2}, Lo/DataCampaign;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 12335
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez v0, :cond_0

    .line 12336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object v0

    .line 12753
    :cond_0
    iget-object v1, p0, Lo/DataCampaign;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 810
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lo/CampaignResponseJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 13342
    iget-object v0, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    if-nez p3, :cond_2

    move-object p3, v3

    goto :goto_1

    .line 13857
    :cond_2
    invoke-interface {p3}, Lo/WorkDatabase;->onMessageChannelReady()Ljava/util/Map;

    move-result-object p3

    :goto_1
    invoke-virtual {p0, p2}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 13856
    invoke-direct {p0, p3, v1, v3}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lo/setScaleType$extraCallback;

    move-result-object p3

    .line 811
    invoke-interface {v0, p1, p2, p3}, Lo/setScaleType;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Object;FZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/WorkDatabase<",
            "TT;>;TT;FZZZ)V"
        }
    .end annotation

    .line 601
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 605
    invoke-direct {p0, p1, p2}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ignore_old_datasource @ onNewResult"

    .line 606
    invoke-direct {p0, p1, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p0, p3}, Lo/DataCampaign;->onPostMessage(Ljava/lang/Object;)V

    .line 608
    invoke-interface {p2}, Lo/WorkDatabase;->asInterface()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 611
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    if-eqz p5, :cond_1

    sget-object v1, Lo/Attribute$onMessageChannelReady;->newSession:Lo/Attribute$onMessageChannelReady;

    goto :goto_0

    :cond_1
    sget-object v1, Lo/Attribute$onMessageChannelReady;->warmup:Lo/Attribute$onMessageChannelReady;

    :goto_0
    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    :try_start_2
    invoke-virtual {p0, p3}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 623
    :try_start_3
    iget-object v1, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    .line 624
    iget-object v2, p0, Lo/DataCampaign;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 625
    iput-object p3, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    .line 626
    iput-object v0, p0, Lo/DataCampaign;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "release_previous_result @ onNewResult"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p5, :cond_2

    :try_start_4
    const-string/jumbo p4, "set_final_result @ onNewResult"

    .line 630
    invoke-direct {p0, p4, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 631
    iput-object p4, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    .line 632
    iget-object p4, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {p4, v0, v4, p6}, Lo/setMinAndMaxFrame;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;FZ)V

    .line 633
    invoke-direct {p0, p1, p3, p2}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/WorkDatabase;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-eqz p7, :cond_3

    const-string/jumbo p4, "set_temporary_result @ onNewResult"

    .line 635
    invoke-direct {p0, p4, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    iget-object p4, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {p4, v0, v4, p6}, Lo/setMinAndMaxFrame;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;FZ)V

    .line 637
    invoke-direct {p0, p1, p3, p2}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/WorkDatabase;)V

    goto :goto_2

    :cond_3
    const-string/jumbo p2, "set_intermediate_result @ onNewResult"

    .line 640
    invoke-direct {p0, p2, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    iget-object p2, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {p2, v0, p4, p6}, Lo/setMinAndMaxFrame;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;FZ)V

    .line 6798
    invoke-virtual {p0, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7335
    iget-object p4, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez p4, :cond_4

    .line 7336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object p4

    goto :goto_1

    .line 7338
    :cond_4
    iget-object p4, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    .line 6799
    :goto_1
    invoke-interface {p4, p1, p2}, Lo/CampaignResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7342
    iget-object p4, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    .line 6800
    invoke-interface {p4, p1, p2}, Lo/setScaleType;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 647
    :try_start_5
    invoke-virtual {p0, v2}, Lo/DataCampaign;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz v1, :cond_6

    if-eq v1, p3, :cond_6

    .line 650
    invoke-direct {p0, v3, v1}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p0, v1}, Lo/DataCampaign;->onPostMessage(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 655
    :cond_6
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :goto_3
    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_7

    .line 647
    :try_start_6
    invoke-virtual {p0, v2}, Lo/DataCampaign;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    if-eqz v1, :cond_8

    if-eq v1, p3, :cond_8

    .line 650
    invoke-direct {p0, v3, v1}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p0, v1}, Lo/DataCampaign;->onPostMessage(Ljava/lang/Object;)V

    :cond_8
    throw p1

    :catch_0
    move-exception p4

    const-string p6, "drawable_failed @ onNewResult"

    .line 618
    invoke-direct {p0, p6, p3}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p0, p3}, Lo/DataCampaign;->onPostMessage(Ljava/lang/Object;)V

    .line 620
    invoke-direct {p0, p1, p2, p4, p5}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 655
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_1
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 656
    throw p1
.end method

.method private ICustomTabsCallback(Ljava/lang/Throwable;Lo/WorkDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 14857
    :cond_0
    invoke-interface {p2}, Lo/WorkDatabase;->onMessageChannelReady()Ljava/util/Map;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, v0}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 14856
    invoke-direct {p0, p2, v1, v0}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lo/setScaleType$extraCallback;

    move-result-object p2

    .line 15335
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez v0, :cond_1

    .line 15336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object v0

    .line 816
    :cond_1
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lo/CampaignResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15342
    iget-object v0, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    .line 817
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lo/setScaleType;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V

    return-void
.end method

.method private extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 727
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    sget-object v1, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 731
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    const/4 p1, 0x3

    if-eqz p2, :cond_0

    .line 10763
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<null>"

    :goto_0
    aput-object v0, v2, p1

    const/4 p1, 0x4

    .line 735
    invoke-virtual {p0, p2}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "controller %x %s: %s: image: %s %x"

    .line 728
    invoke-static {v1, p1, v2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private extraCallback(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16335
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez v0, :cond_0

    .line 16336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object v0

    .line 822
    :cond_0
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/CampaignResponseJsonAdapter;->extraCallback(Ljava/lang/String;)V

    .line 16342
    iget-object v0, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    .line 823
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lo/setScaleType$extraCallback;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/setScaleType;->onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V

    return-void
.end method

.method private extraCallback(Lo/WorkDatabase;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;TINFO;)V"
        }
    .end annotation

    .line 11335
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez v0, :cond_0

    .line 11336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object v0

    .line 792
    :cond_0
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/DataCampaign;->warmup:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lo/CampaignResponseJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11342
    iget-object v0, p0, Lo/DataCampaign;->onMessageChannelReady:Lo/cancelAnimation;

    .line 793
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/DataCampaign;->warmup:Ljava/lang/Object;

    .line 794
    invoke-virtual {p0}, Lo/DataCampaign;->onMessageChannelReady()Landroid/net/Uri;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 11857
    :cond_1
    invoke-interface {p1}, Lo/WorkDatabase;->onMessageChannelReady()Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 11856
    invoke-direct {p0, p1, p2, v3}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lo/setScaleType$extraCallback;

    move-result-object p1

    .line 794
    invoke-interface {v0, v1, v2, p1}, Lo/setScaleType;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/WorkDatabase<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 663
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 667
    invoke-direct {p0, p1, p2}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 7740
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7741
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 7744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v4, "ignore_old_datasource @ onFailure"

    const-string v1, "controller %x %s: %s: failure: %s"

    move-object v5, p3

    .line 7741
    invoke-static/range {v0 .. v5}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    :cond_0
    invoke-interface {p2}, Lo/WorkDatabase;->asInterface()Z

    .line 670
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 675
    :cond_1
    iget-object p1, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    if-eqz p4, :cond_2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsService:Lo/Attribute$onMessageChannelReady;

    goto :goto_0

    :cond_2
    sget-object v1, Lo/Attribute$onMessageChannelReady;->getInterfaceDescriptor:Lo/Attribute$onMessageChannelReady;

    :goto_0
    invoke-virtual {p1, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    if-eqz p4, :cond_4

    .line 8740
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8741
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 8744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v4, "final_failed @ onFailure"

    const-string v1, "controller %x %s: %s: failure: %s"

    move-object v5, p3

    .line 8741
    invoke-static/range {v0 .. v5}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x0

    .line 680
    iput-object p1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    const/4 p1, 0x1

    .line 681
    iput-boolean p1, p0, Lo/DataCampaign;->extraCommand:Z

    .line 688
    iget-object p1, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    invoke-interface {p1}, Lo/setMinAndMaxFrame;->onNavigationEvent()V

    .line 690
    invoke-direct {p0, p3, p2}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/Throwable;Lo/WorkDatabase;)V

    goto :goto_1

    .line 9740
    :cond_4
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9741
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 9744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v4, "intermediate_failed @ onFailure"

    const-string v1, "controller %x %s: %s: failure: %s"

    move-object v5, p3

    .line 9741
    invoke-static/range {v0 .. v5}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10335
    :cond_5
    iget-object p1, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    if-nez p1, :cond_6

    .line 10336
    invoke-static {}, Lo/CampaignResponse;->ICustomTabsCallback()Lo/CampaignResponseJsonAdapter;

    move-result-object p1

    .line 9804
    :cond_6
    iget-object p2, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lo/CampaignResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    :goto_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;FZ)V
    .locals 6

    .line 23705
    invoke-direct {p0, p1, p2}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 23740
    invoke-static {p1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23741
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 23744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v4, "ignore_old_datasource @ onProgress"

    const-string v1, "controller %x %s: %s: failure: %s"

    .line 23741
    invoke-static/range {v0 .. v5}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23707
    :cond_0
    invoke-interface {p2}, Lo/WorkDatabase;->asInterface()Z

    return-void

    :cond_1
    if-nez p4, :cond_2

    .line 23711
    iget-object p0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    const/4 p1, 0x0

    invoke-interface {p0, p3, p1}, Lo/setMinAndMaxFrame;->onMessageChannelReady(FZ)V

    :cond_2
    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/WorkDatabase<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 716
    iget-object v1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    if-nez v1, :cond_0

    return v0

    .line 723
    :cond_0
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lo/DataCampaign;->updateVisuals:Z

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage()V
    .locals 6

    .line 212
    iget-boolean v0, p0, Lo/DataCampaign;->updateVisuals:Z

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lo/DataCampaign;->updateVisuals:Z

    .line 214
    iput-boolean v1, p0, Lo/DataCampaign;->extraCommand:Z

    .line 216
    iget-object v1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Lo/WorkDatabase;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v1

    .line 218
    iget-object v3, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    invoke-interface {v3}, Lo/WorkDatabase;->asInterface()Z

    .line 219
    iput-object v2, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 221
    :goto_0
    iget-object v3, p0, Lo/DataCampaign;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p0, v3}, Lo/DataCampaign;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_1
    iput-object v2, p0, Lo/DataCampaign;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v3, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {p0, v3}, Lo/DataCampaign;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    const-string v5, "release"

    invoke-direct {p0, v5, v4}, Lo/DataCampaign;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget-object v4, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lo/DataCampaign;->onPostMessage(Ljava/lang/Object;)V

    .line 232
    iput-object v2, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    move-object v2, v3

    :cond_2
    if-eqz v0, :cond_3

    .line 235
    invoke-direct {p0, v1, v2}, Lo/DataCampaign;->extraCallback(Ljava/util/Map;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method static synthetic onPostMessage(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Object;FZZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 56
    invoke-direct/range {v0 .. v7}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Object;FZZZ)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;Z)V

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public final ICustomTabsCallback()V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->asBinder:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 205
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lo/setMinAndMaxFrame;->extraCallback()V

    .line 208
    :cond_0
    invoke-direct {p0}, Lo/DataCampaign;->onPostMessage()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 12

    .line 424
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    const/4 v0, 0x2

    .line 427
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    sget-object v1, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 431
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    iget-boolean v4, p0, Lo/DataCampaign;->updateVisuals:Z

    if-eqz v4, :cond_0

    const-string v4, "request already submitted"

    goto :goto_0

    :cond_0
    const-string v4, "request needs submit"

    :goto_0
    const-string v5, "controller %x %s: onAttach: %s"

    .line 428
    invoke-static {v1, v5, v2, v3, v4}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    :cond_1
    iget-object v1, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v2, Lo/Attribute$onMessageChannelReady;->onTransact:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v1, v2}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 436
    iget-object v1, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 437
    iget-object v1, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    invoke-virtual {v1, p0}, Lo/BECampaign;->onNavigationEvent(Lo/BECampaign$ICustomTabsCallback;)V

    const/4 v1, 0x1

    .line 438
    iput-boolean v1, p0, Lo/DataCampaign;->getInterfaceDescriptor:Z

    .line 439
    iget-boolean v3, p0, Lo/DataCampaign;->updateVisuals:Z

    if-nez v3, :cond_4

    .line 4517
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 4520
    invoke-virtual {p0}, Lo/DataCampaign;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v7, :cond_2

    .line 4522
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 4525
    iput-object v2, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    .line 4526
    iput-boolean v1, p0, Lo/DataCampaign;->updateVisuals:Z

    .line 4527
    iput-boolean v3, p0, Lo/DataCampaign;->extraCommand:Z

    .line 4528
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->postMessage:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 4529
    iget-object v0, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    invoke-virtual {p0, v7}, Lo/DataCampaign;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/DataCampaign;->extraCallback(Lo/WorkDatabase;Ljava/lang/Object;)V

    .line 4530
    iget-object v0, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4531
    iget-object v5, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    iget-object v6, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Object;FZZZ)V

    .line 4532
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 4535
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    goto :goto_1

    .line 4540
    :cond_2
    iget-object v4, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v5, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v4, v5}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 4541
    iget-object v4, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Lo/setMinAndMaxFrame;->onMessageChannelReady(FZ)V

    .line 4542
    iput-boolean v1, p0, Lo/DataCampaign;->updateVisuals:Z

    .line 4543
    iput-boolean v3, p0, Lo/DataCampaign;->extraCommand:Z

    .line 4544
    invoke-virtual {p0}, Lo/DataCampaign;->extraCallback()Lo/WorkDatabase;

    move-result-object v1

    iput-object v1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    .line 4545
    invoke-direct {p0, v1, v2}, Lo/DataCampaign;->extraCallback(Lo/WorkDatabase;Ljava/lang/Object;)V

    .line 4546
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4547
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 4550
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    .line 4552
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "controller %x %s: submitRequest: dataSource: %x"

    .line 4547
    invoke-static {v0, v4, v1, v2, v3}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4554
    :cond_3
    iget-object v0, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    .line 4555
    iget-object v1, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    invoke-interface {v1}, Lo/WorkDatabase;->ICustomTabsCallback()Z

    move-result v1

    .line 4556
    new-instance v2, Lo/DataCampaign$3;

    invoke-direct {v2, p0, v0, v1}, Lo/DataCampaign$3;-><init>(Lo/DataCampaign;Ljava/lang/String;Z)V

    .line 4586
    iget-object v0, p0, Lo/DataCampaign;->mayLaunchUrl:Lo/WorkDatabase;

    iget-object v1, p0, Lo/DataCampaign;->newSession:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lo/WorkDatabase;->onPostMessage(Lo/ConstraintTrackingWorker;Ljava/util/concurrent/Executor;)V

    .line 4587
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 442
    :cond_4
    :goto_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 4215
    :cond_5
    throw v2
.end method

.method public final asBinder()Lo/setMaxFrame;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    return-object v0
.end method

.method public final asInterface()V
    .locals 4

    .line 449
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    const/4 v0, 0x2

    .line 452
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v3, "controller %x %s: onDetach"

    invoke-static {v0, v3, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onRelationshipValidationResult:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lo/DataCampaign;->getInterfaceDescriptor:Z

    .line 457
    iget-object v0, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    invoke-virtual {v0, p0}, Lo/BECampaign;->extraCallback(Lo/BECampaign$ICustomTabsCallback;)V

    .line 458
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method protected abstract extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation
.end method

.method protected abstract extraCallback()Lo/WorkDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/WorkDatabase<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract extraCallback(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 767
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected onMessageChannelReady()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lo/DataCampaign;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lo/DataCampaign;->postMessage:Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/CampaignResponseJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CampaignResponseJsonAdapter<",
            "-TINFO;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 291
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    instance-of v1, v0, Lo/DataCampaign$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lo/DataCampaign$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/CampaignJsonAdapter;->ICustomTabsCallback(Lo/CampaignResponseJsonAdapter;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3073
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3076
    new-instance v1, Lo/DataCampaign$ICustomTabsCallback;

    invoke-direct {v1}, Lo/DataCampaign$ICustomTabsCallback;-><init>()V

    .line 3077
    invoke-virtual {v1, v0}, Lo/CampaignJsonAdapter;->ICustomTabsCallback(Lo/CampaignResponseJsonAdapter;)V

    .line 3078
    invoke-virtual {v1, p1}, Lo/CampaignJsonAdapter;->ICustomTabsCallback(Lo/CampaignResponseJsonAdapter;)V

    .line 3079
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 297
    iput-object v1, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    return-void

    .line 302
    :cond_1
    iput-object p1, p0, Lo/DataCampaign;->ICustomTabsService:Lo/CampaignResponseJsonAdapter;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method

.method protected onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINFO;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onNavigationEvent(Lo/setMaxFrame;)V
    .locals 4

    const/4 v0, 0x2

    .line 366
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    .line 368
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v3, "controller %x %s: setHierarchy: %s"

    .line 367
    invoke-static {v0, v3, v1, v2, p1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    if-eqz p1, :cond_1

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onPostMessage:Lo/Attribute$onMessageChannelReady;

    goto :goto_0

    :cond_1
    sget-object v1, Lo/Attribute$onMessageChannelReady;->extraCallback:Lo/Attribute$onMessageChannelReady;

    :goto_0
    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 373
    iget-boolean v0, p0, Lo/DataCampaign;->updateVisuals:Z

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lo/DataCampaign;->onRelationshipValidationResult:Lo/BECampaign;

    invoke-virtual {v0, p0}, Lo/BECampaign;->onNavigationEvent(Lo/BECampaign$ICustomTabsCallback;)V

    .line 3198
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->asBinder:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 3205
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_2

    .line 3206
    invoke-interface {v0}, Lo/setMinAndMaxFrame;->extraCallback()V

    .line 3208
    :cond_2
    invoke-direct {p0}, Lo/DataCampaign;->onPostMessage()V

    .line 378
    :cond_3
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 379
    invoke-interface {v0, v1}, Lo/setMinAndMaxFrame;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iput-object v1, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    :cond_4
    if-eqz p1, :cond_6

    .line 384
    instance-of v0, p1, Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_5

    .line 385
    check-cast p1, Lo/setMinAndMaxFrame;

    iput-object p1, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    .line 386
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lo/setMinAndMaxFrame;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4111
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method protected final onPostMessage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 411
    iput-object p1, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 412
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0, p1}, Lo/setMinAndMaxFrame;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected abstract onPostMessage(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final onPostMessage(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x2

    .line 478
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lo/DataCampaign;->asBinder:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    const-string v3, "controller %x %s: onTouchEvent %s"

    invoke-static {v0, v3, v1, v2, p1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final onRelationshipValidationResult()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 419
    iget-object v0, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 11119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 776
    iget-boolean v1, p0, Lo/DataCampaign;->getInterfaceDescriptor:Z

    const-string v2, "isAttached"

    .line 777
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/DataCampaign;->updateVisuals:Z

    const-string v2, "isRequestSubmitted"

    .line 778
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/DataCampaign;->extraCommand:Z

    const-string v2, "hasFetchFailed"

    .line 779
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/DataCampaign;->requestPostMessageChannel:Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, v1}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "fetchedImage"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;I)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/DataCampaign;->ICustomTabsCallback$Stub:Lo/Attribute;

    .line 781
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
