.class public final Lo/onRequestFocusInDescendants$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestFocusInDescendants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onRequestFocusInDescendants;


# direct methods
.method public constructor <init>(Lo/onRequestFocusInDescendants;)V
    .locals 0

    iput-object p1, p0, Lo/onRequestFocusInDescendants$onNavigationEvent;->onMessageChannelReady:Lo/onRequestFocusInDescendants;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1164
    iget-object v0, p0, Lo/onRequestFocusInDescendants$onNavigationEvent;->onMessageChannelReady:Lo/onRequestFocusInDescendants;

    .line 2031
    iget-object v0, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 1164
    iget-object v1, p0, Lo/onRequestFocusInDescendants$onNavigationEvent;->onMessageChannelReady:Lo/onRequestFocusInDescendants;

    .line 3031
    iget-object v1, v1, Lo/onRequestFocusInDescendants;->notify:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1164
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
