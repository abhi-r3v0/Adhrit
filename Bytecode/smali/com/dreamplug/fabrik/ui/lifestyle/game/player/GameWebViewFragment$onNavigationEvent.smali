.class final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00060\u0001R\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;",
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
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1062
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-direct {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    return-object v0
.end method
