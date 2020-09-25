.class public final Lo/setBufferedPosition$extraCallback;
.super Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setBufferedPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady<",
        "Lo/setBufferedPosition$extraCallback;",
        "Lo/setBufferedPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;-><init>(Ljava/lang/Class;)V

    .line 80
    iget-object p1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final bridge synthetic ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
    .locals 0

    return-object p0
.end method

.method final synthetic extraCallback()Lo/PlaybackStateCompat$CustomAction$1;
    .locals 2

    .line 2110
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-boolean v0, v0, Lo/onDestroy;->requestPostMessageChannel:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-object v0, v0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 2138
    iget-boolean v0, v0, Lo/getErrorCode;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_1
    :goto_0
    new-instance v0, Lo/setBufferedPosition;

    invoke-direct {v0, p0}, Lo/setBufferedPosition;-><init>(Lo/setBufferedPosition$extraCallback;)V

    return-object v0
.end method
