.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$ICustomTabsCallback;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:Z = false

.field public static onPostMessage:Z = false


# instance fields
.field private AudioAttributesCompatParcelizer:Z

.field private AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

.field private AudioAttributesImplBaseParcelizer:I

.field private final ICustomTabsCallback$Stub:Landroid/os/ConditionVariable;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

.field private ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

.field private INotificationSideChannel:J

.field private INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

.field private INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

.field private IPostMessageService:J

.field private IPostMessageService$Stub:J

.field private IPostMessageService$Stub$Proxy:I

.field private IconCompatParcelizer:[B

.field private MediaBrowserCompat:Z

.field private RemoteActionCompatParcelizer:I

.field private final asBinder:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final asInterface:Lo/Constants;

.field private cancel:I

.field private cancelAll:J

.field private connect:Z

.field private disconnect:Z

.field private final extraCallback:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

.field private extraCommand:Landroid/media/AudioTrack;

.field private getDefaultImpl:J

.field private getExtras:J

.field private final getInterfaceDescriptor:Lo/y;

.field private mayLaunchUrl:Lo/r;

.field private final newSession:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private notify:J

.field private final onMessageChannelReady:Lo/u$d;

.field private final onNavigationEvent:Z

.field private final onRelationshipValidationResult:Lo/setBaseDeeplink;

.field private final onTransact:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

.field private read:Ljava/nio/ByteBuffer;

.field private requestPostMessageChannel:Lo/u$b;

.field private setDefaultImpl:F

.field private updateVisuals:Lo/r;

.field private validateRelationship:J

.field private warmup:Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/u$d;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;Z)V
    .locals 4

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady:Lo/u$d;

    .line 343
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

    .line 344
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent:Z

    .line 345
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub:Landroid/os/ConditionVariable;

    .line 346
    new-instance p1, Lo/y;

    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$ICustomTabsCallback;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;)V

    invoke-direct {p1, v0}, Lo/y;-><init>(Lo/y$onNavigationEvent;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    .line 347
    new-instance p1, Lo/Constants;

    invoke-direct {p1}, Lo/Constants;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface:Lo/Constants;

    .line 348
    new-instance p1, Lo/setBaseDeeplink;

    invoke-direct {p1}, Lo/setBaseDeeplink;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onRelationshipValidationResult:Lo/setBaseDeeplink;

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lo/setLogging;

    .line 350
    new-instance v1, Lo/trackAndOpenStore;

    invoke-direct {v1}, Lo/trackAndOpenStore;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface:Lo/Constants;

    aput-object v1, v0, p3

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onRelationshipValidationResult:Lo/setBaseDeeplink;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 355
    invoke-interface {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;->onPostMessage()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p2, v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 356
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onTransact:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, p3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 357
    new-instance p2, Lo/OaidClient$1;

    invoke-direct {p2}, Lo/OaidClient$1;-><init>()V

    aput-object p2, p1, v2

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asBinder:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 358
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setDefaultImpl:F

    .line 359
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    .line 360
    sget-object p1, Lo/u$b;->onMessageChannelReady:Lo/u$b;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel:Lo/u$b;

    .line 361
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 362
    new-instance p1, Lo/OnSupport;

    const/4 p2, 0x0

    invoke-direct {p1, v2, p2}, Lo/OnSupport;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    .line 363
    sget-object p1, Lo/r;->onPostMessage:Lo/r;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    const/4 p1, -0x1

    .line 364
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    new-array p1, v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 365
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, v2, [Ljava/nio/ByteBuffer;

    .line 366
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

    .line 367
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lo/u$d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lo/u$d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lo/u$d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V
    .locals 1

    .line 319
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lo/u$d;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;Z)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    .line 1189
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v7, 0x1

    mul-long v8, p4, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1191
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    .line 1194
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    .line 1195
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1196
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1198
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1200
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v1

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1201
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1202
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    .line 1204
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4

    .line 1206
    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_3

    .line 1208
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    return p5

    :cond_3
    if-ge p5, p4, :cond_4

    return v3

    .line 1215
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_5

    .line 1217
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    return p1

    .line 1220
    :cond_5
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    return p1
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v0

    return-wide v0
.end method

.method private ICustomTabsCallback(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 729
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 733
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    goto :goto_1

    .line 735
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    .line 736
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-ge v0, v2, :cond_5

    .line 737
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 738
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IconCompatParcelizer:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 739
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IconCompatParcelizer:[B

    .line 741
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    .line 742
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IconCompatParcelizer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 743
    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 744
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->RemoteActionCompatParcelizer:I

    .line 747
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 749
    sget v4, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-ge v4, v2, :cond_6

    .line 751
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->notify:J

    invoke-virtual {p2, v1, v2}, Lo/y;->ICustomTabsCallback(J)I

    move-result p2

    if-lez p2, :cond_9

    .line 753
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 754
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IconCompatParcelizer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->RemoteActionCompatParcelizer:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    .line 756
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->RemoteActionCompatParcelizer:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->RemoteActionCompatParcelizer:I

    .line 757
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 760
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    if-eqz v2, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 761
    :goto_2
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 762
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    .line 765
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 768
    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getExtras:J

    if-ltz v3, :cond_d

    .line 774
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-eqz p1, :cond_a

    .line 775
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->notify:J

    int-to-long v1, v3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->notify:J

    :cond_a
    if-ne v3, v0, :cond_c

    .line 778
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-nez p1, :cond_b

    .line 779
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancel:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel:J

    :cond_b
    const/4 p1, 0x0

    .line 781
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    .line 771
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(I)V

    throw p1
.end method

.method private ICustomTabsCallback(Lo/r;J)V
    .locals 8

    .line 1038
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onTransact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

    .line 1040
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;->onMessageChannelReady(Lo/r;)Lo/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lo/r;->onPostMessage:Lo/r;

    :goto_0
    move-object v1, p1

    .line 1043
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    new-instance v7, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;

    const-wide/16 v2, 0x0

    .line 1046
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 1047
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;-><init>(Lo/r;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$2;)V

    .line 1043
    invoke-virtual {p1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession()V

    return-void
.end method

.method private ICustomTabsCallback$Stub$Proxy()V
    .locals 2

    .line 933
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setDefaultImpl:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onPostMessage(Landroid/media/AudioTrack;F)V

    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setDefaultImpl:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback(Landroid/media/AudioTrack;F)V

    :cond_1
    return-void
.end method

.method private ICustomTabsService()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 795
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 800
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 801
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 803
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->ICustomTabsCallback()V

    .line 805
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(J)V

    .line 806
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 810
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    goto :goto_1

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 815
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Ljava/nio/ByteBuffer;J)V

    .line 816
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 820
    :cond_5
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    return v2
.end method

.method private static extraCallback(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x52080

    return p0

    :cond_2
    const p0, 0x2ebae4

    return p0

    :cond_3
    const p0, 0x225510

    return p0

    :cond_4
    const p0, 0x2ee00

    return p0

    :cond_5
    :goto_0
    const p0, 0xbb800

    return p0

    :cond_6
    const p0, 0x13880

    return p0
.end method

.method private static extraCallback(ILjava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 1165
    invoke-static {}, Lo/v;->onPostMessage()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-eq p0, v0, :cond_6

    const/16 v0, 0x12

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    if-ne p0, v0, :cond_3

    .line 1169
    invoke-static {p1}, Lo/u$e;->onPostMessage(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    .line 1171
    invoke-static {p1}, Lo/v;->onPostMessage(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1174
    :cond_4
    invoke-static {p1, p0}, Lo/v;->ICustomTabsCallback(Ljava/nio/ByteBuffer;I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x4

    return p0

    .line 1177
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1167
    :cond_6
    :goto_0
    invoke-static {p1}, Lo/v;->onNavigationEvent(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 1163
    :cond_7
    :goto_1
    invoke-static {p1}, Lo/getLat;->onNavigationEvent(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private extraCallback(J)J
    .locals 5

    const/4 v0, 0x0

    .line 1053
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    .line 1054
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onNavigationEvent(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1059
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->extraCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)Lo/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    .line 1060
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onNavigationEvent(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub:J

    .line 1061
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->ICustomTabsCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->validateRelationship:J

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    iget v0, v0, Lo/r;->ICustomTabsCallback:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 1065
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->validateRelationship:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->validateRelationship:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub:J

    sub-long/2addr p1, v3

    .line 1070
    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;->onPostMessage(J)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    .line 1074
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->validateRelationship:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    iget v2, v2, Lo/r;->ICustomTabsCallback:F

    .line 1075
    invoke-static {p1, p2, v2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JF)J

    move-result-wide p1

    goto :goto_1
.end method

.method static synthetic extraCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage()J

    move-result-wide v0

    return-wide v0
.end method

.method private static extraCallback(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1231
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private extraCommand()V
    .locals 3

    .line 1235
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->disconnect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1236
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->disconnect:Z

    .line 1237
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/y;->onMessageChannelReady(J)V

    .line 1238
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 1239
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    :cond_0
    return-void
.end method

.method private getInterfaceDescriptor()V
    .locals 3

    const/4 v0, 0x0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 505
    aget-object v1, v1, v0

    .line 506
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onRelationshipValidationResult()V

    .line 507
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onTransact()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mayLaunchUrl()J
    .locals 4

    .line 1095
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->notify:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel:J

    return-wide v0
.end method

.method private newSession()V
    .locals 6

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->warmup:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 491
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 494
    :cond_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onRelationshipValidationResult()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 498
    new-array v2, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 499
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getExtras:J

    return-wide v0
.end method

.method private static onMessageChannelReady(I)Landroid/media/AudioTrack;
    .locals 9

    .line 1105
    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private onMessageChannelReady(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 520
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel:Lo/u$b;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 521
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage(ZLo/u$b;I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    .line 522
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 523
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    .line 524
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 527
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup()V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 532
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

    .line 536
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    if-eq v1, v0, :cond_2

    .line 537
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 538
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup:Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;

    if-eqz v1, :cond_2

    .line 539
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;->onMessageChannelReady(I)V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Lo/r;J)V

    .line 545
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/y;->onMessageChannelReady(Landroid/media/AudioTrack;III)V

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy()V

    .line 552
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    iget p1, p1, Lo/OnSupport;->onPostMessage:I

    if-eqz p1, :cond_3

    .line 553
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    iget p2, p2, Lo/OnSupport;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 554
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    iget p2, p2, Lo/OnSupport;->onNavigationEvent:F

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_3
    return-void
.end method

.method static synthetic onNavigationEvent(I)I
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback(I)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(IZ)I
    .locals 2

    .line 1110
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x6

    .line 1124
    :cond_2
    :goto_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x2

    .line 1128
    :cond_3
    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(I)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 1183
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup:Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;

    return-object p0
.end method

.method private onNavigationEvent(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 701
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onPostMessage:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 704
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 706
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Default:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 707
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->extraCallback(Ljava/nio/ByteBuffer;)V

    .line 708
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onTransact()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 709
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub$Proxy:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 710
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private onPostMessage(J)J
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;

    .line 1081
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic onPostMessage(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private static onPostMessage(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1226
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private postMessage()J
    .locals 4

    .line 1089
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancelAll:J

    return-wide v0
.end method

.method private requestPostMessageChannel()Z
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private warmup()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1027
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy:Landroid/media/AudioTrack;

    .line 1028
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1033
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 570
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 571
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(II)Z
    .locals 3

    .line 379
    invoke-static {p2}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 384
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady:Lo/u$d;

    if-eqz v0, :cond_4

    .line 387
    invoke-virtual {v0, p2}, Lo/u$d;->ICustomTabsCallback(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady:Lo/u$d;

    .line 389
    invoke-virtual {p2}, Lo/u$d;->onMessageChannelReady()I

    move-result p2

    if-gt p1, p2, :cond_4

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x0

    .line 944
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->connect:Z

    .line 945
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-virtual {v0}, Lo/y;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final asBinder()V
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 918
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    .line 919
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 920
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    :cond_0
    return-void
.end method

.method public final asInterface()V
    .locals 5

    .line 952
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 953
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService:J

    .line 954
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancelAll:J

    .line 955
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->notify:J

    .line 956
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel:J

    const/4 v2, 0x0

    .line 957
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancel:I

    .line 958
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 959
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    .line 960
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    goto :goto_0

    .line 961
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 962
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;

    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->extraCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)Lo/r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    .line 964
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 965
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->validateRelationship:J

    .line 966
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub:J

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onRelationshipValidationResult:Lo/setBaseDeeplink;

    invoke-virtual {v0}, Lo/setBaseDeeplink;->getInterfaceDescriptor()V

    .line 968
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor()V

    .line 969
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    .line 970
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->read:Ljava/nio/ByteBuffer;

    .line 971
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->disconnect:Z

    .line 972
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesCompatParcelizer:Z

    const/4 v0, -0x1

    .line 973
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->write:I

    .line 974
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub$Proxy:Ljava/nio/ByteBuffer;

    .line 975
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService$Stub:I

    .line 976
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-virtual {v0}, Lo/y;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    .line 982
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    .line 983
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    if-eqz v1, :cond_3

    .line 984
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 985
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 987
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-virtual {v1}, Lo/y;->onPostMessage()V

    .line 988
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 989
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 999
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final extraCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 787
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesCompatParcelizer:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand()V

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesCompatParcelizer:Z

    :cond_0
    return-void
.end method

.method public final extraCallback(F)V
    .locals 1

    .line 926
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setDefaultImpl:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 927
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setDefaultImpl:F

    .line 928
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback$Stub$Proxy()V

    :cond_0
    return-void
.end method

.method public final extraCallback(IIII[III)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 413
    sget v2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-ge v2, v4, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    if-nez p5, :cond_0

    const/4 v2, 0x6

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 418
    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p5

    .line 422
    :cond_1
    invoke-static/range {p1 .. p1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(I)Z

    move-result v6

    const/4 v2, 0x4

    const/16 v17, 0x1

    move/from16 v5, p1

    if-eqz v6, :cond_2

    if-eq v5, v2, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 427
    :goto_1
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent:Z

    if-eqz v7, :cond_3

    .line 429
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    invoke-static/range {p1 .. p1}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 431
    iget-object v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asBinder:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    goto :goto_3

    :cond_4
    iget-object v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onTransact:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    :goto_3
    move-object v15, v7

    if-eqz v14, :cond_7

    .line 437
    iget-object v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onRelationshipValidationResult:Lo/setBaseDeeplink;

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual {v7, v8, v9}, Lo/setBaseDeeplink;->onMessageChannelReady(II)V

    .line 438
    iget-object v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface:Lo/Constants;

    invoke-virtual {v7, v4}, Lo/Constants;->onPostMessage([I)V

    .line 439
    array-length v4, v15

    move/from16 v10, p3

    move v8, v0

    move v11, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v7, v4, :cond_6

    aget-object v12, v15, v7

    .line 441
    :try_start_0
    invoke-interface {v12, v10, v8, v11}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->extraCallback(III)Z

    move-result v13
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v9, v13

    .line 445
    invoke-interface {v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->extraCallback()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 446
    invoke-interface {v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onPostMessage()I

    move-result v8

    .line 447
    invoke-interface {v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onMessageChannelReady()I

    move-result v10

    .line 448
    invoke-interface {v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->onNavigationEvent()I

    move-result v11

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 443
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v4, v9

    move v12, v11

    goto :goto_5

    :cond_7
    move/from16 v10, p3

    move v8, v0

    move v12, v5

    const/4 v4, 0x0

    .line 453
    :goto_5
    invoke-static {v8, v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(IZ)I

    move-result v11

    if-eqz v11, :cond_f

    const/4 v7, -0x1

    if-eqz v6, :cond_8

    .line 459
    invoke-static/range {p1 .. p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(II)I

    move-result v0

    goto :goto_6

    :cond_8
    const/4 v0, -0x1

    :goto_6
    if-eqz v6, :cond_9

    .line 461
    invoke-static {v12, v8}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(II)I

    move-result v5

    move v9, v5

    goto :goto_7

    :cond_9
    const/4 v9, -0x1

    :goto_7
    if-eqz v14, :cond_a

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    .line 463
    :goto_8
    new-instance v13, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    move-object v5, v13

    move v7, v0

    move/from16 v8, p3

    move-object v0, v13

    move/from16 v13, p4

    move-object/from16 v16, v15

    move v15, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;-><init>(ZIIIIIIIZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    if-nez v4, :cond_b

    .line 478
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    if-eqz v2, :cond_c

    :cond_b
    const/4 v3, 0x1

    .line 479
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 480
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v3, :cond_e

    .line 481
    :cond_d
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    return-void

    .line 483
    :cond_e
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    return-void

    .line 455
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unsupported channel count: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/r;)Lo/r;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onTransact:Z

    if-nez v0, :cond_0

    .line 837
    sget-object p1, Lo/r;->onPostMessage:Lo/r;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    return-object p1

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    .line 843
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->newSession:Ljava/util/ArrayDeque;

    .line 844
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->extraCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)Lo/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    .line 846
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 847
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    goto :goto_1

    .line 854
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    .line 857
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->connect:Z

    .line 561
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-virtual {v0}, Lo/y;->onMessageChannelReady()V

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup:Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;

    return-void
.end method

.method public final onNavigationEvent(Z)J
    .locals 4

    .line 395
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-virtual {v0, p1}, Lo/y;->onMessageChannelReady(Z)J

    move-result-wide v0

    .line 399
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 400
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onPostMessage(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final onNavigationEvent(Lo/OnSupport;)V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 892
    :cond_0
    iget v0, p1, Lo/OnSupport;->onPostMessage:I

    .line 893
    iget v1, p1, Lo/OnSupport;->onNavigationEvent:F

    .line 894
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 895
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    iget v2, v2, Lo/OnSupport;->onPostMessage:I

    if-eq v2, v0, :cond_1

    .line 896
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 902
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplApi21Parcelizer:Lo/OnSupport;

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 826
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesCompatParcelizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent(Ljava/nio/ByteBuffer;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 579
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 581
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService()Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    .line 585
    :cond_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-object v8, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCommand()V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    .line 591
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    goto :goto_2

    .line 594
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 595
    iput-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 598
    :goto_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Lo/r;J)V

    .line 601
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v4

    if-nez v4, :cond_6

    .line 602
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady(J)V

    .line 603
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->connect:Z

    if-eqz v4, :cond_6

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onMessageChannelReady()V

    .line 608
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lo/y;->onNavigationEvent(J)Z

    move-result v4

    if-nez v4, :cond_7

    return v5

    .line 612
    :cond_7
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    const-string v8, "AudioTrack"

    if-nez v4, :cond_10

    .line 614
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_8

    return v6

    .line 619
    :cond_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-nez v4, :cond_9

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancel:I

    if-nez v4, :cond_9

    .line 621
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->extraCallback(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancel:I

    if-nez v4, :cond_9

    return v6

    .line 631
    :cond_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    if-eqz v4, :cond_b

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsService()Z

    move-result v4

    if-nez v4, :cond_a

    return v5

    .line 636
    :cond_a
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    .line 637
    iput-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl:Lo/r;

    .line 638
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Lo/r;J)V

    .line 641
    :cond_b
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    const-wide/16 v9, 0x0

    if-nez v4, :cond_c

    .line 642
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    .line 643
    iput v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    goto :goto_3

    .line 646
    :cond_c
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage()J

    move-result-wide v13

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onRelationshipValidationResult:Lo/setBaseDeeplink;

    invoke-virtual {v15}, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 648
    invoke-virtual {v4, v13, v14}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->extraCallback(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 650
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    const/4 v13, 0x2

    if-ne v4, v6, :cond_d

    sub-long v14, v11, v2

    .line 651
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x30d40

    cmp-long v4, v14, v16

    if-lez v4, :cond_d

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "Discontinuity detected [expected "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", got "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iput v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    .line 656
    :cond_d
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    if-ne v4, v13, :cond_e

    sub-long v11, v2, v11

    .line 660
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getDefaultImpl:J

    .line 661
    iput v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService$Stub$Proxy:I

    .line 662
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup:Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;

    if-eqz v4, :cond_e

    cmp-long v13, v11, v9

    if-eqz v13, :cond_e

    .line 663
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;->onNavigationEvent()V

    .line 668
    :cond_e
    :goto_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    if-eqz v4, :cond_f

    .line 669
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->IPostMessageService:J

    goto :goto_4

    .line 671
    :cond_f
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancelAll:J

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancel:I

    int-to-long v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->cancelAll:J

    .line 674
    :goto_4
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    .line 677
    :cond_10
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->postMessage:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_11

    .line 678
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(J)V

    goto :goto_5

    .line 680
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->ICustomTabsCallback(Ljava/nio/ByteBuffer;J)V

    .line 683
    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_12

    .line 684
    iput-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->INotificationSideChannel$Stub:Ljava/nio/ByteBuffer;

    return v6

    .line 688
    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/y;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Resetting stalled audio track"

    .line 689
    invoke-static {v8, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    return v6

    :cond_13
    return v5
.end method

.method public final onPostMessage(I)V
    .locals 3

    .line 907
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 908
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    if-eq v0, p1, :cond_2

    .line 909
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    .line 910
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 911
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    :cond_2
    return-void
.end method

.method public final onPostMessage(Lo/u$b;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel:Lo/u$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 870
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel:Lo/u$b;

    .line 871
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->MediaBrowserCompat:Z

    if-eqz p1, :cond_1

    return-void

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    return-void
.end method

.method public final onPostMessage()Z
    .locals 3

    .line 831
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getInterfaceDescriptor:Lo/y;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mayLaunchUrl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/y;->extraCallback(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onRelationshipValidationResult()Lo/r;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->updateVisuals:Lo/r;

    return-object v0
.end method

.method public final onTransact()V
    .locals 5

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asInterface()V

    .line 1006
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup()V

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onTransact:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1008
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->asInterface()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->asBinder:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1011
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->asInterface()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1013
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->AudioAttributesImplBaseParcelizer:I

    .line 1014
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->connect:Z

    return-void
.end method
