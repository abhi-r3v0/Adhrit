.class public final Lo/getController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TX;>;"
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

.field final synthetic onPostMessage:Lo/onServiceConnected;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi24$TransportControls;Lo/onServiceConnected;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/getController$2;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    iput-object p2, p0, Lo/getController$2;->onPostMessage:Lo/onServiceConnected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/getController$2;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    iget-object v1, p0, Lo/getController$2;->onPostMessage:Lo/onServiceConnected;

    invoke-interface {v1, p1}, Lo/onServiceConnected;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
