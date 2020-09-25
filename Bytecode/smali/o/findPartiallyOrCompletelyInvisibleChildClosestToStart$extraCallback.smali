.class public final Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$extraCallback;
.super Lo/MediaControllerCompatApi24$TransportControls;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaControllerCompatApi24$TransportControls<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionViewModel$categoryListData$1",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "onActive",
        "",
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
.field private synthetic onTransact:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;


# direct methods
.method constructor <init>(Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$extraCallback;->onTransact:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    invoke-direct {p0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    .line 55
    invoke-super {p0}, Lo/MediaControllerCompatApi24$TransportControls;->onPostMessage()V

    .line 56
    iget-object v0, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$extraCallback;->onTransact:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    invoke-static {v0}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->ICustomTabsCallback(Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;)V

    return-void
.end method
