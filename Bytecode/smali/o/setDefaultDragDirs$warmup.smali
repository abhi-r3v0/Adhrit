.class final Lo/setDefaultDragDirs$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDefaultDragDirs;
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
.field private synthetic onNavigationEvent:Lo/setDefaultDragDirs;


# direct methods
.method constructor <init>(Lo/setDefaultDragDirs;)V
    .locals 0

    iput-object p1, p0, Lo/setDefaultDragDirs$warmup;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 150
    iget-object v0, p0, Lo/setDefaultDragDirs$warmup;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_1

    new-instance v1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    new-instance v2, Lo/onDetach$read;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/onDetach$read;-><init>(Z)V

    invoke-direct {v1, v2}, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/onDetach$read;)V

    check-cast v1, Lo/computeHorizontalScrollRange;

    invoke-interface {v0, v1}, Lo/cachePreLayoutSpanMapping;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lo/setDefaultDragDirs$warmup;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
