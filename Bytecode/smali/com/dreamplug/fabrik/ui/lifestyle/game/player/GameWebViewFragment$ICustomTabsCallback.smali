.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/estimateNextPositionDiffForFling;",
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
        "\u0000\u0014\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "()Landroidx/lifecycle/ViewModel;",
        "com/dreamplug/utils/ViewModelKtxKt$lazyViewModel$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/removeOnActiveChangeListener;


# direct methods
.method public constructor <init>(Lo/removeOnActiveChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Lo/removeOnActiveChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Lo/removeOnActiveChangeListener;

    .line 1017
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/estimateNextPositionDiffForFling;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
