.class public final Lo/SimUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# static fields
.field public static final extraCallback:Lo/RestClient;

.field private static final onMessageChannelReady:I


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private ICustomTabsCallback$Stub:Z

.field private final onNavigationEvent:J

.field private final onPostMessage:Lo/PrettyfyUglifyJsFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lo/NPCICLJSInterface$6;->ICustomTabsCallback:Lo/NPCICLJSInterface$6;

    sput-object v0, Lo/SimUtil;->extraCallback:Lo/RestClient;

    const-string v0, "ID3"

    .line 56
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/SimUtil;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 66
    invoke-direct {p0, v0, v1}, Lo/SimUtil;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lo/SimUtil;->onNavigationEvent:J

    .line 72
    new-instance p1, Lo/PrettyfyUglifyJsFile;

    invoke-direct {p1}, Lo/PrettyfyUglifyJsFile;-><init>()V

    iput-object p1, p0, Lo/SimUtil;->onPostMessage:Lo/PrettyfyUglifyJsFile;

    .line 73
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0x4000

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/SimUtil;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lo/SimUtil;->onPostMessage:Lo/PrettyfyUglifyJsFile;

    new-instance v1, Lo/trackApiError$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo/trackApiError$onMessageChannelReady;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lo/PrettyfyUglifyJsFile;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    .line 127
    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    .line 128
    new-instance v0, Lo/UpiSdkCallback$extraCallback;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lo/UpiSdkCallback$extraCallback;-><init>(J)V

    invoke-interface {p1, v0}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

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

    .line 81
    new-instance v0, Lo/DreamAppGlideModule;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    :goto_0
    iget-object v4, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v4, v2, v1}, Lo/Event$Action;->extraCallback([BII)V

    .line 85
    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 86
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v4

    sget v5, Lo/SimUtil;->onMessageChannelReady:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    .line 89
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 90
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 92
    invoke-interface {p1, v4}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 95
    invoke-interface {p1, v3}, Lo/Event$Action;->onNavigationEvent(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 100
    :goto_2
    iget-object v5, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lo/Event$Action;->extraCallback([BII)V

    .line 101
    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 102
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_2

    const v6, 0xac41

    if-eq v5, v6, :cond_2

    .line 105
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_1

    return v2

    .line 109
    :cond_1
    invoke-interface {p1, v4}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_3

    return v6

    .line 114
    :cond_3
    iget-object v6, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v6, v5}, Lo/u$e;->extraCallback([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, -0x7

    .line 118
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

    .line 145
    iget-object p2, p0, Lo/SimUtil;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 151
    :cond_0
    iget-object p2, p0, Lo/SimUtil;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 152
    iget-object p2, p0, Lo/SimUtil;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, p1}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 154
    iget-boolean p1, p0, Lo/SimUtil;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lo/SimUtil;->onPostMessage:Lo/PrettyfyUglifyJsFile;

    iget-wide v1, p0, Lo/SimUtil;->onNavigationEvent:J

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lo/PrettyfyUglifyJsFile;->extraCallback(JI)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lo/SimUtil;->ICustomTabsCallback$Stub:Z

    .line 161
    :cond_1
    iget-object p1, p0, Lo/SimUtil;->onPostMessage:Lo/PrettyfyUglifyJsFile;

    iget-object p2, p0, Lo/SimUtil;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p2}, Lo/PrettyfyUglifyJsFile;->onNavigationEvent(Lo/DreamAppGlideModule;)V

    return v0
.end method
