.class public Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/generateInviteUrl;
.implements Lo/addParameter$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/AxisUpi$1;",
        ">",
        "Ljava/lang/Object;",
        "Lo/generateInviteUrl<",
        "TT;>;",
        "Lo/addParameter$onNavigationEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<",
            "TT;>.onMessageChannelReady;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1<",
            "Lo/setBaseURL;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Landroid/os/Looper;

.field private ICustomTabsService:[B

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/addParameter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/addParameter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/UUID;

.field private getInterfaceDescriptor:I

.field private final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/EmptyActivity;

.field private final onPostMessage:Lo/AxisUpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AxisUpi<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:I

.field private final onTransact:Z


# direct methods
.method static synthetic ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    return-object p0
.end method

.method private static extraCallback(Lo/generateLink;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/generateLink;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lo/generateLink$extraCallback;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lo/generateLink;->onPostMessage:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 507
    :goto_0
    iget v3, p0, Lo/generateLink;->onPostMessage:I

    if-ge v2, v3, :cond_4

    .line 508
    invoke-virtual {p0, v2}, Lo/generateLink;->onPostMessage(I)Lo/generateLink$extraCallback;

    move-result-object v3

    .line 509
    invoke-virtual {v3, p1}, Lo/generateLink$extraCallback;->onNavigationEvent(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lo/$$c;->onNavigationEvent:Ljava/util/UUID;

    .line 510
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lo/$$c;->onMessageChannelReady:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lo/generateLink$extraCallback;->onNavigationEvent(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 511
    iget-object v4, v3, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 512
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static synthetic onPostMessage(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;Lo/setBaseURL;)V
    .locals 0

    .line 401
    invoke-interface {p1, p0}, Lo/setBaseURL;->onPostMessage(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public extraCallback()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/addParameter;

    .line 478
    invoke-virtual {v1}, Lo/addParameter;->onPostMessage()V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public extraCallback(Ljava/lang/Exception;)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/addParameter;

    .line 486
    invoke-virtual {v1, p1}, Lo/addParameter;->onMessageChannelReady(Ljava/lang/Exception;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public extraCallback(Lo/addParameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addParameter<",
            "TT;>;)V"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 471
    invoke-virtual {p1}, Lo/addParameter;->ICustomTabsCallback()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Handler;Lo/setBaseURL;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback$Stub:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1, p2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public onPostMessage(Landroid/os/Looper;Lo/generateLink;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lo/generateLink;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback$Stub$Proxy:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback$Stub$Proxy:Landroid/os/Looper;

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;

    if-nez v0, :cond_2

    .line 392
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$onMessageChannelReady;

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsService:[B

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback:Ljava/util/UUID;

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback(Lo/generateLink;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p2

    .line 399
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback:Ljava/util/UUID;

    invoke-direct {p1, p2, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$4;)V

    .line 401
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback$Stub:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    new-instance v0, Lo/ShareInviteHelper;

    invoke-direct {v0, p1}, Lo/ShareInviteHelper;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;)V

    invoke-virtual {p2, v0}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    .line 402
    new-instance p2, Lo/trackInvite;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p2, v0}, Lo/trackInvite;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object p2

    :cond_3
    move-object v5, p2

    goto :goto_2

    :cond_4
    move-object v5, v2

    .line 407
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onTransact:Z

    if-nez p2, :cond_6

    .line 408
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/addParameter;

    move-object v2, p2

    goto :goto_3

    .line 412
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addParameter;

    .line 413
    iget-object v1, v0, Lo/addParameter;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v1, v5}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v2, v0

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 422
    new-instance p2, Lo/addParameter;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback:Ljava/util/UUID;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onPostMessage:Lo/AxisUpi;

    iget v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getInterfaceDescriptor:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsService:[B

    iget-object v8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onMessageChannelReady:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onNavigationEvent:Lo/EmptyActivity;

    iget-object v11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsCallback$Stub:Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget v12, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onRelationshipValidationResult:I

    move-object v1, p2

    move-object v4, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v12}, Lo/addParameter;-><init>(Ljava/util/UUID;Lo/AxisUpi;Lo/addParameter$onNavigationEvent;Ljava/util/List;I[BLjava/util/HashMap;Lo/EmptyActivity;Landroid/os/Looper;Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;I)V

    .line 435
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, p2

    .line 437
    :cond_9
    invoke-virtual {v2}, Lo/addParameter;->onMessageChannelReady()V

    return-object v2
.end method

.method public onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 443
    instance-of v0, p1, Lo/trackInvite;

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    check-cast p1, Lo/addParameter;

    .line 449
    invoke-virtual {p1}, Lo/addParameter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asBinder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addParameter;

    invoke-virtual {v0}, Lo/addParameter;->ICustomTabsCallback()V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onPostMessage(Lo/generateLink;)Z
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->ICustomTabsService:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback(Lo/generateLink;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 363
    iget v0, p1, Lo/generateLink;->onPostMessage:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lo/generateLink;->onPostMessage(I)Lo/generateLink$extraCallback;

    move-result-object v0

    sget-object v3, Lo/$$c;->onMessageChannelReady:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lo/generateLink$extraCallback;->onNavigationEvent(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->extraCallback:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    .line 372
    :cond_2
    :goto_0
    iget-object p1, p1, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "cenc"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "cbc1"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cens"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 380
    :cond_5
    :goto_1
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v1
.end method
