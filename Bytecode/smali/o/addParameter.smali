.class public Lo/addParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addParameter$onMessageChannelReady;,
        Lo/addParameter$onPostMessage;,
        Lo/addParameter$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/AxisUpi$1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/generateLink$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addParameter$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Lo/addParameter$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addParameter<",
            "TT;>.onMessageChannelReady;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1<",
            "Lo/setBaseURL;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field final extraCallback:Lo/EmptyActivity;

.field private extraCommand:[B

.field private getInterfaceDescriptor:Lo/AxisUpi$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private newSession:Landroid/os/HandlerThread;

.field final onMessageChannelReady:Lo/addParameter$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addParameter<",
            "TT;>.onPostMessage;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/UUID;

.field private final onPostMessage:Lo/AxisUpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AxisUpi<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:I

.field private postMessage:[B

.field private requestPostMessageChannel:Lo/AxisUpi$onMessageChannelReady;

.field private updateVisuals:Lo/AxisUpi$ICustomTabsCallback;

.field private warmup:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lo/AxisUpi;Lo/addParameter$onNavigationEvent;Ljava/util/List;I[BLjava/util/HashMap;Lo/EmptyActivity;Landroid/os/Looper;Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lo/AxisUpi<",
            "TT;>;",
            "Lo/addParameter$onNavigationEvent<",
            "TT;>;",
            "Ljava/util/List<",
            "Lo/generateLink$extraCallback;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/EmptyActivity;",
            "Landroid/os/Looper;",
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1<",
            "Lo/setBaseURL;",
            ">;I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    .line 144
    :cond_0
    invoke-static {p6}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iput-object p1, p0, Lo/addParameter;->onNavigationEvent:Ljava/util/UUID;

    .line 147
    iput-object p3, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    .line 148
    iput-object p2, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    .line 149
    iput p5, p0, Lo/addParameter;->onTransact:I

    if-eqz p6, :cond_2

    .line 151
    iput-object p6, p0, Lo/addParameter;->postMessage:[B

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lo/addParameter;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/addParameter;->ICustomTabsCallback:Ljava/util/List;

    .line 156
    :goto_0
    iput-object p7, p0, Lo/addParameter;->onRelationshipValidationResult:Ljava/util/HashMap;

    .line 157
    iput-object p8, p0, Lo/addParameter;->extraCallback:Lo/EmptyActivity;

    .line 158
    iput p11, p0, Lo/addParameter;->asInterface:I

    .line 159
    iput-object p10, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    const/4 p1, 0x2

    .line 160
    iput p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    .line 162
    new-instance p1, Lo/addParameter$onPostMessage;

    invoke-direct {p1, p0, p9}, Lo/addParameter$onPostMessage;-><init>(Lo/addParameter;Landroid/os/Looper;)V

    iput-object p1, p0, Lo/addParameter;->onMessageChannelReady:Lo/addParameter$onPostMessage;

    .line 163
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/addParameter;->newSession:Landroid/os/HandlerThread;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 165
    new-instance p1, Lo/addParameter$onMessageChannelReady;

    iget-object p2, p0, Lo/addParameter;->newSession:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lo/addParameter$onMessageChannelReady;-><init>(Lo/addParameter;Landroid/os/Looper;)V

    iput-object p1, p0, Lo/addParameter;->ICustomTabsService:Lo/addParameter$onMessageChannelReady;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/addParameter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private ICustomTabsCallback([BIZ)V
    .locals 3

    .line 390
    :try_start_0
    iget-object v0, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    iget-object v1, p0, Lo/addParameter;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, p0, Lo/addParameter;->onRelationshipValidationResult:Ljava/util/HashMap;

    .line 391
    invoke-interface {v0, p1, v1, p2, v2}, Lo/AxisUpi;->ICustomTabsCallback([BLjava/util/List;ILjava/util/HashMap;)Lo/AxisUpi$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/addParameter;->requestPostMessageChannel:Lo/AxisUpi$onMessageChannelReady;

    .line 392
    iget-object p2, p0, Lo/addParameter;->ICustomTabsService:Lo/addParameter$onMessageChannelReady;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, p3}, Lo/addParameter$onMessageChannelReady;->ICustomTabsCallback(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 394
    invoke-direct {p0, p1}, Lo/addParameter;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method

.method private ICustomTabsCallback(Z)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 276
    invoke-direct {p0}, Lo/addParameter;->warmup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 282
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    invoke-interface {v0}, Lo/AxisUpi;->onMessageChannelReady()[B

    move-result-object v0

    iput-object v0, p0, Lo/addParameter;->extraCommand:[B

    .line 283
    iget-object v0, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    sget-object v2, Lo/setReferrerUID;->onNavigationEvent:Lo/setReferrerUID;

    invoke-virtual {v0, v2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    .line 284
    iget-object v0, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    iget-object v2, p0, Lo/addParameter;->extraCommand:[B

    invoke-interface {v0, v2}, Lo/AxisUpi;->ICustomTabsCallback([B)Lo/AxisUpi$1;

    move-result-object v0

    iput-object v0, p0, Lo/addParameter;->getInterfaceDescriptor:Lo/AxisUpi$1;

    const/4 v0, 0x3

    .line 285
    iput v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 294
    invoke-direct {p0, p1}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 289
    iget-object p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/addParameter$onNavigationEvent;->extraCallback(Lo/addParameter;)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0, v0}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private asInterface()J
    .locals 5

    .line 380
    sget-object v0, Lo/$$c;->onPostMessage:Ljava/util/UUID;

    iget-object v1, p0, Lo/addParameter;->onNavigationEvent:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 384
    :cond_0
    invoke-static {p0}, Lo/AxisTracker$DataSenderTask$1$1;->onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 385
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private extraCallback(Ljava/lang/Exception;)V
    .locals 1

    .line 438
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 439
    iget-object p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/addParameter$onNavigationEvent;->extraCallback(Lo/addParameter;)V

    return-void

    .line 441
    :cond_0
    invoke-direct {p0, p1}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method private newSession()V
    .locals 2

    .line 431
    iget v0, p0, Lo/addParameter;->onTransact:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lo/addParameter;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/addParameter;)I
    .locals 0

    .line 49
    iget p0, p0, Lo/addParameter;->asInterface:I

    return p0
.end method

.method private onNavigationEvent(Ljava/lang/Exception;)V
    .locals 2

    .line 446
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lo/addParameter;->mayLaunchUrl:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 447
    iget-object v0, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    new-instance v1, Lo/generateUserInviteLink;

    invoke-direct {v1, p1}, Lo/generateUserInviteLink;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    .line 448
    iget p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 449
    iput p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method static synthetic onNavigationEvent(Ljava/lang/Exception;Lo/setBaseURL;)V
    .locals 0

    .line 447
    invoke-interface {p1, p0}, Lo/setBaseURL;->onPostMessage(Ljava/lang/Exception;)V

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/addParameter;->updateVisuals:Lo/AxisUpi$ICustomTabsCallback;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lo/addParameter;->warmup()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lo/addParameter;->updateVisuals:Lo/AxisUpi$ICustomTabsCallback;

    .line 307
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lo/addParameter$onNavigationEvent;->extraCallback(Ljava/lang/Exception;)V

    return-void

    .line 313
    :cond_1
    :try_start_0
    iget-object p1, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lo/AxisUpi;->onNavigationEvent([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    iget-object p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    invoke-interface {p1}, Lo/addParameter$onNavigationEvent;->extraCallback()V

    return-void

    :catch_0
    move-exception p1

    .line 315
    iget-object p2, p0, Lo/addParameter;->ICustomTabsCallback$Stub:Lo/addParameter$onNavigationEvent;

    invoke-interface {p2, p1}, Lo/addParameter$onNavigationEvent;->extraCallback(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onNavigationEvent(Z)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 324
    iget v0, p0, Lo/addParameter;->onTransact:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lo/addParameter;->postMessage:[B

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-direct {p0}, Lo/addParameter;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lo/addParameter;->postMessage:[B

    invoke-direct {p0, v0, v1, p1}, Lo/addParameter;->ICustomTabsCallback([BIZ)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lo/addParameter;->postMessage:[B

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-direct {p0, v0, v2, p1}, Lo/addParameter;->ICustomTabsCallback([BIZ)V

    return-void

    .line 349
    :cond_2
    invoke-direct {p0}, Lo/addParameter;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-direct {p0, v0, v2, p1}, Lo/addParameter;->ICustomTabsCallback([BIZ)V

    return-void

    .line 327
    :cond_3
    iget-object v0, p0, Lo/addParameter;->postMessage:[B

    if-nez v0, :cond_4

    .line 328
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-direct {p0, v0, v1, p1}, Lo/addParameter;->ICustomTabsCallback([BIZ)V

    return-void

    .line 329
    :cond_4
    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    invoke-direct {p0}, Lo/addParameter;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    .line 330
    :cond_6
    :goto_1
    invoke-direct {p0}, Lo/addParameter;->asInterface()J

    move-result-wide v3

    .line 331
    iget v0, p0, Lo/addParameter;->onTransact:I

    if-nez v0, :cond_7

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_7

    .line 333
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Lo/JusPayWrapper;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-direct {p0, v0, v2, p1}, Lo/addParameter;->ICustomTabsCallback([BIZ)V

    return-void

    :cond_7
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_8

    .line 337
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 339
    :cond_8
    iput v1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    .line 340
    iget-object p1, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    sget-object v0, Lo/addParameters;->extraCallback:Lo/addParameters;

    invoke-virtual {p1, v0}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    return-void
.end method

.method private onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lo/addParameter;->requestPostMessageChannel:Lo/AxisUpi$onMessageChannelReady;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lo/addParameter;->warmup()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lo/addParameter;->requestPostMessageChannel:Lo/AxisUpi$onMessageChannelReady;

    .line 405
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 406
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lo/addParameter;->extraCallback(Ljava/lang/Exception;)V

    return-void

    .line 411
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 412
    iget p1, p0, Lo/addParameter;->onTransact:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 413
    iget-object p1, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    iget-object v0, p0, Lo/addParameter;->postMessage:[B

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lo/AxisUpi;->onPostMessage([B[B)[B

    .line 414
    iget-object p1, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    sget-object p2, Lo/addParameters;->extraCallback:Lo/addParameters;

    invoke-virtual {p1, p2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    return-void

    .line 416
    :cond_2
    iget-object p1, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-interface {p1, v0, p2}, Lo/AxisUpi;->onPostMessage([B[B)[B

    move-result-object p1

    .line 417
    iget p2, p0, Lo/addParameter;->onTransact:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    iget p2, p0, Lo/addParameter;->onTransact:I

    if-nez p2, :cond_4

    iget-object p2, p0, Lo/addParameter;->postMessage:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 420
    iput-object p1, p0, Lo/addParameter;->postMessage:[B

    :cond_4
    const/4 p1, 0x4

    .line 422
    iput p1, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    .line 423
    iget-object p1, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    sget-object p2, Lo/setReferrerName;->onNavigationEvent:Lo/setReferrerName;

    invoke-virtual {p1, p2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 426
    invoke-direct {p0, p1}, Lo/addParameter;->extraCallback(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic onPostMessage(Lo/addParameter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/addParameter;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private onTransact()Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 370
    :try_start_0
    iget-object v0, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    iget-object v1, p0, Lo/addParameter;->extraCommand:[B

    iget-object v2, p0, Lo/addParameter;->postMessage:[B

    invoke-interface {v0, v1, v2}, Lo/AxisUpi;->extraCallback([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 373
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    invoke-direct {p0, v0}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private warmup()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 456
    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 4

    .line 223
    iget-object v0, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    invoke-interface {v0}, Lo/AxisUpi;->ICustomTabsCallback()Lo/AxisUpi$ICustomTabsCallback;

    move-result-object v0

    iput-object v0, p0, Lo/addParameter;->updateVisuals:Lo/AxisUpi$ICustomTabsCallback;

    .line 224
    iget-object v1, p0, Lo/addParameter;->ICustomTabsService:Lo/addParameter$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lo/addParameter$onMessageChannelReady;->ICustomTabsCallback(ILjava/lang/Object;Z)V

    return-void
.end method

.method public ICustomTabsCallback([B)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback$Stub()Lo/AxisUpi$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lo/addParameter;->getInterfaceDescriptor:Lo/AxisUpi$1;

    return-object v0
.end method

.method public final asBinder()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 247
    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/addParameter;->mayLaunchUrl:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 242
    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 171
    iget v0, p0, Lo/addParameter;->warmup:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/addParameter;->warmup:I

    if-ne v0, v1, :cond_1

    .line 172
    iget v0, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v0, v1, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0, v1}, Lo/addParameter;->ICustomTabsCallback(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lo/addParameter;->onNavigationEvent(Z)V

    :cond_1
    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/Exception;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lo/addParameter;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public onNavigationEvent(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lo/addParameter;->newSession()V

    :goto_0
    return-void
.end method

.method public onNavigationEvent()Z
    .locals 4

    .line 185
    iget v0, p0, Lo/addParameter;->warmup:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/addParameter;->warmup:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 186
    iput v2, p0, Lo/addParameter;->ICustomTabsCallback$Stub$Proxy:I

    .line 187
    iget-object v0, p0, Lo/addParameter;->onMessageChannelReady:Lo/addParameter$onPostMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lo/addParameter;->ICustomTabsService:Lo/addParameter$onMessageChannelReady;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    iput-object v2, p0, Lo/addParameter;->ICustomTabsService:Lo/addParameter$onMessageChannelReady;

    .line 190
    iget-object v0, p0, Lo/addParameter;->newSession:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 191
    iput-object v2, p0, Lo/addParameter;->newSession:Landroid/os/HandlerThread;

    .line 192
    iput-object v2, p0, Lo/addParameter;->getInterfaceDescriptor:Lo/AxisUpi$1;

    .line 193
    iput-object v2, p0, Lo/addParameter;->mayLaunchUrl:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 194
    iput-object v2, p0, Lo/addParameter;->requestPostMessageChannel:Lo/AxisUpi$onMessageChannelReady;

    .line 195
    iput-object v2, p0, Lo/addParameter;->updateVisuals:Lo/AxisUpi$ICustomTabsCallback;

    .line 196
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    if-eqz v0, :cond_0

    .line 197
    iget-object v3, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    invoke-interface {v3, v0}, Lo/AxisUpi;->extraCallback([B)V

    .line 198
    iput-object v2, p0, Lo/addParameter;->extraCommand:[B

    .line 199
    iget-object v0, p0, Lo/addParameter;->asBinder:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    sget-object v2, Lo/setReferrerImageURL;->onPostMessage:Lo/setReferrerImageURL;

    invoke-virtual {v0, v2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lo/addParameter;->ICustomTabsCallback(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 229
    invoke-direct {p0, v0}, Lo/addParameter;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public onRelationshipValidationResult()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lo/addParameter;->extraCommand:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lo/addParameter;->onPostMessage:Lo/AxisUpi;

    invoke-interface {v1, v0}, Lo/AxisUpi;->onMessageChannelReady([B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
