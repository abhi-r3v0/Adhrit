.class final Lo/resolveShouldLayoutReverse$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resolveShouldLayoutReverse;-><init>(Lo/onSessionEvent;Lo/isCompatVectorFromResourcesEnabled;)V
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
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
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
.field private synthetic onPostMessage:Lo/resolveShouldLayoutReverse;


# direct methods
.method constructor <init>(Lo/resolveShouldLayoutReverse;)V
    .locals 0

    iput-object p1, p0, Lo/resolveShouldLayoutReverse$3;->onPostMessage:Lo/resolveShouldLayoutReverse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 21
    check-cast p1, Ljava/util/List;

    .line 1035
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    check-cast p1, Ljava/lang/Iterable;

    .line 1073
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;

    .line 1038
    new-instance v6, Lo/canScrollVertically$onPostMessage;

    .line 1039
    invoke-virtual {v4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;->getRefereeName()Ljava/lang/String;

    move-result-object v7

    .line 1040
    sget-object v8, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    invoke-virtual {v4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;->getRefereeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v4

    .line 1038
    invoke-direct {v6, v7, v4, v3}, Lo/canScrollVertically$onPostMessage;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_2

    .line 1441
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1043
    :cond_3
    new-instance p1, Lo/onCreateView;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x42480000    # 50.0f

    .line 2010
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const-string v3, "bottom_space"

    move-object v2, p1

    .line 1043
    invoke-direct/range {v2 .. v7}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object p1, p0, Lo/resolveShouldLayoutReverse$3;->onPostMessage:Lo/resolveShouldLayoutReverse;

    invoke-static {p1}, Lo/resolveShouldLayoutReverse;->onPostMessage(Lo/resolveShouldLayoutReverse;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v2, "recyclerView"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object p1, p0, Lo/resolveShouldLayoutReverse$3;->onPostMessage:Lo/resolveShouldLayoutReverse;

    invoke-static {p1}, Lo/resolveShouldLayoutReverse;->extraCallback(Lo/resolveShouldLayoutReverse;)Lo/evictAll;

    move-result-object p1

    const-string v1, "cityLoader"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object p1, p0, Lo/resolveShouldLayoutReverse$3;->onPostMessage:Lo/resolveShouldLayoutReverse;

    invoke-static {p1}, Lo/resolveShouldLayoutReverse;->onMessageChannelReady(Lo/resolveShouldLayoutReverse;)Lo/canScrollVertically;

    move-result-object p1

    check-cast v0, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_4
    return-void
.end method
