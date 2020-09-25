.class final Lo/CategoryRewardResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPrimaryButtonText$onMessageChannelReady;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getIfsc;


# direct methods
.method constructor <init>(Lo/getIfsc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CategoryRewardResponse;->onNavigationEvent:Lo/getIfsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lo/CategoryRewardResponse;->onNavigationEvent:Lo/getIfsc;

    invoke-interface {v0, p1}, Lo/getIfsc;->onConnectionSuspended(I)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/CategoryRewardResponse;->onNavigationEvent:Lo/getIfsc;

    invoke-interface {v0, p1}, Lo/getIfsc;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method
