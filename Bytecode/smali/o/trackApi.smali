.class public final Lo/trackApi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trackApi$onNavigationEvent;,
        Lo/trackApi$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:J

.field public static final extraCallback:Lo/RestClient;

.field private static final onMessageChannelReady:J

.field private static final onNavigationEvent:J

.field private static final onPostMessage:J


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/util/SparseBooleanArray;

.field private final ICustomTabsService:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/trackApiError;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Lo/trackApiError;

.field private IPostMessageService:I

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getWaivers;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Landroid/util/SparseIntArray;

.field private extraCommand:I

.field private getInterfaceDescriptor:Lo/downloadFile;

.field private mayLaunchUrl:Z

.field private final newSession:Landroid/util/SparseBooleanArray;

.field private final onRelationshipValidationResult:Lo/trackApiError$ICustomTabsCallback;

.field private final onTransact:I

.field private postMessage:Z

.field private requestPostMessageChannel:Lo/ExceptionTracker;

.field private updateVisuals:Z

.field private final warmup:Lo/trackScreenView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget-object v0, Lo/trackPaymentStatus;->ICustomTabsCallback:Lo/trackPaymentStatus;

    sput-object v0, Lo/trackApi;->extraCallback:Lo/RestClient;

    const-string v0, "AC-3"

    .line 104
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/trackApi;->onPostMessage:J

    const-string v0, "EAC3"

    .line 105
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/trackApi;->ICustomTabsCallback:J

    const-string v0, "AC-4"

    .line 106
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/trackApi;->onNavigationEvent:J

    const-string v0, "HEVC"

    .line 107
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/trackApi;->onMessageChannelReady:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lo/trackApi;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0, p1}, Lo/trackApi;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 152
    new-instance v0, Lo/getWaivers;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lo/getWaivers;-><init>(J)V

    new-instance v1, Lo/getDeviceId;

    invoke-direct {v1, p2}, Lo/getDeviceId;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lo/trackApi;-><init>(ILo/getWaivers;Lo/trackApiError$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(ILo/getWaivers;Lo/trackApiError$ICustomTabsCallback;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/trackApiError$ICustomTabsCallback;

    iput-object p3, p0, Lo/trackApi;->onRelationshipValidationResult:Lo/trackApiError$ICustomTabsCallback;

    .line 169
    iput p1, p0, Lo/trackApi;->onTransact:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/trackApi;->asBinder:Ljava/util/List;

    .line 174
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/trackApi;->asBinder:Ljava/util/List;

    .line 176
    :goto_1
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lo/DreamAppGlideModule;-><init>([BI)V

    iput-object p1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    .line 177
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lo/trackApi;->newSession:Landroid/util/SparseBooleanArray;

    .line 178
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lo/trackApi;->ICustomTabsCallback$Stub$Proxy:Landroid/util/SparseBooleanArray;

    .line 179
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    .line 180
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lo/trackApi;->asInterface:Landroid/util/SparseIntArray;

    .line 181
    new-instance p1, Lo/trackScreenView;

    invoke-direct {p1}, Lo/trackScreenView;-><init>()V

    iput-object p1, p0, Lo/trackApi;->warmup:Lo/trackScreenView;

    const/4 p1, -0x1

    .line 182
    iput p1, p0, Lo/trackApi;->ICustomTabsService$Stub:I

    .line 183
    invoke-direct {p0}, Lo/trackApi;->onRelationshipValidationResult()V

    return-void
.end method

.method private ICustomTabsCallback()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 403
    iget-object v1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    .line 404
    iget-object v2, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v2, v0, v1}, Lo/trackException;->onPostMessage([BII)I

    move-result v2

    .line 407
    iget-object v3, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v3, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_1

    .line 410
    iget v1, p0, Lo/trackApi;->IPostMessageService:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lo/trackApi;->IPostMessageService:I

    .line 411
    iget v0, p0, Lo/trackApi;->onTransact:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x178

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lo/trackApi;->IPostMessageService:I

    :cond_2
    :goto_0
    return v3
.end method

.method static synthetic ICustomTabsCallback(Lo/trackApi;)I
    .locals 0

    .line 54
    iget p0, p0, Lo/trackApi;->extraCommand:I

    return p0
.end method

.method private ICustomTabsCallback(I)Z
    .locals 2

    .line 422
    iget v0, p0, Lo/trackApi;->onTransact:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lo/trackApi;->updateVisuals:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/trackApi;->ICustomTabsCallback$Stub$Proxy:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic ICustomTabsCallback(Lo/trackApi;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lo/trackApi;->updateVisuals:Z

    return p1
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/trackApi;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->newSession:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic asBinder(Lo/trackApi;)Lo/trackApiError;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->ICustomTabsService$Stub$Proxy:Lo/trackApiError;

    return-object p0
.end method

.method static synthetic asInterface(Lo/trackApi;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->ICustomTabsCallback$Stub$Proxy:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic extraCallback()J
    .locals 2

    .line 54
    sget-wide v0, Lo/trackApi;->onMessageChannelReady:J

    return-wide v0
.end method

.method static synthetic extraCallback(Lo/trackApi;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->asBinder:Ljava/util/List;

    return-object p0
.end method

.method private extraCallback(J)V
    .locals 12

    .line 356
    iget-boolean v0, p0, Lo/trackApi;->mayLaunchUrl:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lo/trackApi;->mayLaunchUrl:Z

    .line 358
    iget-object v0, p0, Lo/trackApi;->warmup:Lo/trackScreenView;

    invoke-virtual {v0}, Lo/trackScreenView;->ICustomTabsCallback()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 359
    new-instance v0, Lo/downloadFile;

    iget-object v1, p0, Lo/trackApi;->warmup:Lo/trackScreenView;

    .line 361
    invoke-virtual {v1}, Lo/trackScreenView;->onMessageChannelReady()Lo/getWaivers;

    move-result-object v6

    iget-object v1, p0, Lo/trackApi;->warmup:Lo/trackScreenView;

    .line 362
    invoke-virtual {v1}, Lo/trackScreenView;->ICustomTabsCallback()J

    move-result-wide v7

    iget v11, p0, Lo/trackApi;->ICustomTabsService$Stub:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v11}, Lo/downloadFile;-><init>(Lo/getWaivers;JJI)V

    iput-object v0, p0, Lo/trackApi;->getInterfaceDescriptor:Lo/downloadFile;

    .line 365
    iget-object p1, p0, Lo/trackApi;->requestPostMessageChannel:Lo/ExceptionTracker;

    invoke-virtual {v0}, Lo/AxisTracker;->ICustomTabsCallback()Lo/UpiSdkCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    return-void

    .line 367
    :cond_0
    iget-object p1, p0, Lo/trackApi;->requestPostMessageChannel:Lo/ExceptionTracker;

    new-instance p2, Lo/UpiSdkCallback$extraCallback;

    iget-object v0, p0, Lo/trackApi;->warmup:Lo/trackScreenView;

    invoke-virtual {v0}, Lo/trackScreenView;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lo/UpiSdkCallback$extraCallback;-><init>(J)V

    invoke-interface {p1, p2}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    :cond_1
    return-void
.end method

.method static synthetic getInterfaceDescriptor(Lo/trackApi;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lo/trackApi;->updateVisuals:Z

    return p0
.end method

.method static synthetic onMessageChannelReady()J
    .locals 2

    .line 54
    sget-wide v0, Lo/trackApi;->onNavigationEvent:J

    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/trackApi;)Landroid/util/SparseArray;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/trackApi;)I
    .locals 0

    .line 54
    iget p0, p0, Lo/trackApi;->onTransact:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/trackApi;I)I
    .locals 0

    .line 54
    iput p1, p0, Lo/trackApi;->ICustomTabsService$Stub:I

    return p1
.end method

.method static synthetic onNavigationEvent()J
    .locals 2

    .line 54
    sget-wide v0, Lo/trackApi;->ICustomTabsCallback:J

    return-wide v0
.end method

.method private onNavigationEvent(Lo/Event$Action;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 376
    iget-object v1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    .line 377
    iget-object v1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v1

    if-lez v1, :cond_0

    .line 379
    iget-object v4, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_0
    iget-object v4, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v4, v0, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 384
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 385
    iget-object v1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    .line 386
    invoke-interface {p1, v0, v1, v4}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    .line 390
    :cond_2
    iget-object v5, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic onPostMessage(Lo/trackApi;)I
    .locals 2

    .line 54
    iget v0, p0, Lo/trackApi;->extraCommand:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/trackApi;->extraCommand:I

    return v0
.end method

.method static synthetic onPostMessage(Lo/trackApi;I)I
    .locals 0

    .line 54
    iput p1, p0, Lo/trackApi;->extraCommand:I

    return p1
.end method

.method static synthetic onPostMessage()J
    .locals 2

    .line 54
    sget-wide v0, Lo/trackApi;->onPostMessage:J

    return-wide v0
.end method

.method static synthetic onPostMessage(Lo/trackApi;Lo/trackApiError;)Lo/trackApiError;
    .locals 0

    .line 54
    iput-object p1, p0, Lo/trackApi;->ICustomTabsService$Stub$Proxy:Lo/trackApiError;

    return-object p1
.end method

.method static synthetic onRelationshipValidationResult(Lo/trackApi;)Lo/trackApiError$ICustomTabsCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->onRelationshipValidationResult:Lo/trackApiError$ICustomTabsCallback;

    return-object p0
.end method

.method private onRelationshipValidationResult()V
    .locals 7

    .line 428
    iget-object v0, p0, Lo/trackApi;->newSession:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 429
    iget-object v0, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 430
    iget-object v0, p0, Lo/trackApi;->onRelationshipValidationResult:Lo/trackApiError$ICustomTabsCallback;

    .line 431
    invoke-interface {v0}, Lo/trackApiError$ICustomTabsCallback;->onNavigationEvent()Landroid/util/SparseArray;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 434
    iget-object v4, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    new-instance v1, Lo/getFileFromAssets;

    new-instance v3, Lo/trackApi$onMessageChannelReady;

    invoke-direct {v3, p0}, Lo/trackApi$onMessageChannelReady;-><init>(Lo/trackApi;)V

    invoke-direct {v1, v3}, Lo/getFileFromAssets;-><init>(Lo/endTransaction;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lo/trackApi;->ICustomTabsService$Stub$Proxy:Lo/trackApiError;

    return-void
.end method

.method static synthetic onTransact(Lo/trackApi;)Lo/ExceptionTracker;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/trackApi;->requestPostMessageChannel:Lo/ExceptionTracker;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/trackApi;->requestPostMessageChannel:Lo/ExceptionTracker;

    return-void
.end method

.method public final extraCallback(Lo/Event$Action;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 191
    invoke-interface {p1, v0, v1, v2}, Lo/Event$Action;->extraCallback([BII)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 196
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 202
    invoke-interface {p1, v2}, Lo/Event$Action;->extraCallback(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final onMessageChannelReady(JJ)V
    .locals 10

    .line 216
    iget p1, p0, Lo/trackApi;->onTransact:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 217
    iget-object p1, p0, Lo/trackApi;->asBinder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 219
    iget-object v4, p0, Lo/trackApi;->asBinder:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getWaivers;

    .line 221
    invoke-virtual {v4}, Lo/getWaivers;->onNavigationEvent()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 223
    invoke-virtual {v4}, Lo/getWaivers;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    .line 224
    invoke-virtual {v4}, Lo/getWaivers;->onPostMessage()J

    move-result-wide v2

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 230
    :cond_2
    invoke-virtual {v4}, Lo/getWaivers;->extraCallback()V

    .line 231
    invoke-virtual {v4, p3, p4}, Lo/getWaivers;->ICustomTabsCallback(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 234
    iget-object p1, p0, Lo/trackApi;->getInterfaceDescriptor:Lo/downloadFile;

    if-eqz p1, :cond_5

    .line 235
    invoke-virtual {p1, p3, p4}, Lo/AxisTracker;->onNavigationEvent(J)V

    .line 237
    :cond_5
    iget-object p1, p0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback()V

    .line 238
    iget-object p1, p0, Lo/trackApi;->asInterface:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 239
    :goto_3
    iget-object p2, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 240
    iget-object p2, p0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/trackApiError;

    invoke-interface {p2}, Lo/trackApiError;->onNavigationEvent()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 242
    :cond_6
    iput v0, p0, Lo/trackApi;->IPostMessageService:I

    return-void
.end method

.method public final onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 253
    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v3

    .line 254
    iget-boolean v5, v0, Lo/trackApi;->updateVisuals:Z

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 255
    iget v5, v0, Lo/trackApi;->onTransact:I

    if-eq v5, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 256
    iget-object v5, v0, Lo/trackApi;->warmup:Lo/trackScreenView;

    invoke-virtual {v5}, Lo/trackScreenView;->extraCallback()Z

    move-result v5

    if-nez v5, :cond_1

    .line 257
    iget-object v3, v0, Lo/trackApi;->warmup:Lo/trackScreenView;

    iget v4, v0, Lo/trackApi;->ICustomTabsService$Stub:I

    invoke-virtual {v3, v1, v2, v4}, Lo/trackScreenView;->onMessageChannelReady(Lo/Event$Action;Lo/SessionInfo;I)I

    move-result v1

    return v1

    .line 259
    :cond_1
    invoke-direct {v0, v3, v4}, Lo/trackApi;->extraCallback(J)V

    .line 261
    iget-boolean v5, v0, Lo/trackApi;->postMessage:Z

    if-eqz v5, :cond_2

    .line 262
    iput-boolean v11, v0, Lo/trackApi;->postMessage:Z

    const-wide/16 v12, 0x0

    .line 263
    invoke-virtual {v0, v12, v13, v12, v13}, Lo/trackApi;->onMessageChannelReady(JJ)V

    .line 264
    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-eqz v5, :cond_2

    .line 265
    iput-wide v12, v2, Lo/SessionInfo;->onNavigationEvent:J

    return v10

    .line 270
    :cond_2
    iget-object v5, v0, Lo/trackApi;->getInterfaceDescriptor:Lo/downloadFile;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lo/AxisTracker;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    iget-object v3, v0, Lo/trackApi;->getInterfaceDescriptor:Lo/downloadFile;

    invoke-virtual {v3, v1, v2, v6}, Lo/AxisTracker;->onPostMessage(Lo/Event$Action;Lo/SessionInfo;Lo/AxisTracker$extraCallback;)I

    move-result v1

    return v1

    .line 276
    :cond_3
    invoke-direct/range {p0 .. p1}, Lo/trackApi;->onNavigationEvent(Lo/Event$Action;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    return v1

    .line 280
    :cond_4
    invoke-direct/range {p0 .. p0}, Lo/trackApi;->ICustomTabsCallback()I

    move-result v1

    .line 281
    iget-object v2, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v2

    if-le v1, v2, :cond_5

    return v11

    .line 289
    :cond_5
    iget-object v5, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v5

    const/high16 v12, 0x800000

    and-int/2addr v12, v5

    if-eqz v12, :cond_6

    .line 292
    iget-object v2, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v11

    :cond_6
    const/high16 v12, 0x400000

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    or-int/2addr v12, v11

    const v13, 0x1fff00

    and-int/2addr v13, v5

    shr-int/lit8 v13, v13, 0x8

    and-int/lit8 v14, v5, 0x20

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    and-int/lit8 v15, v5, 0x10

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_a

    .line 302
    iget-object v6, v0, Lo/trackApi;->ICustomTabsService:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/trackApiError;

    :cond_a
    if-nez v6, :cond_b

    .line 304
    iget-object v2, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v11

    .line 309
    :cond_b
    iget v15, v0, Lo/trackApi;->onTransact:I

    if-eq v15, v9, :cond_d

    and-int/lit8 v5, v5, 0xf

    .line 311
    iget-object v15, v0, Lo/trackApi;->asInterface:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v15, v13, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 312
    iget-object v8, v0, Lo/trackApi;->asInterface:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v5, :cond_c

    .line 315
    iget-object v2, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v11

    :cond_c
    add-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_d

    .line 319
    invoke-interface {v6}, Lo/trackApiError;->onNavigationEvent()V

    :cond_d
    if-eqz v14, :cond_f

    .line 325
    iget-object v5, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v5

    .line 326
    iget-object v7, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v7}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e

    const/4 v7, 0x2

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v12, v7

    .line 332
    iget-object v7, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    sub-int/2addr v5, v10

    invoke-virtual {v7, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 336
    :cond_f
    iget-boolean v5, v0, Lo/trackApi;->updateVisuals:Z

    .line 337
    invoke-direct {v0, v13}, Lo/trackApi;->ICustomTabsCallback(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 338
    iget-object v7, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v7, v1}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 339
    iget-object v7, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-interface {v6, v7, v12}, Lo/trackApiError;->onPostMessage(Lo/DreamAppGlideModule;I)V

    .line 340
    iget-object v6, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v6, v2}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 342
    :cond_10
    iget v2, v0, Lo/trackApi;->onTransact:I

    if-eq v2, v9, :cond_11

    if-nez v5, :cond_11

    iget-boolean v2, v0, Lo/trackApi;->updateVisuals:Z

    if-eqz v2, :cond_11

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_11

    .line 346
    iput-boolean v10, v0, Lo/trackApi;->postMessage:Z

    .line 349
    :cond_11
    iget-object v2, v0, Lo/trackApi;->ICustomTabsCallback$Stub:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v11
.end method
