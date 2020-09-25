.class public final Lo/HlsPlaylistTracker$PlaylistStuckException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/HlsPlaylistTracker$PlaylistResetException;",
        ">;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;


# instance fields
.field private final extraCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/HlsPlaylistTracker$PlaylistResetException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-direct {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;-><init>()V

    sput-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    new-instance v0, Lo/createMediaSource;

    invoke-direct {v0}, Lo/createMediaSource;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/HlsPlaylistTracker$PlaylistResetException;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()D
    .locals 2

    .line 2
    sget-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-virtual {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    invoke-interface {v0}, Lo/HlsPlaylistTracker$PlaylistResetException;->ICustomTabsCallback()D

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-virtual {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    invoke-interface {v0}, Lo/HlsPlaylistTracker$PlaylistResetException;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onMessageChannelReady()J
    .locals 2

    .line 4
    sget-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-virtual {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    invoke-interface {v0}, Lo/HlsPlaylistTracker$PlaylistResetException;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onNavigationEvent()J
    .locals 2

    .line 3
    sget-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-virtual {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    invoke-interface {v0}, Lo/HlsPlaylistTracker$PlaylistResetException;->onNavigationEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/HlsPlaylistTracker$PlaylistStuckException;->onMessageChannelReady:Lo/HlsPlaylistTracker$PlaylistStuckException;

    invoke-virtual {v0}, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    invoke-interface {v0}, Lo/HlsPlaylistTracker$PlaylistResetException;->extraCallback()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/HlsPlaylistTracker$PlaylistStuckException;->extraCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HlsPlaylistTracker$PlaylistResetException;

    return-object v0
.end method
