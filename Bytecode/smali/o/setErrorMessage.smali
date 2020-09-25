.class public abstract Lo/setErrorMessage;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;Lo/getActiveQueueItemId;Lo/fromCustomAction;)Lo/setActions;
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/setActions;
.end method

.method public abstract extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)Lo/setActions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$Actions;",
            "Ljava/util/List<",
            "Lo/setBufferedPosition;",
            ">;)",
            "Lo/setActions;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/util/List;)Lo/setActions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;)",
            "Lo/setActions;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/setActions;
.end method
