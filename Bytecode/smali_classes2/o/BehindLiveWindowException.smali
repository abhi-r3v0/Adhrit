.class public final Lo/BehindLiveWindowException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/MediaCodecUtil$DecoderQueryException;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/BehindLiveWindowException;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/MediaCodecUtil$DecoderQueryException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/BehindLiveWindowException;

    invoke-direct {v0}, Lo/BehindLiveWindowException;-><init>()V

    sput-object v0, Lo/BehindLiveWindowException;->extraCallback:Lo/BehindLiveWindowException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    new-instance v0, Lo/DownloadException;

    invoke-direct {v0}, Lo/DownloadException;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/BehindLiveWindowException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/MediaCodecUtil$DecoderQueryException;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/BehindLiveWindowException;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 1
    sget-object v0, Lo/BehindLiveWindowException;->extraCallback:Lo/BehindLiveWindowException;

    invoke-virtual {v0}, Lo/BehindLiveWindowException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaCodecUtil$DecoderQueryException;

    invoke-interface {v0}, Lo/MediaCodecUtil$DecoderQueryException;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 2
    sget-object v0, Lo/BehindLiveWindowException;->extraCallback:Lo/BehindLiveWindowException;

    invoke-virtual {v0}, Lo/BehindLiveWindowException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaCodecUtil$DecoderQueryException;

    invoke-interface {v0}, Lo/MediaCodecUtil$DecoderQueryException;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 3
    sget-object v0, Lo/BehindLiveWindowException;->extraCallback:Lo/BehindLiveWindowException;

    invoke-virtual {v0}, Lo/BehindLiveWindowException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaCodecUtil$DecoderQueryException;

    invoke-interface {v0}, Lo/MediaCodecUtil$DecoderQueryException;->onNavigationEvent()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/BehindLiveWindowException;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaCodecUtil$DecoderQueryException;

    return-object v0
.end method
