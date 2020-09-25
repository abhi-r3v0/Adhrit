.class public final Lo/LinearLayoutManager$ICustomTabsCallback;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002:\u00126\u00124\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0007`\u00060\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/ClaimedRewardSection$mapClaimedSectionData$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ljava/util/HashMap;",
        "",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
        "Lkotlin/collections/HashMap;",
        "Lkotlin/collections/ArrayList;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 20
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-virtual {v0}, Lo/LinearLayoutManager;->onNavigationEvent()V

    :cond_1
    return-void
.end method
