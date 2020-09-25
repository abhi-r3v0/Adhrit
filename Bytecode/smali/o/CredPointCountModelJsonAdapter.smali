.class public Lo/CredPointCountModelJsonAdapter;
.super Lo/DataCampaign;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/DataCampaign<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/AFHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final asInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/getRotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Lo/invalidateSpanInfo;

.field private ICustomTabsService:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/registerConversionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/AFFacebookDeferredDeeplink$5;

.field public extraCallback:Z

.field private extraCommand:Lo/getHostPrefix;

.field private getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

.field private mayLaunchUrl:[Lo/getHostPrefix;

.field private newSession:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Lo/WorkDatabase<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Lo/CampaignDatabase;

.field private requestPostMessageChannel:Lo/getHostPrefix;

.field private updateVisuals:Lo/stopLoading$onPostMessage;

.field private warmup:Lo/getRotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lo/CredPointCountModelJsonAdapter;

    sput-object v0, Lo/CredPointCountModelJsonAdapter;->asInterface:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lo/BECampaign;Lo/AFFacebookDeferredDeeplink$5;Ljava/util/concurrent/Executor;Lo/getReferrerClickTimestampSeconds;Lo/getRotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/BECampaign;",
            "Lo/AFFacebookDeferredDeeplink$5;",
            "Ljava/util/concurrent/Executor;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p2, p4}, Lo/DataCampaign;-><init>(Lo/BECampaign;Ljava/util/concurrent/Executor;)V

    .line 112
    new-instance p2, Lo/ensureLogoView$ICustomTabsCallback;

    invoke-direct {p2, p1, p3}, Lo/ensureLogoView$ICustomTabsCallback;-><init>(Landroid/content/res/Resources;Lo/AFFacebookDeferredDeeplink$5;)V

    iput-object p2, p0, Lo/CredPointCountModelJsonAdapter;->asBinder:Lo/AFFacebookDeferredDeeplink$5;

    .line 113
    iput-object p6, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback$Stub:Lo/getRotation;

    .line 114
    iput-object p5, p0, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/getRotation;Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;",
            "Lo/convertToJsonObject;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lo/getRotation;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AFFacebookDeferredDeeplink$5;

    .line 311
    invoke-interface {v1, p1}, Lo/AFFacebookDeferredDeeplink$5;->onNavigationEvent(Lo/convertToJsonObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {v1, p1}, Lo/AFFacebookDeferredDeeplink$5;->extraCallback(Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private ICustomTabsCallback(Lo/convertToJsonObject;)V
    .locals 3

    .line 336
    iget-boolean v0, p0, Lo/CredPointCountModelJsonAdapter;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Lo/MetadataJsonAdapter;

    invoke-direct {v0}, Lo/MetadataJsonAdapter;-><init>()V

    .line 342
    new-instance v1, Lo/Metadata;

    invoke-direct {v1, v0}, Lo/Metadata;-><init>(Lo/DataCampaignJsonAdapter;)V

    .line 344
    new-instance v2, Lo/stopLoading$onPostMessage;

    invoke-direct {v2}, Lo/stopLoading$onPostMessage;-><init>()V

    iput-object v2, p0, Lo/CredPointCountModelJsonAdapter;->updateVisuals:Lo/stopLoading$onPostMessage;

    .line 345
    invoke-virtual {p0, v1}, Lo/DataCampaign;->onMessageChannelReady(Lo/CampaignResponseJsonAdapter;)V

    .line 346
    invoke-virtual {p0, v0}, Lo/CredPointCountModelJsonAdapter;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_1
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->updateVisuals:Lo/stopLoading$onPostMessage;

    invoke-virtual {p0, v0}, Lo/CredPointCountModelJsonAdapter;->onMessageChannelReady(Lo/CampaignDatabase;)V

    .line 353
    :cond_2
    invoke-virtual {p0}, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/MetadataJsonAdapter;

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p0}, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/MetadataJsonAdapter;

    invoke-direct {p0, p1, v0}, Lo/CredPointCountModelJsonAdapter;->extraCallback(Lo/convertToJsonObject;Lo/MetadataJsonAdapter;)V

    :cond_3
    return-void
.end method

.method private extraCallback(Lo/convertToJsonObject;Lo/MetadataJsonAdapter;)V
    .locals 2

    .line 11241
    iget-object v0, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "none"

    .line 12125
    :goto_0
    iput-object v0, p2, Lo/MetadataJsonAdapter;->extraCallback:Ljava/lang/String;

    .line 12126
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12354
    iget-object v0, p0, Lo/DataCampaign;->onNavigationEvent:Lo/setMinAndMaxFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v0}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lo/setFailureListener;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)Lo/fromAssets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13085
    iget-object v0, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    move-object v1, v0

    .line 13166
    :cond_1
    iput-object v1, p2, Lo/MetadataJsonAdapter;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 376
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->updateVisuals:Lo/stopLoading$onPostMessage;

    .line 14024
    iget v0, v0, Lo/stopLoading$onPostMessage;->onNavigationEvent:I

    .line 377
    invoke-static {v0}, Lo/extraCallback;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v0}, Lo/UnobservedTaskException;->ICustomTabsCallback(I)I

    move-result v0

    .line 14147
    iput-object v1, p2, Lo/MetadataJsonAdapter;->asBinder:Ljava/lang/String;

    .line 14148
    iput v0, p2, Lo/MetadataJsonAdapter;->asInterface:I

    .line 14149
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    if-eqz p1, :cond_2

    .line 382
    invoke-virtual {p1}, Lo/convertToJsonObject;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p1}, Lo/convertToJsonObject;->onPostMessage()I

    move-result v1

    .line 15135
    iput v0, p2, Lo/MetadataJsonAdapter;->onMessageChannelReady:I

    .line 15136
    iput v1, p2, Lo/MetadataJsonAdapter;->ICustomTabsCallback:I

    .line 15137
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 383
    invoke-virtual {p1}, Lo/convertToJsonObject;->ICustomTabsCallback()I

    move-result p1

    .line 15154
    iput p1, p2, Lo/MetadataJsonAdapter;->onNavigationEvent:I

    return-void

    .line 385
    :cond_2
    invoke-virtual {p2}, Lo/MetadataJsonAdapter;->onMessageChannelReady()V

    return-void
.end method

.method private onMessageChannelReady(Lo/getRootAlpha;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 274
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 277
    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/convertToJsonObject;

    .line 280
    invoke-direct {p0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/convertToJsonObject;)V

    .line 282
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->warmup:Lo/getRotation;

    .line 283
    invoke-static {v0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/getRotation;Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    .line 288
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback$Stub:Lo/getRotation;

    invoke-static {v0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/getRotation;Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 299
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    .line 293
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->asBinder:Lo/AFFacebookDeferredDeeplink$5;

    invoke-interface {v0, p1}, Lo/AFFacebookDeferredDeeplink$5;->extraCallback(Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 299
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    .line 297
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unrecognized image class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 299
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 300
    throw p1
.end method

.method private onTransact()Lo/getRootAlpha;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 418
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/invalidateSpanInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->onRelationshipValidationResult:Lo/getReferrerClickTimestampSeconds;

    iget-object v2, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/invalidateSpanInfo;

    invoke-interface {v0, v2}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/convertToJsonObject;

    invoke-virtual {v2}, Lo/convertToJsonObject;->asBinder()Lo/AFKeystoreWrapper;

    move-result-object v2

    invoke-interface {v2}, Lo/AFKeystoreWrapper;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v1

    :cond_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 430
    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    check-cast p1, Lo/getRootAlpha;

    invoke-direct {p0, p1}, Lo/CredPointCountModelJsonAdapter;->onMessageChannelReady(Lo/getRootAlpha;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/setPivotX;Ljava/lang/String;Lo/invalidateSpanInfo;Ljava/lang/Object;Lo/getRotation;Lo/CampaignDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPivotX<",
            "Lo/WorkDatabase<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lo/invalidateSpanInfo;",
            "Ljava/lang/Object;",
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;",
            "Lo/CampaignDatabase;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 136
    invoke-super {p0, p2, p4}, Lo/DataCampaign;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1227
    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->newSession:Lo/setPivotX;

    const/4 p1, 0x0

    .line 1229
    invoke-direct {p0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/convertToJsonObject;)V

    .line 138
    iput-object p3, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/invalidateSpanInfo;

    .line 2180
    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->warmup:Lo/getRotation;

    .line 2221
    monitor-enter p0

    .line 2222
    :try_start_0
    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    .line 2223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-direct {p0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/convertToJsonObject;)V

    .line 142
    invoke-virtual {p0, p1}, Lo/CredPointCountModelJsonAdapter;->onMessageChannelReady(Lo/CampaignDatabase;)V

    .line 143
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 2223
    monitor-exit p0

    throw p1
.end method

.method public final synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 65
    check-cast p1, Lo/getRootAlpha;

    .line 21391
    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21392
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AFHelper;

    return-object p1

    .line 22162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final extraCallback()Lo/WorkDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/WorkDatabase<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    .line 258
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    const/4 v0, 0x2

    .line 261
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lo/CredPointCountModelJsonAdapter;->asInterface:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->newSession:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WorkDatabase;

    .line 265
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0
.end method

.method public final extraCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 407
    instance-of v0, p1, Lo/DiagnosticsWorker;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lo/DiagnosticsWorker;

    invoke-interface {p1}, Lo/DiagnosticsWorker;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 65
    check-cast p1, Lo/getRootAlpha;

    if-eqz p1, :cond_0

    .line 20397
    invoke-virtual {p1}, Lo/getRootAlpha;->asBinder()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Landroid/net/Uri;
    .locals 5

    .line 467
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->extraCommand:Lo/getHostPrefix;

    iget-object v1, p0, Lo/CredPointCountModelJsonAdapter;->requestPostMessageChannel:Lo/getHostPrefix;

    iget-object v2, p0, Lo/CredPointCountModelJsonAdapter;->mayLaunchUrl:[Lo/getHostPrefix;

    sget-object v3, Lo/getHostPrefix;->mayLaunchUrl:Lo/setRotation;

    if-eqz v0, :cond_0

    .line 17021
    invoke-interface {v3, v0}, Lo/setRotation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    .line 17025
    array-length v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    .line 17028
    aget-object v0, v2, v0

    invoke-interface {v3, v0}, Lo/setRotation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 17032
    invoke-interface {v3, v1}, Lo/setRotation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/CampaignDatabase;)V
    .locals 4

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    instance-of v0, v0, Lo/ExecutorException;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    check-cast v0, Lo/ExecutorException;

    .line 200
    invoke-virtual {v0, p1}, Lo/ExecutorException;->onNavigationEvent(Lo/CampaignDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lo/ExecutorException;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/CampaignDatabase;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/ExecutorException;-><init>([Lo/CampaignDatabase;)V

    iput-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 205
    :cond_1
    :try_start_2
    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/registerConversionListener;)V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    .line 187
    :cond_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-direct {p0}, Lo/CredPointCountModelJsonAdapter;->onTransact()Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 65
    check-cast p1, Lo/AFHelper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17462
    :cond_0
    invoke-interface {p1}, Lo/AFHelper;->ICustomTabsCallback$Stub()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 65
    check-cast p2, Lo/getRootAlpha;

    .line 18438
    invoke-super {p0, p1, p2}, Lo/DataCampaign;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18439
    monitor-enter p0

    .line 18440
    :try_start_0
    iget-object p2, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    if-eqz p2, :cond_0

    .line 18441
    iget-object p2, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    const/4 v0, 0x6

    const/4 v1, 0x1

    const-string v2, "PipelineDraweeController"

    invoke-interface {p2, p1, v0, v1, v2}, Lo/CampaignDatabase;->ICustomTabsCallback(Ljava/lang/String;IZLjava/lang/String;)V

    .line 18444
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/CampaignDatabase;)V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    instance-of v0, v0, Lo/ExecutorException;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    check-cast v0, Lo/ExecutorException;

    .line 212
    invoke-virtual {v0, p1}, Lo/ExecutorException;->extraCallback(Lo/CampaignDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/registerConversionListener;)V
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Lo/setMaxFrame;)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Lo/DataCampaign;->onNavigationEvent(Lo/setMaxFrame;)V

    const/4 p1, 0x0

    .line 324
    invoke-direct {p0, p1}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/convertToJsonObject;)V

    return-void
.end method

.method public final declared-synchronized onPostMessage()Lo/registerConversionListener;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 243
    :try_start_0
    iget-object v1, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Lo/CredPointModel;

    .line 10241
    iget-object v1, p0, Lo/DataCampaign;->onPostMessage:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lo/CredPointCountModelJsonAdapter;->postMessage:Lo/CampaignDatabase;

    invoke-direct {v0, v1, v2}, Lo/CredPointModel;-><init>(Ljava/lang/String;Lo/CampaignDatabase;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 247
    new-instance v1, Lo/evictionCount$onMessageChannelReady;

    iget-object v2, p0, Lo/CredPointCountModelJsonAdapter;->ICustomTabsService:Ljava/util/Set;

    invoke-direct {v1, v2}, Lo/evictionCount$onMessageChannelReady;-><init>(Ljava/util/Set;)V

    if-eqz v0, :cond_1

    .line 11042
    iget-object v2, v1, Lo/evictionCount$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    monitor-exit p0

    return-object v1

    .line 253
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lo/getRootAlpha;

    .line 19402
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void
.end method

.method protected final declared-synchronized onPostMessage(Lo/onPostMessage$extraCallback;Lo/Campaign;Lo/setPivotX;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostMessage$extraCallback;",
            "Lo/Campaign<",
            "Lo/CredPointCountModel;",
            "Lo/getHostPrefix;",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/AFHelper;",
            ">;",
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    .line 4113
    iget-object v3, v0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 4114
    iget-object v3, v0, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v3, 0x0

    .line 3181
    invoke-virtual {v0, v3}, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent(Z)V

    .line 3182
    iget-object v0, v0, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 5071
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback:Ljava/lang/String;

    .line 5072
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->onPostMessage:Lo/getHostPrefix;

    .line 5073
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->onNavigationEvent:Ljava/lang/Object;

    .line 5074
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->onMessageChannelReady:Lo/AFHelper;

    .line 5076
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->asBinder:Lo/getHostPrefix;

    .line 5077
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->onRelationshipValidationResult:Lo/getHostPrefix;

    .line 5078
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->onTransact:[Lo/getHostPrefix;

    .line 5080
    iput v1, v0, Lo/CampaignDatabase_Impl;->extraCommand:I

    .line 5081
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->postMessage:Ljava/lang/String;

    .line 5082
    iput-boolean v3, v0, Lo/CampaignDatabase_Impl;->updateVisuals:Z

    const/4 v3, -0x1

    .line 5084
    iput v3, v0, Lo/CampaignDatabase_Impl;->requestPostMessageChannel:I

    .line 5085
    iput v3, v0, Lo/CampaignDatabase_Impl;->mayLaunchUrl:I

    .line 5087
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub:Ljava/lang/Throwable;

    .line 5089
    iput v3, v0, Lo/CampaignDatabase_Impl;->IPostMessageService:I

    .line 5091
    iput v3, v0, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub$Proxy:I

    .line 5097
    iput-object v2, v0, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

    .line 5099
    invoke-virtual {v0}, Lo/CampaignDatabase_Impl;->onMessageChannelReady()V

    :cond_1
    if-eqz p1, :cond_5

    .line 161
    iget-object v0, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lo/ensureMenuView$ICustomTabsCallback;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v3

    invoke-direct {v0, v3, p0, p3}, Lo/ensureMenuView$ICustomTabsCallback;-><init>(Lo/CoroutineWorker;Lo/CredPointCountModelJsonAdapter;Lo/setPivotX;)V

    iput-object v0, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    .line 164
    :cond_2
    iget-object p3, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    if-eqz p1, :cond_4

    .line 6099
    iget-object v0, p3, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    if-nez v0, :cond_3

    .line 6100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p3, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    .line 6102
    :cond_3
    iget-object p3, p3, Lo/ensureMenuView$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_4
    iget-object p1, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    invoke-virtual {p1, v1}, Lo/ensureMenuView$ICustomTabsCallback;->onNavigationEvent(Z)V

    .line 166
    iget-object p1, p0, Lo/CredPointCountModelJsonAdapter;->getInterfaceDescriptor:Lo/ensureMenuView$ICustomTabsCallback;

    .line 7063
    iget-object p1, p1, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 7131
    iget-object p3, p2, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 7064
    check-cast p3, Lo/getHostPrefix;

    .line 8143
    iput-object p3, p1, Lo/CampaignDatabase_Impl;->asBinder:Lo/getHostPrefix;

    .line 8144
    iput-object v2, p1, Lo/CampaignDatabase_Impl;->onRelationshipValidationResult:Lo/getHostPrefix;

    .line 8145
    iput-object v2, p1, Lo/CampaignDatabase_Impl;->onTransact:[Lo/getHostPrefix;

    .line 9131
    :cond_5
    iget-object p1, p2, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 169
    check-cast p1, Lo/getHostPrefix;

    iput-object p1, p0, Lo/CredPointCountModelJsonAdapter;->extraCommand:Lo/getHostPrefix;

    .line 170
    iput-object v2, p0, Lo/CredPointCountModelJsonAdapter;->mayLaunchUrl:[Lo/getHostPrefix;

    .line 171
    iput-object v2, p0, Lo/CredPointCountModelJsonAdapter;->requestPostMessageChannel:Lo/getHostPrefix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 454
    invoke-super {p0}, Lo/DataCampaign;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "super"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/CredPointCountModelJsonAdapter;->newSession:Lo/setPivotX;

    const-string v2, "dataSourceSupplier"

    .line 455
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
