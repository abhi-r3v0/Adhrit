.class public final Lo/onCurrentListChanged;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onCurrentListChanged$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u0007*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \u0007*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/adapter/CardLinkCandidateHeaderHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "candidateDescription",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "candidateTitle",
        "cardBackGroundView",
        "Landroid/view/View;",
        "cardView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/CredCard;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Data",
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
.field private final ICustomTabsCallback:Lo/onActivityCreated;

.field private final extraCallback:Landroid/view/View;

.field private final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 11

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 4010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onCurrentListChanged;->onNavigationEvent:Landroid/widget/TextView;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onActivityCreated;

    iput-object p1, p0, Lo/onCurrentListChanged;->ICustomTabsCallback:Lo/onActivityCreated;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/onCurrentListChanged;->extraCallback:Landroid/view/View;

    const-string v0, "cardBackGroundView"

    .line 29
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/isBound;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 5010
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfe

    const/4 v10, 0x0

    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v10}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lo/onCurrentListChanged$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lo/onCurrentListChanged;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "candidateDescription"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "your card ending with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lo/onCurrentListChanged$onNavigationEvent;

    .line 1043
    iget-object v2, p1, Lo/onCurrentListChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 38
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v2

    .line 2043
    iget-object v3, p1, Lo/onCurrentListChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 38
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    const/4 v4, 0x4

    .line 2174
    invoke-static {v2, v3, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be the primary card. you can change this through the profile section later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lo/onCurrentListChanged;->ICustomTabsCallback:Lo/onActivityCreated;

    new-instance v1, Lo/onCanceled;

    new-instance v11, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3043
    iget-object v5, p1, Lo/onCurrentListChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v10, 0x0

    move-object v2, v11

    .line 39
    invoke-direct/range {v2 .. v10}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;-><init>(Lcom/dreamplug/fabrik/ui/control/Template;Lcom/dreamplug/fabrik/ui/control/Overlay;Lcom/dreamplug/fabrik/ui/control/CardDetails;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/ControlMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v11, Lo/StaggeredGridLayoutManager;

    invoke-direct {v1, v11}, Lo/onCanceled;-><init>(Lo/StaggeredGridLayoutManager;)V

    invoke-static {v0, v1}, Lo/onActivityCreated;->extraCallback(Lo/onActivityCreated;Lo/onCanceled;)V

    :cond_1
    return-void
.end method
