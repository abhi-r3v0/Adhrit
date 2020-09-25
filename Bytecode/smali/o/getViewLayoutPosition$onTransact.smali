.class final Lo/getViewLayoutPosition$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$onTransact;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 1101
    iget-object p1, p0, Lo/getViewLayoutPosition$onTransact;->onNavigationEvent:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v0, p0, Lo/getViewLayoutPosition$onTransact;->onNavigationEvent:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->ICustomTabsCallback(Lo/getViewLayoutPosition;)Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/StaggeredGridLayoutManager$SavedState;->setAdapter(Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;)V

    return-void
.end method
