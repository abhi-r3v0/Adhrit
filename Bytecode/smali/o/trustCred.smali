.class public Lo/trustCred;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trustCred$onMessageChannelReady;,
        Lo/trustCred$extraCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/RestClient;

.field private static final onMessageChannelReady:Lo/p$a;

.field private static final onNavigationEvent:I

.field private static final onPostMessage:[B


# instance fields
.field private AudioAttributesCompatParcelizer:[Lo/CryptLib;

.field private final ICustomTabsCallback$Stub:Lo/NPCICLJSInterface$1;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/getWaivers;

.field private final ICustomTabsService:Lo/DreamAppGlideModule;

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:J

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

.field private INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:I

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:J

.field private IconCompatParcelizer:Z

.field private RemoteActionCompatParcelizer:Z

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/DreamAppGlideModule;

.field private cancel:I

.field private cancelAll:J

.field private final extraCallback:I

.field private final extraCommand:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/saveData$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private getDefaultImpl:I

.field private final getInterfaceDescriptor:Lo/DreamAppGlideModule;

.field private final mayLaunchUrl:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/trustCred$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final newSession:Lo/DreamAppGlideModule;

.field private notify:J

.field private final onRelationshipValidationResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/generateLink;

.field private final postMessage:Lo/UPIJSInterface$4;

.field private read:[Lo/CryptLib;

.field private final requestPostMessageChannel:Lo/CryptLib;

.field private setDefaultImpl:I

.field private final updateVisuals:Lo/DreamAppGlideModule;

.field private validateRelationship:Lo/DreamAppGlideModule;

.field private final warmup:[B

.field private write:Lo/ExceptionTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    sget-object v0, Lo/decodeNPCIXmlKeys;->onNavigationEvent:Lo/decodeNPCIXmlKeys;

    sput-object v0, Lo/trustCred;->ICustomTabsCallback:Lo/RestClient;

    const-string/jumbo v0, "seig"

    .line 110
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/trustCred;->onNavigationEvent:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 112
    fill-array-data v0, :array_0

    sput-object v0, Lo/trustCred;->onPostMessage:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 115
    invoke-static {v0, v1, v2, v3}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)Lo/p$a;

    move-result-object v0

    sput-object v0, Lo/trustCred;->onMessageChannelReady:Lo/p$a;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lo/trustCred;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0}, Lo/trustCred;-><init>(ILo/getWaivers;)V

    return-void
.end method

.method public constructor <init>(ILo/getWaivers;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, v0, v0}, Lo/trustCred;-><init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;)V

    return-void
.end method

.method public constructor <init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;)V
    .locals 6

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lo/trustCred;-><init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getWaivers;",
            "Lo/NPCICLJSInterface$1;",
            "Lo/generateLink;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 230
    invoke-direct/range {v0 .. v6}, Lo/trustCred;-><init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;Ljava/util/List;Lo/CryptLib;)V

    return-void
.end method

.method public constructor <init>(ILo/getWaivers;Lo/NPCICLJSInterface$1;Lo/generateLink;Ljava/util/List;Lo/CryptLib;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getWaivers;",
            "Lo/NPCICLJSInterface$1;",
            "Lo/generateLink;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;",
            "Lo/CryptLib;",
            ")V"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 254
    iput p1, p0, Lo/trustCred;->extraCallback:I

    .line 255
    iput-object p2, p0, Lo/trustCred;->ICustomTabsCallback$Stub$Proxy:Lo/getWaivers;

    .line 256
    iput-object p3, p0, Lo/trustCred;->ICustomTabsCallback$Stub:Lo/NPCICLJSInterface$1;

    .line 257
    iput-object p4, p0, Lo/trustCred;->onTransact:Lo/generateLink;

    .line 258
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/trustCred;->asBinder:Ljava/util/List;

    .line 259
    iput-object p6, p0, Lo/trustCred;->requestPostMessageChannel:Lo/CryptLib;

    .line 260
    new-instance p1, Lo/UPIJSInterface$4;

    invoke-direct {p1}, Lo/UPIJSInterface$4;-><init>()V

    iput-object p1, p0, Lo/trustCred;->postMessage:Lo/UPIJSInterface$4;

    .line 261
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    .line 262
    new-instance p1, Lo/DreamAppGlideModule;

    sget-object p3, Lo/setViewPool;->extraCallback:[B

    invoke-direct {p1, p3}, Lo/DreamAppGlideModule;-><init>([B)V

    iput-object p1, p0, Lo/trustCred;->asInterface:Lo/DreamAppGlideModule;

    .line 263
    new-instance p1, Lo/DreamAppGlideModule;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/trustCred;->getInterfaceDescriptor:Lo/DreamAppGlideModule;

    .line 264
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    new-array p1, p2, [B

    .line 265
    iput-object p1, p0, Lo/trustCred;->warmup:[B

    .line 266
    new-instance p2, Lo/DreamAppGlideModule;

    invoke-direct {p2, p1}, Lo/DreamAppGlideModule;-><init>([B)V

    iput-object p2, p0, Lo/trustCred;->newSession:Lo/DreamAppGlideModule;

    .line 267
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    .line 268
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/trustCred;->mayLaunchUrl:Ljava/util/ArrayDeque;

    .line 269
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 270
    iput-wide p1, p0, Lo/trustCred;->cancelAll:J

    .line 271
    iput-wide p1, p0, Lo/trustCred;->IPostMessageService$Stub$Proxy:J

    .line 272
    iput-wide p1, p0, Lo/trustCred;->notify:J

    .line 273
    invoke-direct {p0}, Lo/trustCred;->onNavigationEvent()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lo/populateHMAC;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 675
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 676
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 677
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 678
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v2

    .line 679
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v3

    .line 680
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    .line 682
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lo/populateHMAC;

    invoke-direct {v4, v1, v2, v3, p0}, Lo/populateHMAC;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/util/SparseArray;)Lo/trustCred$onMessageChannelReady;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;)",
            "Lo/trustCred$onMessageChannelReady;"
        }
    .end annotation

    .line 1394
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1396
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/trustCred$onMessageChannelReady;

    .line 1397
    iget v6, v5, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iget-object v7, v5, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget v7, v7, Lo/NPCICLJSInterface$2;->onNavigationEvent:I

    if-eq v6, v7, :cond_0

    .line 1400
    iget-object v6, v5, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v6, v6, Lo/NPCICLJSInterface$2;->asInterface:[J

    iget v7, v5, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    aget-wide v7, v6, v7

    cmp-long v6, v7, v2

    if-gez v6, :cond_0

    move-object v1, v5

    move-wide v2, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private ICustomTabsCallback(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 441
    :goto_0
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/saveData$extraCallback;

    iget-wide v0, v0, Lo/saveData$extraCallback;->toString:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 442
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/saveData$extraCallback;

    invoke-direct {p0, v0}, Lo/trustCred;->ICustomTabsCallback(Lo/saveData$extraCallback;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-direct {p0}, Lo/trustCred;->onNavigationEvent()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;ILo/NPCICLJSInterface$2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1035
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1036
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    .line 1037
    invoke-static {p1}, Lo/saveData;->extraCallback(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1045
    :goto_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    .line 1046
    iget v2, p2, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    if-ne v1, v2, :cond_1

    .line 1050
    iget-object v2, p2, Lo/NPCICLJSInterface$2;->warmup:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1051
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {p2, p1}, Lo/NPCICLJSInterface$2;->ICustomTabsCallback(I)V

    .line 1052
    invoke-virtual {p2, p0}, Lo/NPCICLJSInterface$2;->onNavigationEvent(Lo/DreamAppGlideModule;)V

    return-void

    .line 1047
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1041
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1030
    invoke-static {p0, v0, p1}, Lo/trustCred;->ICustomTabsCallback(Lo/DreamAppGlideModule;ILo/NPCICLJSInterface$2;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/saveData$extraCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 461
    iget v0, p1, Lo/saveData;->writeToParcel:I

    sget v1, Lo/saveData;->connect:I

    if-ne v0, v1, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lo/trustCred;->onMessageChannelReady(Lo/saveData$extraCallback;)V

    return-void

    .line 463
    :cond_0
    iget v0, p1, Lo/saveData;->writeToParcel:I

    sget v1, Lo/saveData;->getRoot:I

    if-ne v0, v1, :cond_1

    .line 464
    invoke-direct {p0, p1}, Lo/trustCred;->onNavigationEvent(Lo/saveData$extraCallback;)V

    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/saveData$extraCallback;

    invoke-virtual {v0, p1}, Lo/saveData$extraCallback;->onMessageChannelReady(Lo/saveData$extraCallback;)V

    :cond_2
    return-void
.end method

.method private static ICustomTabsCallback(I)Z
    .locals 1

    .line 1434
    sget v0, Lo/saveData;->MediaBrowserCompat$ConnectionCallback:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->setCallbacksMessenger:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->disconnect:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->AudioAttributesImplApi21Parcelizer:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->handleMessage:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->RemoteActionCompatParcelizer:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->AudioAttributesCompatParcelizer:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->search:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->IconCompatParcelizer:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getNotifyChildrenChangedOptions:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->onProgressUpdate:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->onError:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->onItemLoaded:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat$CustomActionResultReceiver:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat$CallbackHandler:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->sendCustomAction:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private ICustomTabsCallback(Lo/Event$Action;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v0, v1, v3, v2}, Lo/Event$Action;->onMessageChannelReady([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 347
    :cond_0
    iput v3, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    .line 348
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 349
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v4

    iput-wide v4, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    .line 350
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    iput v0, p0, Lo/trustCred;->IPostMessageService:I

    .line 353
    :cond_1
    iget-wide v4, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v0, v3, v3}, Lo/Event$Action;->onPostMessage([BII)V

    .line 357
    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    .line 358
    iget-object v0, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v4

    iput-wide v4, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 362
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/saveData$extraCallback;

    iget-wide v4, v0, Lo/saveData$extraCallback;->toString:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 367
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    .line 371
    :cond_4
    :goto_0
    iget-wide v4, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    .line 375
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 376
    iget v0, p0, Lo/trustCred;->IPostMessageService:I

    sget v6, Lo/saveData;->getRoot:I

    if-ne v0, v6, :cond_5

    .line 378
    iget-object v0, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 380
    iget-object v7, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/trustCred$onMessageChannelReady;

    iget-object v7, v7, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 381
    iput-wide v4, v7, Lo/NPCICLJSInterface$2;->onPostMessage:J

    .line 382
    iput-wide v4, v7, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    .line 383
    iput-wide v4, v7, Lo/NPCICLJSInterface$2;->extraCallback:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 387
    :cond_5
    iget v0, p0, Lo/trustCred;->IPostMessageService:I

    sget v6, Lo/saveData;->validateRelationship:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    .line 388
    iput-object v7, p0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    .line 389
    iget-wide v0, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lo/trustCred;->INotificationSideChannel:J

    .line 390
    iget-boolean p1, p0, Lo/trustCred;->IconCompatParcelizer:Z

    if-nez p1, :cond_6

    .line 392
    iget-object p1, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    new-instance v0, Lo/UpiSdkCallback$extraCallback;

    iget-wide v6, p0, Lo/trustCred;->cancelAll:J

    invoke-direct {v0, v6, v7, v4, v5}, Lo/UpiSdkCallback$extraCallback;-><init>(JJ)V

    invoke-interface {p1, v0}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    .line 393
    iput-boolean v2, p0, Lo/trustCred;->IconCompatParcelizer:Z

    :cond_6
    const/4 p1, 0x2

    .line 395
    iput p1, p0, Lo/trustCred;->IPostMessageService$Stub:I

    return v2

    .line 399
    :cond_7
    iget v0, p0, Lo/trustCred;->IPostMessageService:I

    invoke-static {v0}, Lo/trustCred;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v0

    iget-wide v3, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    add-long/2addr v0, v3

    const-wide/16 v3, 0x8

    sub-long/2addr v0, v3

    .line 401
    iget-object p1, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    new-instance v3, Lo/saveData$extraCallback;

    iget v4, p0, Lo/trustCred;->IPostMessageService:I

    invoke-direct {v3, v4, v0, v1}, Lo/saveData$extraCallback;-><init>(IJ)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 402
    iget-wide v3, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    iget p1, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    .line 403
    invoke-direct {p0, v0, v1}, Lo/trustCred;->ICustomTabsCallback(J)V

    goto :goto_2

    .line 406
    :cond_8
    invoke-direct {p0}, Lo/trustCred;->onNavigationEvent()V

    goto :goto_2

    .line 408
    :cond_9
    iget p1, p0, Lo/trustCred;->IPostMessageService:I

    invoke-static {p1}, Lo/trustCred;->ICustomTabsCallback(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    .line 409
    iget p1, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    if-ne p1, v3, :cond_b

    .line 412
    iget-wide v6, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    .line 415
    new-instance p1, Lo/DreamAppGlideModule;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/trustCred;->validateRelationship:Lo/DreamAppGlideModule;

    .line 416
    iget-object p1, p0, Lo/trustCred;->updateVisuals:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget-object v0, p0, Lo/trustCred;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput v2, p0, Lo/trustCred;->IPostMessageService$Stub:I

    goto :goto_2

    .line 413
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_c
    iget-wide v0, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    .line 422
    iput-object v7, p0, Lo/trustCred;->validateRelationship:Lo/DreamAppGlideModule;

    .line 423
    iput v2, p0, Lo/trustCred;->IPostMessageService$Stub:I

    :goto_2
    return v2

    .line 420
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extraCallback(Landroid/util/SparseArray;I)Lo/populateHMAC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lo/populateHMAC;",
            ">;I)",
            "Lo/populateHMAC;"
        }
    .end annotation

    .line 542
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 545
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populateHMAC;

    return-object p1

    .line 547
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populateHMAC;

    return-object p1
.end method

.method private extraCallback()V
    .locals 8

    .line 572
    iget-object v0, p0, Lo/trustCred;->read:[Lo/CryptLib;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lo/CryptLib;

    .line 573
    iput-object v0, p0, Lo/trustCred;->read:[Lo/CryptLib;

    .line 575
    iget-object v3, p0, Lo/trustCred;->requestPostMessageChannel:Lo/CryptLib;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    iget v3, p0, Lo/trustCred;->extraCallback:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 579
    iget-object v3, p0, Lo/trustCred;->read:[Lo/CryptLib;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    iget-object v7, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    .line 580
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v4}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v5

    .line 582
    :cond_1
    iget-object v3, p0, Lo/trustCred;->read:[Lo/CryptLib;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CryptLib;

    iput-object v0, p0, Lo/trustCred;->read:[Lo/CryptLib;

    .line 584
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 585
    sget-object v6, Lo/trustCred;->onMessageChannelReady:Lo/p$a;

    invoke-interface {v5, v6}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 588
    :cond_2
    iget-object v0, p0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    if-nez v0, :cond_3

    .line 589
    iget-object v0, p0, Lo/trustCred;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/CryptLib;

    iput-object v0, p0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    .line 590
    :goto_2
    iget-object v0, p0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 591
    iget-object v0, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    iget-object v3, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    .line 592
    iget-object v3, p0, Lo/trustCred;->asBinder:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/p$a;

    invoke-interface {v0, v3}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 593
    iget-object v3, p0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private extraCallback(Lo/DreamAppGlideModule;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 600
    iget-object v2, v0, Lo/trustCred;->read:[Lo/CryptLib;

    if-eqz v2, :cond_7

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0x8

    .line 603
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    .line 605
    invoke-static {v2}, Lo/saveData;->onNavigationEvent(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    .line 638
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping unsupported emsg version: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 628
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v11

    .line 630
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v13

    .line 632
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v5

    .line 633
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v7

    .line 634
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v20, v9

    move-wide v7, v3

    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 616
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 617
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v5

    .line 619
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v7

    .line 620
    iget-wide v10, v0, Lo/trustCred;->notify:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_3

    add-long/2addr v10, v7

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v3

    .line 624
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v5

    .line 625
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v10

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-object/from16 v20, v9

    move-wide/from16 v23, v10

    move-wide/from16 v13, v16

    .line 642
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    new-array v2, v2, [B

    .line 643
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 644
    new-instance v1, Lo/GeneratedAppGlideModule;

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    invoke-direct/range {v18 .. v25}, Lo/GeneratedAppGlideModule;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 645
    new-instance v2, Lo/DreamAppGlideModule;

    iget-object v5, v0, Lo/trustCred;->postMessage:Lo/UPIJSInterface$4;

    .line 646
    invoke-virtual {v5, v1}, Lo/UPIJSInterface$4;->onNavigationEvent(Lo/GeneratedAppGlideModule;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lo/DreamAppGlideModule;-><init>([B)V

    .line 647
    invoke-virtual {v2}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v1

    .line 650
    iget-object v5, v0, Lo/trustCred;->read:[Lo/CryptLib;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v5, v10

    .line 651
    invoke-virtual {v2, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 652
    invoke-interface {v11, v2, v1}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v13, v3

    if-nez v2, :cond_5

    .line 659
    iget-object v2, v0, Lo/trustCred;->mayLaunchUrl:Ljava/util/ArrayDeque;

    new-instance v3, Lo/trustCred$extraCallback;

    invoke-direct {v3, v7, v8, v1}, Lo/trustCred$extraCallback;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 661
    iget v2, v0, Lo/trustCred;->cancel:I

    add-int/2addr v2, v1

    iput v2, v0, Lo/trustCred;->cancel:I

    return-void

    .line 663
    :cond_5
    iget-object v2, v0, Lo/trustCred;->ICustomTabsCallback$Stub$Proxy:Lo/getWaivers;

    if-eqz v2, :cond_6

    .line 664
    invoke-virtual {v2, v13, v14}, Lo/getWaivers;->onPostMessage(J)J

    move-result-wide v13

    .line 666
    :cond_6
    iget-object v2, v0, Lo/trustCred;->read:[Lo/CryptLib;

    array-length v3, v2

    :goto_3
    if-ge v6, v3, :cond_7

    aget-object v15, v2, v6

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v13

    move/from16 v19, v1

    .line 667
    invoke-interface/range {v15 .. v21}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private static extraCallback(Lo/saveData$extraCallback;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/saveData$extraCallback;",
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 700
    iget-object v2, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/saveData$extraCallback;

    .line 702
    iget v3, v2, Lo/saveData;->writeToParcel:I

    sget v4, Lo/saveData;->unsubscribe:I

    if-ne v3, v4, :cond_0

    .line 703
    invoke-static {v2, p1, p2, p3}, Lo/trustCred;->onMessageChannelReady(Lo/saveData$extraCallback;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback(Lo/saveData$onNavigationEvent;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object p2, p0, Lo/trustCred;->extraCommand:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/saveData$extraCallback;

    invoke-virtual {p2, p1}, Lo/saveData$extraCallback;->onMessageChannelReady(Lo/saveData$onNavigationEvent;)V

    return-void

    .line 450
    :cond_0
    iget v0, p1, Lo/saveData;->writeToParcel:I

    sget v1, Lo/saveData;->AudioAttributesImplApi21Parcelizer:I

    if-ne v0, v1, :cond_1

    .line 451
    iget-object p1, p1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {p1, p2, p3}, Lo/trustCred;->onNavigationEvent(Lo/DreamAppGlideModule;J)Landroid/util/Pair;

    move-result-object p1

    .line 452
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lo/trustCred;->notify:J

    .line 453
    iget-object p2, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lo/UpiSdkCallback;

    invoke-interface {p2, p1}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Lo/trustCred;->IconCompatParcelizer:Z

    return-void

    .line 455
    :cond_1
    iget p2, p1, Lo/saveData;->writeToParcel:I

    sget p3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    if-ne p2, p3, :cond_2

    .line 456
    iget-object p1, p1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-direct {p0, p1}, Lo/trustCred;->extraCallback(Lo/DreamAppGlideModule;)V

    :cond_2
    return-void
.end method

.method private static extraCallback(I)Z
    .locals 1

    .line 1445
    sget v0, Lo/saveData;->connect:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->AudioAttributesImplBaseParcelizer:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getServiceComponent:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getSessionToken:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getExtras:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getRoot:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->unsubscribe:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->getItem:I

    if-eq p0, v0, :cond_1

    sget v0, Lo/saveData;->subscribe:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static onMessageChannelReady(Lo/trustCred$onMessageChannelReady;IJILo/DreamAppGlideModule;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 933
    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 934
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 935
    invoke-static {v1}, Lo/saveData;->extraCallback(I)I

    move-result v1

    .line 937
    iget-object v3, v0, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    .line 938
    iget-object v0, v0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 939
    iget-object v4, v0, Lo/NPCICLJSInterface$2;->onMessageChannelReady:Lo/populateHMAC;

    .line 941
    iget-object v5, v0, Lo/NPCICLJSInterface$2;->onTransact:[I

    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v6

    aput v6, v5, p1

    .line 942
    iget-object v5, v0, Lo/NPCICLJSInterface$2;->asInterface:[J

    iget-wide v6, v0, Lo/NPCICLJSInterface$2;->extraCallback:J

    aput-wide v6, v5, p1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 944
    iget-object v5, v0, Lo/NPCICLJSInterface$2;->asInterface:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 948
    :goto_0
    iget v8, v4, Lo/populateHMAC;->onPostMessage:I

    if-eqz v5, :cond_2

    .line 950
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 965
    :goto_4
    iget-object v12, v3, Lo/NPCICLJSInterface$1;->asInterface:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v12, v3, Lo/NPCICLJSInterface$1;->asInterface:[J

    array-length v12, v12

    if-ne v12, v7, :cond_7

    iget-object v12, v3, Lo/NPCICLJSInterface$1;->asInterface:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 967
    iget-object v12, v3, Lo/NPCICLJSInterface$1;->asBinder:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lo/NPCICLJSInterface$1;->ICustomTabsCallback:J

    move-wide/from16 v17, v6

    .line 968
    invoke-static/range {v13 .. v18}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v13

    .line 972
    :cond_7
    iget-object v6, v0, Lo/NPCICLJSInterface$2;->asBinder:[I

    .line 973
    iget-object v7, v0, Lo/NPCICLJSInterface$2;->onRelationshipValidationResult:[I

    .line 974
    iget-object v15, v0, Lo/NPCICLJSInterface$2;->ICustomTabsService:[J

    .line 975
    iget-object v12, v0, Lo/NPCICLJSInterface$2;->newSession:[Z

    .line 977
    iget v2, v3, Lo/NPCICLJSInterface$1;->extraCallback:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    .line 980
    :goto_5
    iget-object v8, v0, Lo/NPCICLJSInterface$2;->onTransact:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 981
    iget-wide v2, v3, Lo/NPCICLJSInterface$1;->ICustomTabsCallback:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    .line 982
    iget-wide v12, v0, Lo/NPCICLJSInterface$2;->extraCommand:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    .line 985
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v13

    goto :goto_8

    :cond_a
    iget v13, v4, Lo/populateHMAC;->onNavigationEvent:I

    :goto_8
    if-eqz v10, :cond_b

    .line 987
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lo/populateHMAC;->extraCallback:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 989
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lo/populateHMAC;->onPostMessage:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v28, v1

    .line 996
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 997
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 1000
    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 1003
    invoke-static/range {v18 .. v23}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 1004
    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    .line 1005
    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    .line 1009
    iput-wide v1, v0, Lo/NPCICLJSInterface$2;->extraCommand:J

    return v8
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;)J
    .locals 2

    const/16 v0, 0x8

    .line 914
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 915
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 916
    invoke-static {v0}, Lo/saveData;->onNavigationEvent(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 917
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    return-wide v0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;Landroid/util/SparseArray;)Lo/trustCred$onMessageChannelReady;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;)",
            "Lo/trustCred$onMessageChannelReady;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 867
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 868
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 869
    invoke-static {v0}, Lo/saveData;->extraCallback(I)I

    move-result v0

    .line 870
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 871
    invoke-static {p1, v1}, Lo/trustCred;->onNavigationEvent(Landroid/util/SparseArray;I)Lo/trustCred$onMessageChannelReady;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 876
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v1

    .line 877
    iget-object v3, p1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iput-wide v1, v3, Lo/NPCICLJSInterface$2;->extraCallback:J

    .line 878
    iget-object v3, p1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iput-wide v1, v3, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    .line 881
    :cond_1
    iget-object v1, p1, Lo/trustCred$onMessageChannelReady;->onMessageChannelReady:Lo/populateHMAC;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 884
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Lo/populateHMAC;->ICustomTabsCallback:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 886
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Lo/populateHMAC;->onNavigationEvent:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 888
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Lo/populateHMAC;->extraCallback:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 890
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Lo/populateHMAC;->onPostMessage:I

    .line 891
    :goto_3
    iget-object v0, p1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    new-instance v1, Lo/populateHMAC;

    invoke-direct {v1, v2, v3, v4, p0}, Lo/populateHMAC;-><init>(IIII)V

    iput-object v1, v0, Lo/NPCICLJSInterface$2;->onMessageChannelReady:Lo/populateHMAC;

    return-object p1
.end method

.method private onMessageChannelReady(J)V
    .locals 13

    .line 1368
    :cond_0
    iget-object v0, p0, Lo/trustCred;->mayLaunchUrl:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1369
    iget-object v0, p0, Lo/trustCred;->mayLaunchUrl:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/trustCred$extraCallback;

    .line 1370
    iget v1, p0, Lo/trustCred;->cancel:I

    iget v2, v0, Lo/trustCred$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/trustCred;->cancel:I

    .line 1371
    iget-wide v1, v0, Lo/trustCred$extraCallback;->ICustomTabsCallback:J

    add-long/2addr v1, p1

    .line 1372
    iget-object v3, p0, Lo/trustCred;->ICustomTabsCallback$Stub$Proxy:Lo/getWaivers;

    if-eqz v3, :cond_1

    .line 1373
    invoke-virtual {v3, v1, v2}, Lo/getWaivers;->onPostMessage(J)J

    move-result-wide v1

    .line 1375
    :cond_1
    iget-object v10, p0, Lo/trustCred;->read:[Lo/CryptLib;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 1376
    iget v7, v0, Lo/trustCred$extraCallback;->onMessageChannelReady:I

    iget v8, p0, Lo/trustCred;->cancel:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;Lo/DreamAppGlideModule;Ljava/lang/String;Lo/NPCICLJSInterface$2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1057
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1058
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 1059
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    sget v3, Lo/trustCred;->onNavigationEvent:I

    if-eq v2, v3, :cond_0

    return-void

    .line 1063
    :cond_0
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1064
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    if-ne p0, v3, :cond_a

    .line 1070
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1071
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    .line 1072
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    sget v1, Lo/trustCred;->onNavigationEvent:I

    if-eq v0, v1, :cond_2

    return-void

    .line 1076
    :cond_2
    invoke-static {p0}, Lo/saveData;->onNavigationEvent(I)I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 1078
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1079
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    .line 1082
    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1084
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_9

    .line 1088
    invoke-virtual {p1, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1089
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p0

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v10, p0, 0xf

    .line 1092
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v3, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_7

    return-void

    .line 1096
    :cond_7
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v7

    const/16 p0, 0x10

    new-array v8, p0, [B

    .line 1098
    invoke-virtual {p1, v8, v0, p0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    const/4 p0, 0x0

    if-nez v7, :cond_8

    .line 1101
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p0

    .line 1102
    new-array v1, p0, [B

    .line 1103
    invoke-virtual {p1, v1, v0, p0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    move-object v11, v1

    goto :goto_2

    :cond_8
    move-object v11, p0

    .line 1105
    :goto_2
    iput-boolean v3, p3, Lo/NPCICLJSInterface$2;->getInterfaceDescriptor:Z

    .line 1106
    new-instance p0, Lo/NPCICLJSInterface$3;

    const/4 v5, 0x1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v11}, Lo/NPCICLJSInterface$3;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object p0, p3, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub$Proxy:Lo/NPCICLJSInterface$3;

    return-void

    .line 1085
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1067
    :cond_a
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1015
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1016
    invoke-virtual {p0, p2, v1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 1019
    sget-object v1, Lo/trustCred;->onPostMessage:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1026
    :cond_0
    invoke-static {p0, v0, p1}, Lo/trustCred;->ICustomTabsCallback(Lo/DreamAppGlideModule;ILo/NPCICLJSInterface$2;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/Event$Action;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 430
    iget-wide v0, p0, Lo/trustCred;->ICustomTabsService$Stub:J

    long-to-int v1, v0

    iget v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    sub-int/2addr v1, v0

    .line 431
    iget-object v0, p0, Lo/trustCred;->validateRelationship:Lo/DreamAppGlideModule;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Lo/Event$Action;->onPostMessage([BII)V

    .line 433
    new-instance v0, Lo/saveData$onNavigationEvent;

    iget v1, p0, Lo/trustCred;->IPostMessageService:I

    iget-object v2, p0, Lo/trustCred;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-direct {v0, v1, v2}, Lo/saveData$onNavigationEvent;-><init>(ILo/DreamAppGlideModule;)V

    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lo/trustCred;->extraCallback(Lo/saveData$onNavigationEvent;J)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-interface {p1, v1}, Lo/Event$Action;->extraCallback(I)V

    .line 437
    :goto_0
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/trustCred;->ICustomTabsCallback(J)V

    return-void
.end method

.method private static onMessageChannelReady(Lo/NPCICLJSInterface$3;Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 800
    iget p0, p0, Lo/NPCICLJSInterface$3;->onNavigationEvent:I

    const/16 v0, 0x8

    .line 801
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 802
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 803
    invoke-static {v1}, Lo/saveData;->extraCallback(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 805
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 807
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 809
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    .line 810
    iget v3, p2, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 816
    iget-object v0, p2, Lo/NPCICLJSInterface$2;->warmup:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 818
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 820
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 825
    iget-object p0, p2, Lo/NPCICLJSInterface$2;->warmup:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 827
    :cond_4
    invoke-virtual {p2, v5}, Lo/NPCICLJSInterface$2;->ICustomTabsCallback(I)V

    return-void

    .line 811
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onMessageChannelReady(Lo/saveData$extraCallback;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 471
    iget-object v2, v0, Lo/trustCred;->ICustomTabsCallback$Stub:Lo/NPCICLJSInterface$1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(ZLjava/lang/Object;)V

    .line 473
    iget-object v2, v0, Lo/trustCred;->onTransact:Lo/generateLink;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    .line 474
    invoke-static {v2}, Lo/trustCred;->onPostMessage(Ljava/util/List;)Lo/generateLink;

    move-result-object v2

    .line 477
    :goto_1
    sget v5, Lo/saveData;->getItem:I

    invoke-virtual {v1, v5}, Lo/saveData$extraCallback;->onPostMessage(I)Lo/saveData$extraCallback;

    move-result-object v5

    .line 478
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 480
    iget-object v8, v5, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 482
    iget-object v7, v5, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/saveData$onNavigationEvent;

    .line 483
    iget v9, v7, Lo/saveData;->writeToParcel:I

    sget v10, Lo/saveData;->IconCompatParcelizer:I

    if-ne v9, v10, :cond_2

    .line 484
    iget-object v7, v7, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v7}, Lo/trustCred;->ICustomTabsCallback(Lo/DreamAppGlideModule;)Landroid/util/Pair;

    move-result-object v7

    .line 485
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 486
    :cond_2
    iget v9, v7, Lo/saveData;->writeToParcel:I

    sget v10, Lo/saveData;->sendCustomAction:I

    if-ne v9, v10, :cond_3

    .line 487
    iget-object v7, v7, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v7}, Lo/trustCred;->onPostMessage(Lo/DreamAppGlideModule;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 492
    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 493
    iget-object v5, v1, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    .line 495
    iget-object v5, v1, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/saveData$extraCallback;

    .line 496
    iget v6, v5, Lo/saveData;->writeToParcel:I

    sget v7, Lo/saveData;->AudioAttributesImplBaseParcelizer:I

    if-ne v6, v7, :cond_6

    .line 497
    sget v6, Lo/saveData;->disconnect:I

    .line 501
    invoke-virtual {v1, v6}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v6

    iget v7, v0, Lo/trustCred;->extraCallback:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    .line 499
    invoke-static/range {v5 .. v11}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/saveData$extraCallback;Lo/saveData$onNavigationEvent;JLo/generateLink;ZZ)Lo/NPCICLJSInterface$1;

    move-result-object v5

    .line 498
    invoke-virtual {v0, v5}, Lo/trustCred;->onNavigationEvent(Lo/NPCICLJSInterface$1;)Lo/NPCICLJSInterface$1;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 507
    iget v6, v5, Lo/NPCICLJSInterface$1;->onPostMessage:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    .line 512
    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 513
    iget-object v2, v0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v4, v1, :cond_9

    .line 516
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/NPCICLJSInterface$1;

    .line 517
    new-instance v3, Lo/trustCred$onMessageChannelReady;

    iget-object v5, v0, Lo/trustCred;->write:Lo/ExceptionTracker;

    iget v6, v2, Lo/NPCICLJSInterface$1;->extraCallback:I

    invoke-interface {v5, v4, v6}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v5

    invoke-direct {v3, v5}, Lo/trustCred$onMessageChannelReady;-><init>(Lo/CryptLib;)V

    .line 518
    iget v5, v2, Lo/NPCICLJSInterface$1;->onPostMessage:I

    invoke-direct {v0, v12, v5}, Lo/trustCred;->extraCallback(Landroid/util/SparseArray;I)Lo/populateHMAC;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lo/trustCred$onMessageChannelReady;->onNavigationEvent(Lo/NPCICLJSInterface$1;Lo/populateHMAC;)V

    .line 519
    iget-object v5, v0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    iget v6, v2, Lo/NPCICLJSInterface$1;->onPostMessage:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    iget-wide v5, v0, Lo/trustCred;->cancelAll:J

    iget-wide v2, v2, Lo/NPCICLJSInterface$1;->onNavigationEvent:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lo/trustCred;->cancelAll:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 522
    :cond_9
    invoke-direct/range {p0 .. p0}, Lo/trustCred;->extraCallback()V

    .line 523
    iget-object v1, v0, Lo/trustCred;->write:Lo/ExceptionTracker;

    invoke-interface {v1}, Lo/ExceptionTracker;->onPostMessage()V

    return-void

    .line 525
    :cond_a
    iget-object v2, v0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    :goto_9
    if-ge v4, v1, :cond_c

    .line 527
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/NPCICLJSInterface$1;

    .line 528
    iget-object v3, v0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    iget v5, v2, Lo/NPCICLJSInterface$1;->onPostMessage:I

    .line 529
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/trustCred$onMessageChannelReady;

    iget v5, v2, Lo/NPCICLJSInterface$1;->onPostMessage:I

    .line 530
    invoke-direct {v0, v12, v5}, Lo/trustCred;->extraCallback(Landroid/util/SparseArray;I)Lo/populateHMAC;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lo/trustCred$onMessageChannelReady;->onNavigationEvent(Lo/NPCICLJSInterface$1;Lo/populateHMAC;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method private static onMessageChannelReady(Lo/saveData$extraCallback;Landroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/saveData$extraCallback;",
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 713
    sget v0, Lo/saveData;->AudioAttributesCompatParcelizer:I

    invoke-virtual {p0, v0}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v0

    .line 714
    iget-object v0, v0, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v0, p1}, Lo/trustCred;->onMessageChannelReady(Lo/DreamAppGlideModule;Landroid/util/SparseArray;)Lo/trustCred$onMessageChannelReady;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 720
    iget-wide v1, v0, Lo/NPCICLJSInterface$2;->extraCommand:J

    .line 721
    invoke-virtual {p1}, Lo/trustCred$onMessageChannelReady;->extraCallback()V

    .line 723
    sget v3, Lo/saveData;->RemoteActionCompatParcelizer:I

    invoke-virtual {p0, v3}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 725
    sget v1, Lo/saveData;->RemoteActionCompatParcelizer:I

    invoke-virtual {p0, v1}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v1

    iget-object v1, v1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v1}, Lo/trustCred;->onMessageChannelReady(Lo/DreamAppGlideModule;)J

    move-result-wide v1

    .line 728
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lo/trustCred;->onMessageChannelReady(Lo/saveData$extraCallback;Lo/trustCred$onMessageChannelReady;JI)V

    .line 730
    iget-object p1, p1, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    iget-object p2, v0, Lo/NPCICLJSInterface$2;->onMessageChannelReady:Lo/populateHMAC;

    iget p2, p2, Lo/populateHMAC;->ICustomTabsCallback:I

    .line 731
    invoke-virtual {p1, p2}, Lo/NPCICLJSInterface$1;->onNavigationEvent(I)Lo/NPCICLJSInterface$3;

    move-result-object p1

    .line 733
    sget p2, Lo/saveData;->onProgressUpdate:I

    invoke-virtual {p0, p2}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 735
    iget-object p2, p2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {p1, p2, v0}, Lo/trustCred;->onMessageChannelReady(Lo/NPCICLJSInterface$3;Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V

    .line 738
    :cond_2
    sget p2, Lo/saveData;->onError:I

    invoke-virtual {p0, p2}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 740
    iget-object p2, p2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {p2, v0}, Lo/trustCred;->onNavigationEvent(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V

    .line 743
    :cond_3
    sget p2, Lo/saveData;->onItemLoaded:I

    invoke-virtual {p0, p2}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 745
    iget-object p2, p2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {p2, v0}, Lo/trustCred;->ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V

    .line 748
    :cond_4
    sget p2, Lo/saveData;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    invoke-virtual {p0, p2}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object p2

    .line 749
    sget v1, Lo/saveData;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:I

    invoke-virtual {p0, v1}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 751
    iget-object p2, p2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    iget-object v1, v1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lo/NPCICLJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lo/trustCred;->onMessageChannelReady(Lo/DreamAppGlideModule;Lo/DreamAppGlideModule;Ljava/lang/String;Lo/NPCICLJSInterface$2;)V

    .line 755
    :cond_6
    iget-object p1, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 757
    iget-object v1, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/saveData$onNavigationEvent;

    .line 758
    iget v2, v1, Lo/saveData;->writeToParcel:I

    sget v3, Lo/saveData;->MediaBrowserCompat$CustomActionResultReceiver:I

    if-ne v2, v3, :cond_7

    .line 759
    iget-object v1, v1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v1, v0, p3}, Lo/trustCred;->onMessageChannelReady(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static onMessageChannelReady(Lo/saveData$extraCallback;Lo/trustCred$onMessageChannelReady;JI)V
    .locals 10

    .line 768
    iget-object p0, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    .line 769
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 771
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/saveData$onNavigationEvent;

    .line 772
    iget v6, v5, Lo/saveData;->writeToParcel:I

    sget v7, Lo/saveData;->MediaBrowserCompat:I

    if-ne v6, v7, :cond_0

    .line 773
    iget-object v5, v5, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    const/16 v6, 0xc

    .line 774
    invoke-virtual {v5, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 775
    invoke-virtual {v5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    :cond_1
    iput v1, p1, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 783
    iput v1, p1, Lo/trustCred$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 784
    iput v1, p1, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    .line 785
    iget-object v2, p1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    invoke-virtual {v2, v3, v4}, Lo/NPCICLJSInterface$2;->onMessageChannelReady(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 790
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/saveData$onNavigationEvent;

    .line 791
    iget v4, v2, Lo/saveData;->writeToParcel:I

    sget v5, Lo/saveData;->MediaBrowserCompat:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v9, v3, 0x1

    .line 792
    iget-object v7, v2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lo/trustCred;->onMessageChannelReady(Lo/trustCred$onMessageChannelReady;IJILo/DreamAppGlideModule;I)I

    move-result v2

    move v8, v2

    move v3, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lo/AxisTracker$DataSenderTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1120
    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 1122
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1124
    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v3

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v5

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v3

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 1135
    invoke-static/range {v3 .. v8}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 1138
    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v1

    .line 1141
    new-array v7, v1, [I

    .line 1142
    new-array v8, v1, [J

    .line 1143
    new-array v5, v1, [J

    .line 1144
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 1157
    aput v12, v7, v11

    .line 1158
    aput-wide v13, v8, v11

    .line 1162
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 1164
    invoke-static/range {v3 .. v8}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v3

    .line 1165
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 1167
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1168
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 1153
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 1171
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lo/AxisTracker$DataSenderTask;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lo/AxisTracker$DataSenderTask;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static onNavigationEvent(Landroid/util/SparseArray;I)Lo/trustCred$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lo/trustCred$onMessageChannelReady;",
            ">;I)",
            "Lo/trustCred$onMessageChannelReady;"
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 902
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/trustCred$onMessageChannelReady;

    return-object p0

    .line 904
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/trustCred$onMessageChannelReady;

    return-object p0
.end method

.method private onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lo/trustCred;->IPostMessageService$Stub:I

    .line 338
    iput v0, p0, Lo/trustCred;->ICustomTabsService$Stub$Proxy:I

    return-void
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;Lo/NPCICLJSInterface$2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 837
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 838
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 839
    invoke-static {v1}, Lo/saveData;->extraCallback(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 841
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 844
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 850
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v0

    .line 851
    iget-wide v1, p1, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    if-nez v0, :cond_1

    .line 852
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    return-void

    .line 847
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected saio entry count: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onNavigationEvent(Lo/saveData$extraCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    iget v1, p0, Lo/trustCred;->extraCallback:I

    iget-object v2, p0, Lo/trustCred;->warmup:[B

    invoke-static {p1, v0, v1, v2}, Lo/trustCred;->extraCallback(Lo/saveData$extraCallback;Landroid/util/SparseArray;I[B)V

    .line 553
    iget-object v0, p0, Lo/trustCred;->onTransact:Lo/generateLink;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    .line 554
    invoke-static {p1}, Lo/trustCred;->onPostMessage(Ljava/util/List;)Lo/generateLink;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 556
    iget-object v1, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 558
    iget-object v3, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/trustCred$onMessageChannelReady;

    invoke-virtual {v3, p1}, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback(Lo/generateLink;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 562
    :cond_1
    iget-wide v1, p0, Lo/trustCred;->IPostMessageService$Stub$Proxy:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 563
    iget-object p1, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    .line 565
    iget-object v1, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/trustCred$onMessageChannelReady;

    iget-wide v5, p0, Lo/trustCred;->IPostMessageService$Stub$Proxy:J

    invoke-virtual {v1, v5, v6}, Lo/trustCred$onMessageChannelReady;->onPostMessage(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 567
    :cond_2
    iput-wide v3, p0, Lo/trustCred;->IPostMessageService$Stub$Proxy:J

    :cond_3
    return-void
.end method

.method private onNavigationEvent(Lo/Event$Action;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1216
    iget v2, v0, Lo/trustCred;->IPostMessageService$Stub:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    .line 1217
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    if-nez v2, :cond_3

    .line 1218
    iget-object v2, v0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-static {v2}, Lo/trustCred;->ICustomTabsCallback(Landroid/util/SparseArray;)Lo/trustCred$onMessageChannelReady;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1222
    iget-wide v2, v0, Lo/trustCred;->INotificationSideChannel:J

    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_0

    .line 1226
    invoke-interface {v1, v3}, Lo/Event$Action;->extraCallback(I)V

    .line 1227
    invoke-direct/range {p0 .. p0}, Lo/trustCred;->onNavigationEvent()V

    return v7

    .line 1224
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :cond_1
    iget-object v8, v2, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v8, v8, Lo/NPCICLJSInterface$2;->asInterface:[J

    iget v9, v2, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    aget-wide v9, v8, v9

    .line 1234
    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_2

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    .line 1237
    invoke-static {v8, v9}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 1240
    :cond_2
    invoke-interface {v1, v8}, Lo/Event$Action;->extraCallback(I)V

    .line 1241
    iput-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    .line 1244
    :cond_3
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v2, v2, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v2, v2, Lo/NPCICLJSInterface$2;->asBinder:[I

    iget-object v8, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget v8, v8, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    aget v2, v2, v8

    iput v2, v0, Lo/trustCred;->getDefaultImpl:I

    .line 1247
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget v2, v2, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    iget-object v8, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget v8, v8, Lo/trustCred$onMessageChannelReady;->asInterface:I

    if-ge v2, v8, :cond_5

    .line 1248
    iget v2, v0, Lo/trustCred;->getDefaultImpl:I

    invoke-interface {v1, v2}, Lo/Event$Action;->extraCallback(I)V

    .line 1249
    iget-object v1, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    invoke-static {v1}, Lo/trustCred$onMessageChannelReady;->onPostMessage(Lo/trustCred$onMessageChannelReady;)V

    .line 1250
    iget-object v1, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    invoke-virtual {v1}, Lo/trustCred$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1251
    iput-object v3, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    .line 1253
    :cond_4
    iput v4, v0, Lo/trustCred;->IPostMessageService$Stub:I

    return v6

    .line 1257
    :cond_5
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v2, v2, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    iget v2, v2, Lo/NPCICLJSInterface$1;->onTransact:I

    if-ne v2, v6, :cond_6

    .line 1258
    iget v2, v0, Lo/trustCred;->getDefaultImpl:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Lo/trustCred;->getDefaultImpl:I

    .line 1259
    invoke-interface {v1, v8}, Lo/Event$Action;->extraCallback(I)V

    .line 1261
    :cond_6
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    invoke-virtual {v2}, Lo/trustCred$onMessageChannelReady;->onNavigationEvent()I

    move-result v2

    iput v2, v0, Lo/trustCred;->setDefaultImpl:I

    .line 1262
    iget v8, v0, Lo/trustCred;->getDefaultImpl:I

    add-int/2addr v8, v2

    iput v8, v0, Lo/trustCred;->getDefaultImpl:I

    .line 1263
    iput v5, v0, Lo/trustCred;->IPostMessageService$Stub:I

    .line 1264
    iput v7, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    .line 1265
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v2, v2, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    iget-object v2, v2, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    iget-object v2, v2, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string v8, "audio/ac4"

    .line 1266
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lo/trustCred;->RemoteActionCompatParcelizer:Z

    .line 1269
    :cond_7
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v2, v2, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 1270
    iget-object v8, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v8, v8, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    .line 1271
    iget-object v9, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget-object v10, v9, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    .line 1272
    iget-object v9, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    iget v9, v9, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1273
    invoke-virtual {v2, v9}, Lo/NPCICLJSInterface$2;->extraCallback(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 1274
    iget-object v13, v0, Lo/trustCred;->ICustomTabsCallback$Stub$Proxy:Lo/getWaivers;

    if-eqz v13, :cond_8

    .line 1275
    invoke-virtual {v13, v11, v12}, Lo/getWaivers;->onPostMessage(J)J

    move-result-wide v11

    :cond_8
    move-wide v14, v11

    .line 1277
    iget v11, v8, Lo/NPCICLJSInterface$1;->onRelationshipValidationResult:I

    if-eqz v11, :cond_d

    .line 1280
    iget-object v11, v0, Lo/trustCred;->getInterfaceDescriptor:Lo/DreamAppGlideModule;

    iget-object v11, v11, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 1281
    aput-byte v7, v11, v7

    .line 1282
    aput-byte v7, v11, v6

    const/4 v12, 0x2

    .line 1283
    aput-byte v7, v11, v12

    .line 1284
    iget v12, v8, Lo/NPCICLJSInterface$1;->onRelationshipValidationResult:I

    add-int/2addr v12, v6

    .line 1285
    iget v13, v8, Lo/NPCICLJSInterface$1;->onRelationshipValidationResult:I

    rsub-int/lit8 v13, v13, 0x4

    .line 1289
    :goto_0
    iget v4, v0, Lo/trustCred;->setDefaultImpl:I

    iget v3, v0, Lo/trustCred;->getDefaultImpl:I

    if-ge v4, v3, :cond_f

    .line 1290
    iget v3, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    if-nez v3, :cond_b

    .line 1292
    invoke-interface {v1, v11, v13, v12}, Lo/Event$Action;->onPostMessage([BII)V

    .line 1293
    iget-object v3, v0, Lo/trustCred;->getInterfaceDescriptor:Lo/DreamAppGlideModule;

    invoke-virtual {v3, v7}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1294
    iget-object v3, v0, Lo/trustCred;->getInterfaceDescriptor:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    if-lez v3, :cond_a

    add-int/lit8 v3, v3, -0x1

    .line 1298
    iput v3, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    .line 1300
    iget-object v3, v0, Lo/trustCred;->asInterface:Lo/DreamAppGlideModule;

    invoke-virtual {v3, v7}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1301
    iget-object v3, v0, Lo/trustCred;->asInterface:Lo/DreamAppGlideModule;

    invoke-interface {v10, v3, v5}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 1303
    iget-object v3, v0, Lo/trustCred;->getInterfaceDescriptor:Lo/DreamAppGlideModule;

    invoke-interface {v10, v3, v6}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 1304
    iget-object v3, v0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v8, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    iget-object v3, v3, Lo/p$a;->onTransact:Ljava/lang/String;

    aget-byte v4, v11, v5

    .line 1305
    invoke-static {v3, v4}, Lo/setViewPool;->ICustomTabsCallback(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lo/trustCred;->INotificationSideChannel$Stub$Proxy:Z

    .line 1306
    iget v3, v0, Lo/trustCred;->setDefaultImpl:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lo/trustCred;->setDefaultImpl:I

    .line 1307
    iget v3, v0, Lo/trustCred;->getDefaultImpl:I

    add-int/2addr v3, v13

    iput v3, v0, Lo/trustCred;->getDefaultImpl:I

    const/4 v3, 0x0

    goto :goto_0

    .line 1296
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    :cond_b
    iget-boolean v4, v0, Lo/trustCred;->INotificationSideChannel$Stub$Proxy:Z

    if-eqz v4, :cond_c

    .line 1312
    iget-object v4, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {v4, v3}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 1313
    iget-object v3, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object v3, v3, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v4, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    invoke-interface {v1, v3, v7, v4}, Lo/Event$Action;->onPostMessage([BII)V

    .line 1314
    iget-object v3, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget v4, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    invoke-interface {v10, v3, v4}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 1315
    iget v3, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    .line 1317
    iget-object v4, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object v4, v4, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget-object v5, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v5

    invoke-static {v4, v5}, Lo/setViewPool;->extraCallback([BI)I

    move-result v4

    .line 1319
    iget-object v5, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object v6, v8, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    iget-object v6, v6, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1320
    iget-object v5, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {v5, v4}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 1321
    iget-object v4, v0, Lo/trustCred;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object v5, v0, Lo/trustCred;->AudioAttributesCompatParcelizer:[Lo/CryptLib;

    invoke-static {v14, v15, v4, v5}, Lo/UpiAppsInstrumentJsonAdapter;->onMessageChannelReady(JLo/DreamAppGlideModule;[Lo/CryptLib;)V

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    .line 1324
    invoke-interface {v10, v1, v3, v4}, Lo/CryptLib;->onNavigationEvent(Lo/Event$Action;IZ)I

    move-result v3

    .line 1326
    :goto_2
    iget v4, v0, Lo/trustCred;->setDefaultImpl:I

    add-int/2addr v4, v3

    iput v4, v0, Lo/trustCred;->setDefaultImpl:I

    .line 1327
    iget v4, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    sub-int/2addr v4, v3

    iput v4, v0, Lo/trustCred;->INotificationSideChannel$Default:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1331
    :cond_d
    iget-boolean v3, v0, Lo/trustCred;->RemoteActionCompatParcelizer:Z

    if-eqz v3, :cond_e

    .line 1332
    iget v3, v0, Lo/trustCred;->getDefaultImpl:I

    iget-object v4, v0, Lo/trustCred;->newSession:Lo/DreamAppGlideModule;

    invoke-static {v3, v4}, Lo/u$e;->extraCallback(ILo/DreamAppGlideModule;)V

    .line 1333
    iget-object v3, v0, Lo/trustCred;->newSession:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v3

    .line 1334
    iget-object v4, v0, Lo/trustCred;->newSession:Lo/DreamAppGlideModule;

    invoke-interface {v10, v4, v3}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 1335
    iget v4, v0, Lo/trustCred;->getDefaultImpl:I

    add-int/2addr v4, v3

    iput v4, v0, Lo/trustCred;->getDefaultImpl:I

    .line 1336
    iget v4, v0, Lo/trustCred;->setDefaultImpl:I

    add-int/2addr v4, v3

    iput v4, v0, Lo/trustCred;->setDefaultImpl:I

    const/4 v3, 0x0

    .line 1337
    iput-boolean v3, v0, Lo/trustCred;->RemoteActionCompatParcelizer:Z

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    .line 1339
    :goto_3
    iget v4, v0, Lo/trustCred;->setDefaultImpl:I

    iget v5, v0, Lo/trustCred;->getDefaultImpl:I

    if-ge v4, v5, :cond_f

    sub-int/2addr v5, v4

    .line 1340
    invoke-interface {v10, v1, v5, v3}, Lo/CryptLib;->onNavigationEvent(Lo/Event$Action;IZ)I

    move-result v4

    .line 1341
    iget v5, v0, Lo/trustCred;->setDefaultImpl:I

    add-int/2addr v5, v4

    iput v5, v0, Lo/trustCred;->setDefaultImpl:I

    goto :goto_3

    .line 1345
    :cond_f
    iget-object v1, v2, Lo/NPCICLJSInterface$2;->newSession:[Z

    aget-boolean v1, v1, v9

    .line 1350
    iget-object v2, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    invoke-static {v2}, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback(Lo/trustCred$onMessageChannelReady;)Lo/NPCICLJSInterface$3;

    move-result-object v2

    if-eqz v2, :cond_10

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    .line 1353
    iget-object v2, v2, Lo/NPCICLJSInterface$3;->ICustomTabsCallback:Lo/CryptLib$extraCallback;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_4

    :cond_10
    move v13, v1

    const/16 v16, 0x0

    .line 1356
    :goto_4
    iget v1, v0, Lo/trustCred;->getDefaultImpl:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 1359
    invoke-direct {v0, v3, v4}, Lo/trustCred;->onMessageChannelReady(J)V

    .line 1360
    iget-object v1, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    invoke-virtual {v1}, Lo/trustCred$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 1361
    iput-object v1, v0, Lo/trustCred;->INotificationSideChannel$Stub:Lo/trustCred$onMessageChannelReady;

    :cond_11
    const/4 v1, 0x3

    .line 1363
    iput v1, v0, Lo/trustCred;->IPostMessageService$Stub:I

    const/4 v1, 0x1

    return v1
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;)J
    .locals 2

    const/16 v0, 0x8

    .line 690
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 691
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 692
    invoke-static {v0}, Lo/saveData;->onNavigationEvent(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method private static onPostMessage(Ljava/util/List;)Lo/generateLink;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/saveData$onNavigationEvent;",
            ">;)",
            "Lo/generateLink;"
        }
    .end annotation

    .line 1413
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1415
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/saveData$onNavigationEvent;

    .line 1416
    iget v5, v4, Lo/saveData;->writeToParcel:I

    sget v6, Lo/saveData;->getNotifyChildrenChangedOptions:I

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    :cond_0
    iget-object v4, v4, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    iget-object v4, v4, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 1421
    invoke-static {v4}, Lo/generateTrustCred;->onPostMessage([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1423
    invoke-static {v4, v5}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1425
    :cond_1
    new-instance v6, Lo/generateLink$extraCallback;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    .line 1429
    :cond_4
    new-instance p0, Lo/generateLink;

    invoke-direct {p0, v3}, Lo/generateLink;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private onPostMessage(Lo/Event$Action;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1180
    iget-object v5, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/trustCred$onMessageChannelReady;

    iget-object v5, v5, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 1181
    iget-boolean v6, v5, Lo/NPCICLJSInterface$2;->postMessage:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 1183
    iget-wide v1, v5, Lo/NPCICLJSInterface$2;->ICustomTabsCallback:J

    .line 1184
    iget-object v3, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/trustCred$onMessageChannelReady;

    move-wide v9, v1

    move-object v1, v3

    move-wide v2, v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 1188
    iput p1, p0, Lo/trustCred;->IPostMessageService$Stub:I

    return-void

    .line 1191
    :cond_2
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 1195
    invoke-interface {p1, v0}, Lo/Event$Action;->extraCallback(I)V

    .line 1196
    iget-object v0, v1, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    invoke-virtual {v0, p1}, Lo/NPCICLJSInterface$2;->ICustomTabsCallback(Lo/Event$Action;)V

    return-void

    .line 1193
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extraCallback(Lo/ExceptionTracker;)V
    .locals 3

    .line 283
    iput-object p1, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    .line 284
    iget-object v0, p0, Lo/trustCred;->ICustomTabsCallback$Stub:Lo/NPCICLJSInterface$1;

    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Lo/trustCred$onMessageChannelReady;

    iget v0, v0, Lo/NPCICLJSInterface$1;->extraCallback:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/trustCred$onMessageChannelReady;-><init>(Lo/CryptLib;)V

    .line 286
    iget-object p1, p0, Lo/trustCred;->ICustomTabsCallback$Stub:Lo/NPCICLJSInterface$1;

    new-instance v0, Lo/populateHMAC;

    invoke-direct {v0, v2, v2, v2, v2}, Lo/populateHMAC;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lo/trustCred$onMessageChannelReady;->onNavigationEvent(Lo/NPCICLJSInterface$1;Lo/populateHMAC;)V

    .line 287
    iget-object p1, p0, Lo/trustCred;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    invoke-direct {p0}, Lo/trustCred;->extraCallback()V

    .line 289
    iget-object p1, p0, Lo/trustCred;->write:Lo/ExceptionTracker;

    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public extraCallback(Lo/Event$Action;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    invoke-static {p1}, Lo/NPCICLJSInterface$5;->onNavigationEvent(Lo/Event$Action;)Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    :cond_0
    :goto_0
    iget p2, p0, Lo/trustCred;->IPostMessageService$Stub:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lo/trustCred;->onNavigationEvent(Lo/Event$Action;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_1
    invoke-direct {p0, p1}, Lo/trustCred;->onPostMessage(Lo/Event$Action;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-direct {p0, p1}, Lo/trustCred;->onMessageChannelReady(Lo/Event$Action;)V

    goto :goto_0

    .line 318
    :cond_3
    invoke-direct {p0, p1}, Lo/trustCred;->ICustomTabsCallback(Lo/Event$Action;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method protected onNavigationEvent(Lo/NPCICLJSInterface$1;)Lo/NPCICLJSInterface$1;
    .locals 0

    return-object p1
.end method
