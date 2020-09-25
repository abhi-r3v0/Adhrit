.class final Lo/ItemTouchHelper$SimpleCallback$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ItemTouchHelper$SimpleCallback;
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
.field private synthetic ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onTransact;->ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 96
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$onTransact;->ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_1

    .line 1005
    invoke-interface {v0, v2}, Lo/cachePreLayoutSpanMapping;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$onTransact;->ICustomTabsCallback:Lo/ItemTouchHelper$SimpleCallback;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
