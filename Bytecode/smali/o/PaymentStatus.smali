.class public final Lo/PaymentStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.implements Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PaymentStatus$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
        "Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady<",
        "Lo/EligibilityPayload<",
        "Lo/ShortCircuitInfoJsonAdapter;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final extraCallback:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lo/PaymentStatus$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:D

.field private ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

.field private ICustomTabsService:Lo/ShortCircuitInfo;

.field private asBinder:Lo/Account$extraCallback;

.field private asInterface:Lo/EligibilityPayload$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EligibilityPayload$onNavigationEvent<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

.field private mayLaunchUrl:Z

.field private newSession:Landroid/os/Handler;

.field private final onMessageChannelReady:Lo/ViewContainerJsonAdapter;

.field private final onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

.field private final onPostMessage:Lo/SessionCallResponse;

.field private final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

.field private requestPostMessageChannel:J

.field private warmup:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lo/PreferredInstrumentsJsonAdapter;->onMessageChannelReady:Lo/PreferredInstrumentsJsonAdapter;

    sput-object v0, Lo/PaymentStatus;->extraCallback:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;

    return-void
.end method

.method public constructor <init>(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;)V
    .locals 6

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 81
    invoke-direct/range {v0 .. v5}, Lo/PaymentStatus;-><init>(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;D)V

    return-void
.end method

.method public constructor <init>(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;D)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lo/PaymentStatus;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    .line 105
    iput-object p3, p0, Lo/PaymentStatus;->onPostMessage:Lo/SessionCallResponse;

    .line 106
    iput-object p2, p0, Lo/PaymentStatus;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    .line 107
    iput-wide p4, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub:D

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    iput-wide p1, p0, Lo/PaymentStatus;->requestPostMessageChannel:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/PaymentStatus;Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lo/PaymentStatus;->ICustomTabsCallback(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method private ICustomTabsCallback(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter;
    .locals 2

    .line 375
    invoke-virtual {p2, p1}, Lo/SessionCallResponseJsonAdapter;->onPostMessage(Lo/SessionCallResponseJsonAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-boolean p2, p2, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz p2, :cond_0

    .line 381
    invoke-virtual {p1}, Lo/SessionCallResponseJsonAdapter;->onNavigationEvent()Lo/SessionCallResponseJsonAdapter;

    move-result-object p1

    :cond_0
    return-object p1

    .line 386
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/PaymentStatus;->onMessageChannelReady(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)J

    move-result-wide v0

    .line 387
    invoke-direct {p0, p1, p2}, Lo/PaymentStatus;->onPostMessage(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)I

    move-result p1

    .line 388
    invoke-virtual {p2, v0, v1, p1}, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback(JI)Lo/SessionCallResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/PaymentStatus;)Lo/ViewContainerJsonAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    return-object p0
.end method

.method private ICustomTabsCallback(Landroid/net/Uri;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lo/PaymentStatus;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iput-object p1, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 319
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentStatus$onMessageChannelReady;

    invoke-virtual {p1}, Lo/PaymentStatus$onMessageChannelReady;->ICustomTabsCallback()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic asInterface(Lo/PaymentStatus;)D
    .locals 2

    .line 40
    iget-wide v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub:D

    return-wide v0
.end method

.method static synthetic extraCallback(Lo/PaymentStatus;)Lo/NetBankingInstrumentJsonAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    return-object p0
.end method

.method private extraCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 336
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 337
    new-instance v3, Lo/PaymentStatus$onMessageChannelReady;

    invoke-direct {v3, p0, v2}, Lo/PaymentStatus$onMessageChannelReady;-><init>(Lo/PaymentStatus;Landroid/net/Uri;)V

    .line 338
    iget-object v4, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extraCallback(Landroid/net/Uri;J)Z
    .locals 4

    .line 365
    iget-object v0, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    iget-object v3, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;->onNavigationEvent(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private onMessageChannelReady(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)J
    .locals 8

    .line 393
    iget-boolean v0, p2, Lo/SessionCallResponseJsonAdapter;->asInterface:Z

    if-eqz v0, :cond_0

    .line 394
    iget-wide p1, p2, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    return-wide p1

    .line 396
    :cond_0
    iget-object v0, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    .line 401
    :cond_2
    iget-object v2, p1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 402
    invoke-static {p1, p2}, Lo/PaymentStatus;->onNavigationEvent(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 404
    iget-wide p1, p1, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-wide v0, v3, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    .line 405
    iget-wide v4, p2, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget-wide v6, p1, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    .line 406
    invoke-virtual {p1}, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/PaymentStatus;)Lo/Account$extraCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->asBinder:Lo/Account$extraCallback;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/PaymentStatus;Landroid/net/Uri;Lo/SessionCallResponseJsonAdapter;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lo/PaymentStatus;->onPostMessage(Landroid/net/Uri;Lo/SessionCallResponseJsonAdapter;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/PaymentStatus;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->newSession:Landroid/os/Handler;

    return-object p0
.end method

.method private static onNavigationEvent(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;
    .locals 4

    .line 437
    iget-wide v0, p1, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget-wide v2, p0, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 438
    iget-object p0, p0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    .line 439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onNavigationEvent(Landroid/net/Uri;)Z
    .locals 4

    .line 324
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsService:Lo/ShortCircuitInfo;

    iget-object v0, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 325
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 326
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ShortCircuitInfo$onNavigationEvent;

    iget-object v3, v3, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onPostMessage(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)I
    .locals 3

    .line 415
    iget-boolean v0, p2, Lo/SessionCallResponseJsonAdapter;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 416
    iget p1, p2, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    return p1

    .line 419
    :cond_0
    iget-object v0, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 426
    :cond_2
    invoke-static {p1, p2}, Lo/PaymentStatus;->onNavigationEvent(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter;)Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 428
    iget p1, p1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    iget v0, v2, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    .line 430
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    iget p2, p2, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method static synthetic onPostMessage(Lo/PaymentStatus;)Lo/EligibilityPayload$onNavigationEvent;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->asInterface:Lo/EligibilityPayload$onNavigationEvent;

    return-object p0
.end method

.method private onPostMessage(Landroid/net/Uri;Lo/SessionCallResponseJsonAdapter;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    iget-object p1, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    if-nez p1, :cond_0

    .line 352
    iget-boolean p1, p2, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo/PaymentStatus;->mayLaunchUrl:Z

    .line 353
    iget-wide v0, p2, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/PaymentStatus;->requestPostMessageChannel:J

    .line 355
    :cond_0
    iput-object p2, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    .line 356
    iget-object p1, p0, Lo/PaymentStatus;->warmup:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;->onNavigationEvent(Lo/SessionCallResponseJsonAdapter;)V

    .line 358
    :cond_1
    iget-object p1, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 360
    iget-object v0, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;->onRelationshipValidationResult()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic onPostMessage(Lo/PaymentStatus;Landroid/net/Uri;J)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/PaymentStatus;->extraCallback(Landroid/net/Uri;J)Z

    move-result p0

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/PaymentStatus;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/PaymentStatus;->onTransact()Z

    move-result p0

    return p0
.end method

.method static synthetic onTransact(Lo/PaymentStatus;)Landroid/net/Uri;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    return-object p0
.end method

.method private onTransact()Z
    .locals 10

    .line 296
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsService:Lo/ShortCircuitInfo;

    iget-object v0, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 300
    iget-object v6, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ShortCircuitInfo$onNavigationEvent;

    iget-object v7, v7, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/PaymentStatus$onMessageChannelReady;

    .line 301
    invoke-static {v6}, Lo/PaymentStatus$onMessageChannelReady;->onNavigationEvent(Lo/PaymentStatus$onMessageChannelReady;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    .line 302
    invoke-static {v6}, Lo/PaymentStatus$onMessageChannelReady;->onPostMessage(Lo/PaymentStatus$onMessageChannelReady;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 303
    invoke-virtual {v6}, Lo/PaymentStatus$onMessageChannelReady;->ICustomTabsCallback()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 145
    iput-object v0, p0, Lo/PaymentStatus;->getInterfaceDescriptor:Lo/SessionCallResponseJsonAdapter;

    .line 146
    iput-object v0, p0, Lo/PaymentStatus;->ICustomTabsService:Lo/ShortCircuitInfo;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 147
    iput-wide v1, p0, Lo/PaymentStatus;->requestPostMessageChannel:J

    .line 148
    iget-object v1, p0, Lo/PaymentStatus;->onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onMessageChannelReady()V

    .line 149
    iput-object v0, p0, Lo/PaymentStatus;->onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 150
    iget-object v1, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PaymentStatus$onMessageChannelReady;

    .line 151
    invoke-virtual {v2}, Lo/PaymentStatus$onMessageChannelReady;->extraCallback()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lo/PaymentStatus;->newSession:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    iput-object v0, p0, Lo/PaymentStatus;->newSession:Landroid/os/Handler;

    .line 155
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/net/Uri;Lo/Account$extraCallback;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;)V
    .locals 3

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/PaymentStatus;->newSession:Landroid/os/Handler;

    .line 121
    iput-object p2, p0, Lo/PaymentStatus;->asBinder:Lo/Account$extraCallback;

    .line 122
    iput-object p3, p0, Lo/PaymentStatus;->warmup:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;

    .line 123
    new-instance p3, Lo/EligibilityPayload;

    iget-object v0, p0, Lo/PaymentStatus;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    const/4 v1, 0x4

    .line 125
    invoke-interface {v0, v1}, Lo/NetBankingInstrumentJsonAdapter;->ICustomTabsCallback(I)Lo/ResultJsonAdapter;

    move-result-object v0

    iget-object v2, p0, Lo/PaymentStatus;->onPostMessage:Lo/SessionCallResponse;

    .line 128
    invoke-interface {v2}, Lo/SessionCallResponse;->onNavigationEvent()Lo/EligibilityPayload$onNavigationEvent;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Lo/EligibilityPayload;-><init>(Lo/ResultJsonAdapter;Landroid/net/Uri;ILo/EligibilityPayload$onNavigationEvent;)V

    .line 129
    iget-object p1, p0, Lo/PaymentStatus;->onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 130
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/PaymentStatus;->onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 131
    iget-object v0, p0, Lo/PaymentStatus;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    iget v1, p3, Lo/EligibilityPayload;->onPostMessage:I

    .line 135
    invoke-interface {v0, v1}, Lo/ViewContainerJsonAdapter;->onNavigationEvent(I)I

    move-result v0

    .line 132
    invoke-virtual {p1, p3, p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;I)J

    move-result-wide v0

    .line 136
    iget-object p1, p3, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    iget p3, p3, Lo/EligibilityPayload;->onPostMessage:I

    invoke-virtual {p2, p1, p3, v0, v1}, Lo/Account$extraCallback;->onPostMessage(Lo/PaymentRequestJsonAdapter;IJ)V

    return-void
.end method

.method public final ICustomTabsCallback(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback(Landroid/net/Uri;Z)Lo/SessionCallResponseJsonAdapter;
    .locals 1

    .line 175
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentStatus$onMessageChannelReady;

    invoke-virtual {v0}, Lo/PaymentStatus$onMessageChannelReady;->onMessageChannelReady()Lo/SessionCallResponseJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lo/PaymentStatus;->ICustomTabsCallback(Landroid/net/Uri;)V

    :cond_0
    return-object v0
.end method

.method public final extraCallback()Lo/ShortCircuitInfo;
    .locals 1

    .line 170
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsService:Lo/ShortCircuitInfo;

    return-object v0
.end method

.method public final extraCallback(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentStatus$onMessageChannelReady;

    invoke-virtual {p1}, Lo/PaymentStatus$onMessageChannelReady;->onNavigationEvent()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/EligibilityPayload;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EligibilityPayload<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    iget-object v2, v0, Lo/PaymentStatus;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    iget v3, v1, Lo/EligibilityPayload;->onPostMessage:I

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 275
    invoke-interface/range {v2 .. v7}, Lo/ViewContainerJsonAdapter;->onMessageChannelReady(IJLjava/io/IOException;I)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 278
    :goto_0
    iget-object v6, v0, Lo/PaymentStatus;->asBinder:Lo/Account$extraCallback;

    iget-object v7, v1, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    .line 280
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->ICustomTabsCallback()Landroid/net/Uri;

    move-result-object v8

    .line 281
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->extraCallback()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x4

    .line 285
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->onNavigationEvent()J

    move-result-wide v15

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v17, p6

    move/from16 v18, v5

    .line 278
    invoke-virtual/range {v6 .. v18}, Lo/Account$extraCallback;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v5, :cond_1

    .line 288
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    return-object v1

    .line 290
    :cond_1
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object v1

    return-object v1
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lo/PaymentStatus;->onTransact:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface()V

    .line 197
    :cond_0
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lo/PaymentStatus;->extraCallback(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final synthetic onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V
    .locals 7

    .line 40
    move-object v1, p1

    check-cast v1, Lo/EligibilityPayload;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/PaymentStatus;->onNavigationEvent(Lo/EligibilityPayload;JJZ)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/EligibilityPayload;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EligibilityPayload<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 222
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortCircuitInfoJsonAdapter;

    .line 224
    instance-of v2, v1, Lo/SessionCallResponseJsonAdapter;

    if-eqz v2, :cond_0

    .line 226
    iget-object v3, v1, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    invoke-static {v3}, Lo/ShortCircuitInfo;->extraCallback(Ljava/lang/String;)Lo/ShortCircuitInfo;

    move-result-object v3

    goto :goto_0

    .line 228
    :cond_0
    move-object v3, v1

    check-cast v3, Lo/ShortCircuitInfo;

    .line 230
    :goto_0
    iput-object v3, v0, Lo/PaymentStatus;->ICustomTabsService:Lo/ShortCircuitInfo;

    .line 231
    iget-object v4, v0, Lo/PaymentStatus;->onPostMessage:Lo/SessionCallResponse;

    invoke-interface {v4, v3}, Lo/SessionCallResponse;->onNavigationEvent(Lo/ShortCircuitInfo;)Lo/EligibilityPayload$onNavigationEvent;

    move-result-object v4

    iput-object v4, v0, Lo/PaymentStatus;->asInterface:Lo/EligibilityPayload$onNavigationEvent;

    .line 232
    iget-object v4, v3, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ShortCircuitInfo$onNavigationEvent;

    iget-object v4, v4, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    iput-object v4, v0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 233
    iget-object v3, v3, Lo/ShortCircuitInfo;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {p0, v3}, Lo/PaymentStatus;->extraCallback(Ljava/util/List;)V

    .line 234
    iget-object v3, v0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v4, v0, Lo/PaymentStatus;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/PaymentStatus$onMessageChannelReady;

    if-eqz v2, :cond_1

    .line 237
    check-cast v1, Lo/SessionCallResponseJsonAdapter;

    move-wide/from16 v11, p4

    invoke-static {v3, v1, v11, v12}, Lo/PaymentStatus$onMessageChannelReady;->onPostMessage(Lo/PaymentStatus$onMessageChannelReady;Lo/SessionCallResponseJsonAdapter;J)V

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p4

    .line 239
    invoke-virtual {v3}, Lo/PaymentStatus$onMessageChannelReady;->ICustomTabsCallback()V

    .line 241
    :goto_1
    iget-object v4, v0, Lo/PaymentStatus;->asBinder:Lo/Account$extraCallback;

    move-object/from16 v1, p1

    iget-object v5, v1, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->ICustomTabsCallback()Landroid/net/Uri;

    move-result-object v6

    .line 244
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->extraCallback()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x4

    .line 248
    invoke-virtual/range {p1 .. p1}, Lo/EligibilityPayload;->onNavigationEvent()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 241
    invoke-virtual/range {v4 .. v14}, Lo/Account$extraCallback;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/net/Uri;)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentStatus$onMessageChannelReady;

    invoke-virtual {p1}, Lo/PaymentStatus$onMessageChannelReady;->onPostMessage()Z

    move-result p1

    return p1
.end method

.method public final synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .locals 8

    .line 40
    move-object v1, p1

    check-cast v1, Lo/EligibilityPayload;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lo/PaymentStatus;->onMessageChannelReady(Lo/EligibilityPayload;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJ)V
    .locals 6

    .line 40
    move-object v1, p1

    check-cast v1, Lo/EligibilityPayload;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/PaymentStatus;->onMessageChannelReady(Lo/EligibilityPayload;JJ)V

    return-void
.end method

.method public final onNavigationEvent(Lo/EligibilityPayload;JJZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EligibilityPayload<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 257
    iget-object v1, v0, Lo/PaymentStatus;->asBinder:Lo/Account$extraCallback;

    move-object v2, p1

    iget-object v3, v2, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    .line 259
    invoke-virtual {p1}, Lo/EligibilityPayload;->ICustomTabsCallback()Landroid/net/Uri;

    move-result-object v4

    .line 260
    invoke-virtual {p1}, Lo/EligibilityPayload;->extraCallback()Ljava/util/Map;

    move-result-object v5

    .line 264
    invoke-virtual {p1}, Lo/EligibilityPayload;->onNavigationEvent()J

    move-result-wide v10

    const/4 v6, 0x4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 257
    invoke-virtual/range {v1 .. v11}, Lo/Account$extraCallback;->extraCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lo/PaymentStatus;->mayLaunchUrl:Z

    return v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lo/PaymentStatus;->requestPostMessageChannel:J

    return-wide v0
.end method

.method public final onPostMessage(Landroid/net/Uri;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lo/PaymentStatus;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentStatus$onMessageChannelReady;

    invoke-virtual {p1}, Lo/PaymentStatus$onMessageChannelReady;->ICustomTabsCallback()V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/PaymentStatus;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
