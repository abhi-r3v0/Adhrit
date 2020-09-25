.class public final Lo/setSmoothScrollbarEnabled$ICustomTabsCallback;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSmoothScrollbarEnabled;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
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
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleViewModel$_lifestyleItemsListData$1",
        "Landroidx/lifecycle/MutableLiveData;",
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
.field private synthetic ICustomTabsCallback$Stub:Lo/setSmoothScrollbarEnabled;


# direct methods
.method constructor <init>(Lo/setSmoothScrollbarEnabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lo/setSmoothScrollbarEnabled$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setSmoothScrollbarEnabled;

    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 56
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 57
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setSmoothScrollbarEnabled;

    .line 1198
    iget-object v1, v0, Lo/setSmoothScrollbarEnabled;->extraCallback:Lo/updateLayoutStateToFillEnd;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v1, v1, Lo/updateLayoutStateToFillEnd;->extraCallback:Lo/getStackFromEnd;

    if-eqz v1, :cond_0

    .line 2122
    iget v1, v1, Lo/getStackFromEnd;->extraCallback:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 57
    :goto_0
    invoke-static {v0, v1}, Lo/setSmoothScrollbarEnabled;->extraCallback(Lo/setSmoothScrollbarEnabled;I)V

    return-void
.end method
