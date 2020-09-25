.class final Lo/dispatchAnimationFinished$extraCallback$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchAnimationFinished$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/animation/Animation;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/animation/Animation;",
        "invoke",
        "com/dreamplug/fabrik/ui/main/remotecontrol/RC2TemplateViewHolder$bind$2$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/dispatchAnimationFinished$extraCallback;


# direct methods
.method constructor <init>(Lo/dispatchAnimationFinished$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAnimationFinished$extraCallback$extraCallback;->onMessageChannelReady:Lo/dispatchAnimationFinished$extraCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1143
    iget-object p1, p0, Lo/dispatchAnimationFinished$extraCallback$extraCallback;->onMessageChannelReady:Lo/dispatchAnimationFinished$extraCallback;

    iget-object p1, p1, Lo/dispatchAnimationFinished$extraCallback;->onMessageChannelReady:Lo/dispatchAnimationFinished;

    .line 2102
    iget-object p1, p1, Lo/dispatchAnimationFinished;->ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1143
    iget-object v0, p0, Lo/dispatchAnimationFinished$extraCallback$extraCallback;->onMessageChannelReady:Lo/dispatchAnimationFinished$extraCallback;

    iget-object v0, v0, Lo/dispatchAnimationFinished$extraCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 3032
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onPostMessage:Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lo/dispatchAnimationFinished$extraCallback$extraCallback;->onMessageChannelReady:Lo/dispatchAnimationFinished$extraCallback;

    iget-object v1, v1, Lo/dispatchAnimationFinished$extraCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    invoke-interface {p1, v0, v1}, Lo/onAnimationStarted$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Lo/StaggeredGridLayoutManager;)V

    .line 102
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
