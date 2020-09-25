.class public final Lo/notifyDataSetChanged$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/notifyItemRangeInserted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/MainActivity$onCreate$12",
        "Lcom/dreamplug/fabrik/ui/main/menu/MenuActions;",
        "onMenuSelected",
        "",
        "item",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsService;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/isFullSpan;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lo/notifyDataSetChanged$ICustomTabsService;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const v2, 0x7f0b0541

    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 323
    check-cast v1, Lo/getViewPosition;

    const-string v2, "fab"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "source"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const v4, 0x7f0b0862

    invoke-virtual {v1, v4}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1639
    instance-of v4, v1, Lo/getViewLayoutPosition;

    if-eqz v4, :cond_0

    .line 1640
    check-cast v1, Lo/getViewLayoutPosition;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2474
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {v1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->extraCallback(Lo/isFullSpan;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 323
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabHolderFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
