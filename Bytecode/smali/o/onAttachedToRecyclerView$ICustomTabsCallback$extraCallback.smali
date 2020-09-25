.class final Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAttachedToRecyclerView$ICustomTabsCallback;
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
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$hideAnimation$2$1$2$1",
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$hideAnimation$2$$special$$inlined$addListener$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onAttachedToRecyclerView$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/onAttachedToRecyclerView$ICustomTabsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1074
    iget-object p1, p0, Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/onAttachedToRecyclerView$ICustomTabsCallback;

    iget-object p1, p1, Lo/onAttachedToRecyclerView$ICustomTabsCallback;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    iget-object v0, p0, Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/onAttachedToRecyclerView$ICustomTabsCallback;

    iget-object v0, v0, Lo/onAttachedToRecyclerView$ICustomTabsCallback;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    .line 3000
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 3013
    iput-object v0, p1, Lo/onAttachedToRecyclerView;->onPostMessage:Landroid/animation/Animator;

    .line 13
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
