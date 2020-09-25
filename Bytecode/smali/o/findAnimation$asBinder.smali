.class final Lo/findAnimation$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findAnimation;
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/findAnimation;


# direct methods
.method constructor <init>(Lo/findAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/findAnimation$asBinder;->onPostMessage:Lo/findAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lo/findAnimation$asBinder;->onPostMessage:Lo/findAnimation;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/getSpanGroupIndex;

    const/4 v1, 0x0

    .line 1005
    invoke-interface {v0, v1}, Lo/cachePreLayoutSpanMapping;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 119
    iget-object v0, p0, Lo/findAnimation$asBinder;->onPostMessage:Lo/findAnimation;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 118
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
