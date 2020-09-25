.class public final Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;
.super Lo/MediaSessionCompatApi24$CallbackProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StaggeredGridLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/widget/navigation/CredNavigationView$TabViewPagerAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "adapter",
        "Lcom/dreamplug/widget/navigation/CredNavigationView$Adapter;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "tabListItems",
        "",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "createFragment",
        "position",
        "",
        "getAdapter",
        "getFragmentByTag",
        "tag",
        "",
        "getItemCount",
        "setAdapter",
        "",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

.field asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isFullSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi24$CallbackProxy;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asInterface:Landroidx/fragment/app/Fragment;

    .line 1070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 205
    iput-object p1, p0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asBinder:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 217
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 219
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asBinder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isFullSpan;

    invoke-interface {v0, p1}, Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;->onMessageChannelReady(Lo/isFullSpan;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    return-object p1
.end method
