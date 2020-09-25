.class public final Lo/UPIJSInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# static fields
.field private static final extraCallback:I

.field public static final onNavigationEvent:Lo/RestClient;


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private final ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private final asBinder:Lo/PublisherException;

.field private asInterface:J

.field private getInterfaceDescriptor:I

.field private newSession:J

.field private final onMessageChannelReady:Lo/getSIMOperators;

.field private final onPostMessage:I

.field private onRelationshipValidationResult:Lo/ExceptionTracker;

.field private final onTransact:Lo/DreamAppGlideModule;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lo/getSubscriberId;->onNavigationEvent:Lo/getSubscriberId;

    sput-object v0, Lo/UPIJSInterface;->onNavigationEvent:Lo/RestClient;

    const-string v0, "ID3"

    .line 69
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/UPIJSInterface;->extraCallback:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 99
    invoke-direct {p0, v0, v1}, Lo/UPIJSInterface;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lo/UPIJSInterface;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide p1, p0, Lo/UPIJSInterface;->ICustomTabsCallback$Stub:J

    .line 113
    iput-wide p1, p0, Lo/UPIJSInterface;->asInterface:J

    .line 114
    iput p3, p0, Lo/UPIJSInterface;->onPostMessage:I

    .line 115
    new-instance p1, Lo/getSIMOperators;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lo/getSIMOperators;-><init>(Z)V

    iput-object p1, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    .line 116
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/UPIJSInterface;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    const-wide/16 p1, -0x1

    .line 118
    iput-wide p1, p0, Lo/UPIJSInterface;->newSession:J

    .line 119
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    .line 120
    new-instance p2, Lo/PublisherException;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {p2, p1}, Lo/PublisherException;-><init>([B)V

    iput-object p2, p0, Lo/UPIJSInterface;->asBinder:Lo/PublisherException;

    return-void
.end method

.method private onMessageChannelReady(JZZ)V
    .locals 6

    .line 239
    iget-boolean v0, p0, Lo/UPIJSInterface;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 242
    iget p3, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_2

    .line 243
    iget-object v3, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    .line 244
    invoke-virtual {v3}, Lo/getSIMOperators;->onMessageChannelReady()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    if-nez p4, :cond_2

    return-void

    .line 251
    :cond_2
    iget-object p4, p0, Lo/UPIJSInterface;->onRelationshipValidationResult:Lo/ExceptionTracker;

    invoke-static {p4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/ExceptionTracker;

    if-eqz p3, :cond_3

    .line 252
    iget-object p3, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    invoke-virtual {p3}, Lo/getSIMOperators;->onMessageChannelReady()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-eqz p3, :cond_3

    .line 253
    invoke-direct {p0, p1, p2}, Lo/UPIJSInterface;->onPostMessage(J)Lo/UpiSdkCallback;

    move-result-object p1

    invoke-interface {p4, p1}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    goto :goto_1

    .line 255
    :cond_3
    new-instance p1, Lo/UpiSdkCallback$extraCallback;

    invoke-direct {p1, v1, v2}, Lo/UpiSdkCallback$extraCallback;-><init>(J)V

    invoke-interface {p4, p1}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    .line 257
    :goto_1
    iput-boolean v0, p0, Lo/UPIJSInterface;->ICustomTabsService:Z

    return-void
.end method

.method private onMessageChannelReady(Lo/Event$Action;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 262
    iget-boolean v0, p0, Lo/UPIJSInterface;->warmup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 265
    iput v0, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    .line 266
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 267
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lo/UPIJSInterface;->onPostMessage(Lo/Event$Action;)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 274
    :cond_2
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-interface {p1, v5, v1, v6, v7}, Lo/Event$Action;->onNavigationEvent([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v5, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 277
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    .line 278
    invoke-static {v5}, Lo/getSIMOperators;->ICustomTabsCallback(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 285
    :cond_3
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v6, 0x4

    invoke-interface {p1, v5, v1, v6, v7}, Lo/Event$Action;->onNavigationEvent([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Lo/UPIJSInterface;->asBinder:Lo/PublisherException;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 290
    iget-object v5, p0, Lo/UPIJSInterface;->asBinder:Lo/PublisherException;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_4

    int-to-long v8, v5

    add-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_5

    add-int/lit8 v5, v5, -0x6

    .line 300
    invoke-interface {p1, v5, v7}, Lo/Event$Action;->ICustomTabsCallback(IZ)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 293
    :cond_4
    iput-boolean v7, p0, Lo/UPIJSInterface;->warmup:Z

    .line 294
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Malformed ADTS stream"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    move v1, v2

    .line 305
    :goto_1
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    if-lez v1, :cond_6

    int-to-long v0, v1

    .line 307
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    goto :goto_2

    .line 309
    :cond_6
    iput v0, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    .line 311
    :goto_2
    iput-boolean v7, p0, Lo/UPIJSInterface;->warmup:Z

    return-void
.end method

.method private static onPostMessage(IJ)I
    .locals 4

    shl-int/lit8 p0, p0, 0x3

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 327
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private onPostMessage(Lo/Event$Action;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    :goto_0
    iget-object v2, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lo/Event$Action;->extraCallback([BII)V

    .line 220
    iget-object v2, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 221
    iget-object v2, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->newSession()I

    move-result v2

    sget v3, Lo/UPIJSInterface;->extraCallback:I

    if-ne v2, v3, :cond_0

    .line 224
    iget-object v2, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 225
    iget-object v2, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 227
    invoke-interface {p1, v2}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 230
    invoke-interface {p1, v1}, Lo/Event$Action;->onNavigationEvent(I)V

    .line 231
    iget-wide v2, p0, Lo/UPIJSInterface;->newSession:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    int-to-long v2, v1

    .line 232
    iput-wide v2, p0, Lo/UPIJSInterface;->newSession:J

    :cond_1
    return v1
.end method

.method private onPostMessage(J)Lo/UpiSdkCallback;
    .locals 10

    .line 315
    iget v0, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    iget-object v1, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    invoke-virtual {v1}, Lo/getSIMOperators;->onMessageChannelReady()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/UPIJSInterface;->onPostMessage(IJ)I

    move-result v8

    .line 316
    new-instance v0, Lo/AxisLogger;

    iget-wide v6, p0, Lo/UPIJSInterface;->newSession:J

    iget v9, p0, Lo/UPIJSInterface;->getInterfaceDescriptor:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lo/AxisLogger;-><init>(JJII)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 4

    .line 167
    iput-object p1, p0, Lo/UPIJSInterface;->onRelationshipValidationResult:Lo/ExceptionTracker;

    .line 168
    iget-object v0, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    new-instance v1, Lo/trackApiError$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo/trackApiError$onMessageChannelReady;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lo/getSIMOperators;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    .line 169
    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    return-void
.end method

.method public final extraCallback(Lo/Event$Action;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1}, Lo/UPIJSInterface;->onPostMessage(Lo/Event$Action;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 135
    :goto_1
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lo/Event$Action;->extraCallback([BII)V

    .line 136
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v5, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 137
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    .line 138
    invoke-static {v5}, Lo/getSIMOperators;->ICustomTabsCallback(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-interface {p1, v3}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 152
    :cond_2
    iget-object v5, p0, Lo/UPIJSInterface;->onTransact:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v5, v1, v6}, Lo/Event$Action;->extraCallback([BII)V

    .line 153
    iget-object v5, p0, Lo/UPIJSInterface;->asBinder:Lo/PublisherException;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 154
    iget-object v5, p0, Lo/UPIJSInterface;->asBinder:Lo/PublisherException;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 159
    invoke-interface {p1, v6}, Lo/Event$Action;->onNavigationEvent(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public final onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    .line 188
    iget p2, p0, Lo/UPIJSInterface;->onPostMessage:I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lo/UPIJSInterface;->onMessageChannelReady(Lo/Event$Action;)V

    .line 194
    :cond_1
    iget-object v4, p0, Lo/UPIJSInterface;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v4, v4, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v5, 0x800

    invoke-interface {p1, v4, v3, v5}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result p1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 196
    :goto_1
    invoke-direct {p0, v0, v1, p2, v5}, Lo/UPIJSInterface;->onMessageChannelReady(JZZ)V

    if-eqz v5, :cond_3

    return v4

    .line 202
    :cond_3
    iget-object p2, p0, Lo/UPIJSInterface;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 203
    iget-object p2, p0, Lo/UPIJSInterface;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, p1}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 205
    iget-boolean p1, p0, Lo/UPIJSInterface;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez p1, :cond_4

    .line 207
    iget-object p1, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    iget-wide v0, p0, Lo/UPIJSInterface;->asInterface:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Lo/getSIMOperators;->extraCallback(JI)V

    .line 208
    iput-boolean v2, p0, Lo/UPIJSInterface;->ICustomTabsCallback$Stub$Proxy:Z

    .line 212
    :cond_4
    iget-object p1, p0, Lo/UPIJSInterface;->onMessageChannelReady:Lo/getSIMOperators;

    iget-object p2, p0, Lo/UPIJSInterface;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p2}, Lo/getSIMOperators;->onNavigationEvent(Lo/DreamAppGlideModule;)V

    return v3
.end method
