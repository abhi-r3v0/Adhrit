.class final Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResult$onMessageChannelReady;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "onAnimationsFinished"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onActivityResult$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/onActivityResult$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/onActivityResult$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 2

    .line 91
    iget-object v0, p0, Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/onActivityResult$onMessageChannelReady;

    iget-object v0, v0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback:Lo/onActivityResult$onMessageChannelReady;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
