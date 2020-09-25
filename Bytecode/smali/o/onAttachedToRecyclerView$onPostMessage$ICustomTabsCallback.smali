.class final Lo/onAttachedToRecyclerView$onPostMessage$ICustomTabsCallback;
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
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$showAnimation$2$1$2$2",
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$showAnimation$2$$special$$inlined$addListener$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onAttachedToRecyclerView$onPostMessage;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAttachedToRecyclerView$onPostMessage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1055
    iget-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object p1, p1, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    const/4 v0, 0x0

    .line 2013
    iput-object v0, p1, Lo/onAttachedToRecyclerView;->onPostMessage:Landroid/animation/Animator;

    .line 13
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
