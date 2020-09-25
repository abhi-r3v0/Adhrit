.class final Lo/onAttachedToRecyclerView$onPostMessage$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAttachedToRecyclerView$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/animation/Animator;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/Animator;",
        "invoke",
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$showAnimation$2$1$2$1",
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$showAnimation$2$$special$$inlined$addListener$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onAttachedToRecyclerView$onPostMessage;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView$onPostMessage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1051
    iget-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object p1, p1, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 2013
    iget-object p1, p1, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object p1, p1, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    iget-object v0, p0, Lo/onAttachedToRecyclerView$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object v0, v0, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 4000
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 4013
    iput-object v0, p1, Lo/onAttachedToRecyclerView;->onPostMessage:Landroid/animation/Animator;

    .line 13
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
