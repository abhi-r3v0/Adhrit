.class public Lo/getSettingsFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/readCachedSettings;


# static fields
.field public static ICustomTabsCallback:I

.field private static getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getExpiresAtFrom;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic newSession:Z


# instance fields
.field public ICustomTabsCallback$Stub:Lo/getSettings;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

.field private ICustomTabsService:Ljava/lang/String;

.field public asBinder:Lo/getExpiresAtFrom;

.field public asInterface:Lo/readCachedSettings$onMessageChannelReady;

.field public final extraCallback:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

.field public volatile onNavigationEvent:Z

.field public final onPostMessage:Lo/buildFromJson;

.field public onRelationshipValidationResult:Ljava/nio/ByteBuffer;

.field public onTransact:Ljava/lang/String;

.field private requestPostMessageChannel:Ljava/lang/Boolean;

.field private warmup:Lo/toFeaturesJson$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lo/getSettingsFile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getSettingsFile;->newSession:Z

    const/16 v0, 0x4000

    .line 49
    sput v0, Lo/getSettingsFile;->ICustomTabsCallback:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    sput-object v0, Lo/getSettingsFile;->getInterfaceDescriptor:Ljava/util/List;

    new-instance v1, Lo/defaultSettings;

    invoke-direct {v1}, Lo/defaultSettings;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lo/getSettingsFile;->getInterfaceDescriptor:Ljava/util/List;

    new-instance v1, Lo/buildAppDataFrom;

    invoke-direct {v1}, Lo/buildAppDataFrom;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lo/getSettingsFile;->getInterfaceDescriptor:Ljava/util/List;

    new-instance v1, Lo/SettingsCacheBehavior;

    invoke-direct {v1}, Lo/SettingsCacheBehavior;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lo/getSettingsFile;->getInterfaceDescriptor:Ljava/util/List;

    new-instance v1, Lo/buildSessionDataFrom;

    invoke-direct {v1}, Lo/buildSessionDataFrom;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lo/buildFromJson;Lo/getExpiresAtFrom;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lo/getSettingsFile;->onNavigationEvent:Z

    .line 77
    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    iput-object v1, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    .line 90
    iput-object v1, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    .line 93
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 96
    iput-object v1, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;

    .line 98
    iput-object v1, p0, Lo/getSettingsFile;->ICustomTabsService:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    .line 100
    iput-object v1, p0, Lo/getSettingsFile;->requestPostMessageChannel:Ljava/lang/Boolean;

    .line 102
    iput-object v1, p0, Lo/getSettingsFile;->onTransact:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 125
    iget-object v0, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v1, Lo/readCachedSettings$onMessageChannelReady;->onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    .line 128
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 129
    iput-object p1, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    .line 130
    sget-object p1, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    iput-object p1, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {p2}, Lo/getExpiresAtFrom;->ICustomTabsCallback()Lo/getExpiresAtFrom;

    move-result-object p1

    iput-object p1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    :cond_2
    return-void
.end method

.method private declared-synchronized onMessageChannelReady(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 491
    :try_start_0
    iget-boolean v0, p0, Lo/getSettingsFile;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 492
    monitor-exit p0

    return-void

    .line 494
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    .line 495
    iput-object p2, p0, Lo/getSettingsFile;->ICustomTabsService:Ljava/lang/String;

    .line 496
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/getSettingsFile;->requestPostMessageChannel:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 498
    iput-boolean p1, p0, Lo/getSettingsFile;->onNavigationEvent:Z

    .line 506
    iget-object p1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    if-eqz p1, :cond_1

    .line 507
    iget-object p1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {p1}, Lo/getExpiresAtFrom;->onMessageChannelReady()V

    :cond_1
    const/4 p1, 0x0

    .line 508
    iput-object p1, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onNavigationEvent(ILjava/lang/String;Z)V
    .locals 4

    .line 394
    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

    if-eq v0, v1, :cond_9

    .line 395
    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    .line 397
    sget-boolean v0, Lo/getSettingsFile;->newSession:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 398
    :cond_1
    :goto_0
    sget-object p3, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    iput-object p3, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    .line 399
    invoke-direct {p0, p1, p2, v2}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    return-void

    .line 402
    :cond_2
    iget-object v1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v1}, Lo/getExpiresAtFrom;->onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;

    move-result-object v1

    sget-object v3, Lo/getExpiresAtFrom$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

    if-eq v1, v3, :cond_3

    .line 411
    :try_start_0
    new-instance v1, Lo/toAppJson;

    invoke-direct {v1, p1, p2}, Lo/toAppJson;-><init>(ILjava/lang/String;)V

    .line 11585
    iget-object v3, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v3, v1}, Lo/getExpiresAtFrom;->ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 11639
    iget-object v3, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 413
    iget-object v3, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v3, v1}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    const-string v1, "generated frame is invalid"

    .line 414
    invoke-direct {p0, v0, v1, v2}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    .line 417
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    .line 419
    sget-boolean v1, Lo/getSettingsFile;->newSession:Z

    if-nez v1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 420
    invoke-direct {p0, v0, p2, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 422
    invoke-direct {p0, v0, p2, v2}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    :goto_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_8

    .line 425
    invoke-direct {p0, p1, p2, p3}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    .line 426
    :cond_8
    sget-object p1, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    iput-object p1, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized ICustomTabsCallback(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 447
    :try_start_0
    iget-object p3, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v0, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v0, :cond_0

    .line 448
    monitor-exit p0

    return-void

    .line 463
    :cond_0
    :try_start_1
    iget-object p3, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {p3, p1, p2}, Lo/buildFromJson;->ICustomTabsCallback(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 465
    :try_start_2
    iget-object p2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {p2, p1}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 467
    :goto_0
    iget-object p1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    if-eqz p1, :cond_1

    .line 468
    iget-object p1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {p1}, Lo/getExpiresAtFrom;->onMessageChannelReady()V

    :cond_1
    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;

    .line 471
    sget-object p1, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

    iput-object p1, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    .line 472
    iget-object p1, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/toFeaturesJson;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v0, p1}, Lo/getExpiresAtFrom;->ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 16639
    iget-object v0, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/nio/ByteBuffer;)Z
    .locals 10

    .line 175
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 181
    iget-object v1, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 182
    iput-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 185
    :cond_1
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 187
    iget-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 189
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 191
    :try_start_0
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 1594
    invoke-virtual {v0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 1595
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sget-object v4, Lo/getExpiresAtFrom;->extraCallback:[B

    array-length v4, v4

    if-le v2, v4, :cond_2

    .line 1596
    sget-object v2, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    goto :goto_2

    .line 1597
    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sget-object v4, Lo/getExpiresAtFrom;->extraCallback:[B

    array-length v4, v4

    if-lt v2, v4, :cond_5

    const/4 v2, 0x0

    .line 1601
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1602
    sget-object v4, Lo/getExpiresAtFrom;->extraCallback:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1603
    invoke-virtual {v0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 1604
    sget-object v2, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1607
    :cond_4
    sget-object v2, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    .line 193
    :goto_2
    sget-object v4, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_0 .. :try_end_0} :catch_8

    if-ne v2, v4, :cond_6

    .line 195
    :try_start_1
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2, p0}, Lo/buildFromJson;->extraCallback(Lo/readCachedSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/SettingsDataProvider;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1639
    iget-object v4, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    const/4 v4, -0x3

    .line 2434
    invoke-direct {p0, v4, v2, v1}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V
    :try_end_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_3

    :catch_0
    const/16 v2, 0x3ee

    :try_start_2
    const-string v4, "remote peer closed connection before flashpolicy could be transmitted"

    .line 198
    invoke-direct {p0, v2, v4, v3}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V

    :goto_3
    return v1

    .line 1598
    :cond_5
    new-instance v2, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    sget-object v3, Lo/getExpiresAtFrom;->extraCallback:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_2 .. :try_end_2} :catch_8

    .line 206
    :cond_6
    :try_start_3
    iget-object v2, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v4, Lo/readCachedSettings$onMessageChannelReady;->onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;
    :try_end_3
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_3 .. :try_end_3} :catch_8

    const-string v5, "wrong http function"

    const/16 v6, 0x3ea

    if-ne v2, v4, :cond_e

    .line 207
    :try_start_4
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getExpiresAtFrom;

    .line 209
    invoke-virtual {v4}, Lo/getExpiresAtFrom;->ICustomTabsCallback()Lo/getExpiresAtFrom;

    move-result-object v4
    :try_end_4
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 211
    :try_start_5
    iget-object v7, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    invoke-virtual {v4, v7}, Lo/getExpiresAtFrom;->onNavigationEvent(Lo/readCachedSettings$onMessageChannelReady;)V

    .line 212
    invoke-virtual {v0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v4, v0}, Lo/getExpiresAtFrom;->extraCallback(Ljava/nio/ByteBuffer;)Lo/getAppSettings;

    move-result-object v7

    .line 214
    instance-of v8, v7, Lo/getSettings;

    if-nez v8, :cond_8

    .line 215
    invoke-direct {p0, v6, v5, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    return v1

    .line 218
    :cond_8
    check-cast v7, Lo/getSettings;

    .line 219
    invoke-virtual {v4, v7}, Lo/getExpiresAtFrom;->onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;

    move-result-object v8

    .line 220
    sget-object v9, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    if-ne v8, v9, :cond_7

    .line 221
    invoke-interface {v7}, Lo/getSettings;->extraCallback()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lo/getSettingsFile;->onTransact:Ljava/lang/String;
    :try_end_5
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_5 .. :try_end_5} :catch_8

    .line 224
    :try_start_6
    iget-object v8, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v8}, Lo/buildFromJson;->onNavigationEvent()Lo/getStoredBuildInstanceIdentifier;

    move-result-object v8
    :try_end_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_6 .. :try_end_6} :catch_8

    .line 233
    :try_start_7
    invoke-virtual {v4, v7, v8}, Lo/getExpiresAtFrom;->onPostMessage(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getAppSettings;

    move-result-object v7

    .line 3160
    invoke-static {v7}, Lo/getExpiresAtFrom;->onMessageChannelReady(Lo/getAppSettings;)Ljava/util/List;

    move-result-object v7

    .line 233
    invoke-virtual {p0, v7}, Lo/getSettingsFile;->onPostMessage(Ljava/util/List;)V

    .line 234
    iput-object v4, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    .line 3659
    sget-object v4, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    iput-object v4, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;
    :try_end_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_7 .. :try_end_7} :catch_8

    .line 3661
    :try_start_8
    iget-object v4, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v4}, Lo/buildFromJson;->extraCallback()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_4

    :catch_2
    move-exception v4

    .line 3663
    :try_start_9
    iget-object v7, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v7, v4}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    :goto_4
    return v3

    :catch_3
    move-exception v4

    .line 229
    iget-object v7, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v7, v4}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    const/4 v7, -0x1

    .line 230
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    return v1

    :catch_4
    move-exception v4

    .line 3031
    iget v7, v4, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    .line 226
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V
    :try_end_9
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_9 .. :try_end_9} :catch_8

    return v1

    .line 242
    :cond_9
    :try_start_a
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    if-nez v2, :cond_a

    const-string v2, "no draft matches"

    .line 4434
    invoke-direct {p0, v6, v2, v1}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V

    :cond_a
    return v1

    .line 248
    :cond_b
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v2, v0}, Lo/getExpiresAtFrom;->extraCallback(Ljava/nio/ByteBuffer;)Lo/getAppSettings;

    move-result-object v2

    .line 249
    instance-of v4, v2, Lo/getSettings;

    if-nez v4, :cond_c

    .line 250
    invoke-direct {p0, v6, v5, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    return v1

    .line 253
    :cond_c
    check-cast v2, Lo/getSettings;

    .line 254
    iget-object v4, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v4, v2}, Lo/getExpiresAtFrom;->onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;

    move-result-object v2

    .line 256
    sget-object v4, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    if-ne v2, v4, :cond_d

    .line 4659
    sget-object v2, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    iput-object v2, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;
    :try_end_a
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_a .. :try_end_a} :catch_8

    .line 4661
    :try_start_b
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2}, Lo/buildFromJson;->extraCallback()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_5

    :catch_5
    move-exception v2

    .line 4663
    :try_start_c
    iget-object v4, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v4, v2}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    :goto_5
    return v3

    :cond_d
    const-string v2, "the handshake did finaly not match"

    .line 5434
    invoke-direct {p0, v6, v2, v1}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V

    return v1

    .line 264
    :cond_e
    iget-object v2, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v4, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    if-ne v2, v4, :cond_15

    .line 265
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    iget-object v4, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    invoke-virtual {v2, v4}, Lo/getExpiresAtFrom;->onNavigationEvent(Lo/readCachedSettings$onMessageChannelReady;)V

    .line 266
    iget-object v2, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v2, v0}, Lo/getExpiresAtFrom;->extraCallback(Ljava/nio/ByteBuffer;)Lo/getAppSettings;

    move-result-object v2

    .line 267
    instance-of v4, v2, Lo/getStoredBuildInstanceIdentifier;

    if-nez v4, :cond_f

    .line 268
    invoke-direct {p0, v6, v5, v1}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    return v1

    .line 271
    :cond_f
    check-cast v2, Lo/getStoredBuildInstanceIdentifier;

    .line 272
    iget-object v4, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    iget-object v5, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub:Lo/getSettings;

    invoke-virtual {v4, v5, v2}, Lo/getExpiresAtFrom;->onNavigationEvent(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getExpiresAtFrom$onMessageChannelReady;

    move-result-object v2

    .line 273
    sget-object v4, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    if-ne v2, v4, :cond_10

    .line 6659
    sget-object v2, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    iput-object v2, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;
    :try_end_c
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_c .. :try_end_c} :catch_8

    .line 6661
    :try_start_d
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2}, Lo/buildFromJson;->extraCallback()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    :catch_6
    move-exception v2

    .line 6663
    :try_start_e
    iget-object v4, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v4, v2}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    :goto_6
    return v3

    .line 287
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draft "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7434
    invoke-direct {p0, v6, v2, v1}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V
    :try_end_e
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_8

    :catch_7
    move-exception v2

    .line 8031
    :try_start_f
    iget v3, v2, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    .line 7534
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V
    :try_end_f
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    .line 294
    iget-object v3, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-nez v3, :cond_14

    .line 295
    invoke-virtual {v0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 9017
    iget v3, v2, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->onMessageChannelReady:I

    if-nez v3, :cond_11

    .line 298
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    goto :goto_7

    .line 300
    :cond_11
    sget-boolean v4, Lo/getSettingsFile;->newSession:Z

    if-nez v4, :cond_13

    .line 10017
    iget v2, v2, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->onMessageChannelReady:I

    .line 300
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v2, v0, :cond_12

    goto :goto_7

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 302
    :cond_13
    :goto_7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_8

    .line 307
    :cond_14
    iget-object p1, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 308
    iget-object p1, p0, Lo/getSettingsFile;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :cond_15
    :goto_8
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 701
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/net/InetSocketAddress;
    .locals 1

    .line 716
    iget-object v0, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v0}, Lo/buildFromJson;->onPostMessage()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x0

    .line 318
    :try_start_0
    iget-object v1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v1, p1}, Lo/getExpiresAtFrom;->onNavigationEvent(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toFeaturesJson;

    .line 322
    invoke-interface {v1}, Lo/toFeaturesJson;->onTransact()Lo/toFeaturesJson$onMessageChannelReady;

    move-result-object v2

    .line 323
    invoke-interface {v1}, Lo/toFeaturesJson;->onNavigationEvent()Z

    move-result v3

    .line 325
    sget-object v4, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v2, v4, :cond_4

    const/16 v2, 0x3ed

    const-string v3, ""

    .line 328
    instance-of v4, v1, Lo/SettingsController;

    if-eqz v4, :cond_1

    .line 329
    check-cast v1, Lo/SettingsController;

    .line 330
    invoke-interface {v1}, Lo/SettingsController;->ICustomTabsCallback()I

    move-result v2

    .line 331
    invoke-interface {v1}, Lo/SettingsController;->extraCallback()Ljava/lang/String;

    move-result-object v3

    .line 333
    :cond_1
    iget-object v1, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v4, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    .line 335
    invoke-virtual {p0, v2, v3, v5}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v1}, Lo/getExpiresAtFrom;->onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;

    move-result-object v1

    sget-object v4, Lo/getExpiresAtFrom$ICustomTabsCallback;->onPostMessage:Lo/getExpiresAtFrom$ICustomTabsCallback;

    if-ne v1, v4, :cond_3

    .line 339
    invoke-direct {p0, v2, v3, v5}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0, v2, v3, v0}, Lo/getSettingsFile;->onMessageChannelReady(ILjava/lang/String;Z)V

    goto :goto_0

    .line 344
    :cond_4
    sget-object v4, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v2, v4, :cond_5

    .line 345
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2, p0, v1}, Lo/buildFromJson;->onPostMessage(Lo/readCachedSettings;Lo/toFeaturesJson;)V

    goto :goto_0

    .line 347
    :cond_5
    sget-object v4, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v4, :cond_0

    const/16 v4, 0x3ea

    if-eqz v3, :cond_a

    .line 350
    sget-object v5, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v2, v5, :cond_6

    goto :goto_1

    .line 368
    :cond_6
    iget-object v3, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    if-nez v3, :cond_9

    .line 370
    sget-object v3, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, v3, :cond_7

    .line 372
    :try_start_1
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v1}, Lo/toFeaturesJson;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lo/SettingsDataProvider;->extraCallback(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/buildFromJson;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 374
    :try_start_2
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2, v1}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    goto :goto_0

    .line 376
    :cond_7
    sget-object v3, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;
    :try_end_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v2, v3, :cond_8

    .line 378
    :try_start_3
    invoke-interface {v1}, Lo/toFeaturesJson;->onPostMessage()Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 380
    :try_start_4
    iget-object v2, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v2, v1}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 383
    :cond_8
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v1, "non control or continious frame expected"

    invoke-direct {p1, v4, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 369
    :cond_9
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v1, "Continuous frame sequence not completed."

    invoke-direct {p1, v4, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 351
    :cond_a
    :goto_1
    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v1, :cond_c

    .line 352
    iget-object v1, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    if-nez v1, :cond_b

    .line 354
    iput-object v2, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    goto/16 :goto_0

    .line 353
    :cond_b
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v1, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v4, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    const-string v1, "Continuous frame sequence was not started."

    if-eqz v3, :cond_e

    .line 356
    :try_start_5
    iget-object v2, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    .line 358
    iput-object v1, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    goto/16 :goto_0

    .line 357
    :cond_d
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    invoke-direct {p1, v4, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 359
    :cond_e
    iget-object v2, p0, Lo/getSettingsFile;->warmup:Lo/toFeaturesJson$onMessageChannelReady;

    if-eqz v2, :cond_f

    goto/16 :goto_0

    .line 360
    :cond_f
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    invoke-direct {p1, v4, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_5
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_10
    return-void

    :catch_2
    move-exception p1

    .line 387
    iget-object v1, p0, Lo/getSettingsFile;->onPostMessage:Lo/buildFromJson;

    invoke-interface {v1, p1}, Lo/buildFromJson;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 11031
    iget v1, p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    .line 10534
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lo/getSettingsFile;->onNavigationEvent(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 675
    sget-boolean v0, Lo/getSettingsFile;->newSession:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lo/getSettingsFile;->onNavigationEvent:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 676
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()V
    .locals 5

    .line 11696
    iget-object v0, p0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    .line 512
    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 12476
    invoke-virtual {p0, v0, v3, v2}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void

    .line 514
    :cond_0
    iget-boolean v0, p0, Lo/getSettingsFile;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lo/getSettingsFile;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lo/getSettingsFile;->ICustomTabsService:Ljava/lang/String;

    iget-object v2, p0, Lo/getSettingsFile;->requestPostMessageChannel:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v0}, Lo/getExpiresAtFrom;->onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/getExpiresAtFrom$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

    const/16 v4, 0x3e8

    if-ne v0, v1, :cond_2

    .line 13476
    invoke-virtual {p0, v4, v3, v2}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void

    .line 518
    :cond_2
    iget-object v0, p0, Lo/getSettingsFile;->asBinder:Lo/getExpiresAtFrom;

    invoke-virtual {v0}, Lo/getExpiresAtFrom;->onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/getExpiresAtFrom$ICustomTabsCallback;->extraCallback:Lo/getExpiresAtFrom$ICustomTabsCallback;

    if-ne v0, v1, :cond_3

    .line 519
    iget-object v0, p0, Lo/getSettingsFile;->asInterface:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v1, Lo/readCachedSettings$onMessageChannelReady;->onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;

    if-eq v0, v1, :cond_3

    .line 15476
    invoke-virtual {p0, v4, v3, v2}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void

    :cond_3
    const/16 v0, 0x3ee

    .line 16476
    invoke-virtual {p0, v0, v3, v2}, Lo/getSettingsFile;->ICustomTabsCallback(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 651
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 17639
    iget-object v1, p0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 706
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
