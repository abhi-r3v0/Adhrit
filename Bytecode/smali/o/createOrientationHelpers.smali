.class public abstract Lo/createOrientationHelpers;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u001f\u001a\u00020\u001dH\u0016J\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"J\u0008\u0010#\u001a\u00020\u001dH\u0016J\u0008\u0010$\u001a\u00020\u001dH\u0016J\u001e\u0010%\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0008\u0010)\u001a\u00020\u0017H\u0016J\u000e\u0010*\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0010R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/dreamplug/utils/list/ParallaxScrollListener;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "context",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getItem",
        "()Lcom/dreamplug/utils/list/ListItem;",
        "setItem",
        "(Lcom/dreamplug/utils/list/ListItem;)V",
        "parallaxIntArray",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getParallaxIntArray",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setParallaxIntArray",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "animateView",
        "",
        "bind",
        "onAttachViewHolder",
        "onClick",
        "type",
        "",
        "onDetachViewHolder",
        "onRecycle",
        "payload",
        "payloads",
        "",
        "",
        "requireValuesForTranslate",
        "updateItem",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public asBinder:Lo/StaggeredGridLayoutManager;

.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field public onRelationshipValidationResult:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/createOrientationHelpers;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 95
    new-instance p2, Lo/setActive;

    invoke-direct {p2}, Lo/setActive;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end method

.method public j_()V
    .locals 0

    return-void
.end method

.method public k_()V
    .locals 0

    return-void
.end method

.method public n_()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lo/createOrientationHelpers;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v0, p1, v1, p0}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_1
    return-void
.end method

.method public onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
