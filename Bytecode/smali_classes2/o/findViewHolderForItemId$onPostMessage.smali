.class final Lo/findViewHolderForItemId$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findViewHolderForItemId;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "onChanged",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineViewModel$_coinsLiveData$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

.field private synthetic onPostMessage:Lo/findViewHolderForItemId;


# direct methods
.method constructor <init>(Lo/MediaControllerCompatApi24$TransportControls;Lo/findViewHolderForItemId;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForItemId$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    iput-object p2, p0, Lo/findViewHolderForItemId$onPostMessage;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 1076
    iget-object p1, p0, Lo/findViewHolderForItemId$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    iget-object v0, p0, Lo/findViewHolderForItemId$onPostMessage;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v0}, Lo/findViewHolderForItemId;->onPostMessage(Lo/findViewHolderForItemId;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
