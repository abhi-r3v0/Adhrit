.class public final Lo/NPCICLJSInterface$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# static fields
.field private static final ICustomTabsCallback:I

.field public static final onPostMessage:Lo/RestClient;


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private final extraCallback:Lo/DreamAppGlideModule;

.field private final onMessageChannelReady:Lo/TLSSocketFactory;

.field private final onNavigationEvent:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lo/RemoteAssetService;->onNavigationEvent:Lo/RemoteAssetService;

    sput-object v0, Lo/NPCICLJSInterface$4;->onPostMessage:Lo/RestClient;

    const-string v0, "ID3"

    .line 48
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/NPCICLJSInterface$4;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v1}, Lo/NPCICLJSInterface$4;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lo/NPCICLJSInterface$4;->onNavigationEvent:J

    .line 62
    new-instance p1, Lo/TLSSocketFactory;

    invoke-direct {p1}, Lo/TLSSocketFactory;-><init>()V

    iput-object p1, p0, Lo/NPCICLJSInterface$4;->onMessageChannelReady:Lo/TLSSocketFactory;

    .line 63
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0xae2

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/NPCICLJSInterface$4;->extraCallback:Lo/DreamAppGlideModule;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lo/NPCICLJSInterface$4;->onMessageChannelReady:Lo/TLSSocketFactory;

    new-instance v1, Lo/trackApiError$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo/trackApiError$onMessageChannelReady;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lo/TLSSocketFactory;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    .line 116
    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    .line 117
    new-instance v0, Lo/UpiSdkCallback$extraCallback;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lo/UpiSdkCallback$extraCallback;-><init>(J)V

    invoke-interface {p1, v0}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

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

    .line 71
    new-instance v0, Lo/DreamAppGlideModule;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 74
    :goto_0
    iget-object v4, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v4, v2, v1}, Lo/Event$Action;->extraCallback([BII)V

    .line 75
    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 76
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v4

    sget v5, Lo/NPCICLJSInterface$4;->ICustomTabsCallback:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    .line 79
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 80
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 82
    invoke-interface {p1, v4}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 85
    invoke-interface {p1, v3}, Lo/Event$Action;->onNavigationEvent(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 90
    :goto_2
    iget-object v5, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Lo/Event$Action;->extraCallback([BII)V

    .line 91
    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 92
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_2

    .line 95
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_1

    return v2

    .line 99
    :cond_1
    invoke-interface {p1, v4}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_3

    return v5

    .line 104
    :cond_3
    iget-object v5, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v5}, Lo/v;->onPostMessage([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, -0x6

    .line 108
    invoke-interface {p1, v5}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_2
.end method

.method public final onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    iget-object p2, p0, Lo/NPCICLJSInterface$4;->extraCallback:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 140
    :cond_0
    iget-object p2, p0, Lo/NPCICLJSInterface$4;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 141
    iget-object p2, p0, Lo/NPCICLJSInterface$4;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, p1}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 143
    iget-boolean p1, p0, Lo/NPCICLJSInterface$4;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lo/NPCICLJSInterface$4;->onMessageChannelReady:Lo/TLSSocketFactory;

    iget-wide v1, p0, Lo/NPCICLJSInterface$4;->onNavigationEvent:J

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lo/TLSSocketFactory;->extraCallback(JI)V

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lo/NPCICLJSInterface$4;->ICustomTabsCallback$Stub:Z

    .line 150
    :cond_1
    iget-object p1, p0, Lo/NPCICLJSInterface$4;->onMessageChannelReady:Lo/TLSSocketFactory;

    iget-object p2, p0, Lo/NPCICLJSInterface$4;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p2}, Lo/TLSSocketFactory;->onNavigationEvent(Lo/DreamAppGlideModule;)V

    return v0
.end method
