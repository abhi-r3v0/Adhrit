.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "extractData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$GameData;",
        "fragment",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;",
        "getInstance",
        "webViewData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;-><init>()V

    return-void
.end method

.method public static extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
    .locals 3

    const-string/jumbo v0, "webViewData"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-direct {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;-><init>()V

    .line 573
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 574
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
