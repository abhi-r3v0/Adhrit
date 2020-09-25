.class public final Lo/performConfigurationChanged;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u000c\u0010\u0018\u001a\u00020\u0015*\u00020\u0019H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000b*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u000b*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/ListItem11ViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "icon",
        "Lcom/dreamplug/ui/CredDraweeView;",
        "itemTag",
        "nextIcon",
        "Lcom/dreamplug/ui/CredImageView;",
        "subtitle",
        "title",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "setTag",
        "Lcom/dreamplug/fabrik/ui/cm/models/Badge;",
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
.field private final ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

.field private final ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/getRemainingScrollVertical;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 12010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e023c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/flagRemovedAndOffsetPosition;

    iput-object p1, p0, Lo/performConfigurationChanged;->ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/performConfigurationChanged;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performConfigurationChanged;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->nextIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    iput-object p1, p0, Lo/performConfigurationChanged;->extraCallback:Lo/getRemainingScrollVertical;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performConfigurationChanged;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->itemTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performConfigurationChanged;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/performConfigurationChanged$2;

    invoke-direct {p2, p0}, Lo/performConfigurationChanged$2;-><init>(Lo/performConfigurationChanged;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 41
    iget-object p1, p0, Lo/performConfigurationChanged;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string p2, "cta"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/performConfigurationChanged$5;

    invoke-direct {p2, p0}, Lo/performConfigurationChanged$5;-><init>(Lo/performConfigurationChanged;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_7

    .line 48
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 49
    iget-object v0, p0, Lo/performConfigurationChanged;->ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

    const-string v1, "icon"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lo/setSpeed;

    .line 1061
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 49
    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 50
    iget-object v0, p0, Lo/performConfigurationChanged;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "title"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 2051
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    .line 3000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 50
    :goto_1
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lo/performConfigurationChanged;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "subtitle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 3053
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_2

    .line 4000
    iget-object v1, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 51
    :cond_2
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 4071
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 4173
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v0, :cond_3

    .line 5014
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_3

    .line 6000
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 53
    iget-object v3, p0, Lo/performConfigurationChanged;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v4, "cta"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lo/performConfigurationChanged;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6095
    :cond_3
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService$Stub$Proxy:Lcom/dreamplug/fabrik/ui/cm/models/Badge;

    if-eqz v0, :cond_5

    .line 8000
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/cm/models/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 9000
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/cm/models/Badge;->onMessageChannelReady:Ljava/lang/String;

    .line 10000
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/cm/models/Badge;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 7066
    iget-object v0, p0, Lo/performConfigurationChanged;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    .line 7067
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 11000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 7067
    invoke-static {v3, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 7068
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "Resources.getSystem()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 11010
    invoke-static {v7, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 7068
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 11021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v5, 0x41800000    # 16.0f

    .line 11022
    invoke-static {v7, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x70

    move-object v7, v0

    .line 7068
    invoke-static/range {v3 .. v10}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    goto :goto_2

    .line 7070
    :cond_4
    iget-object v0, p0, Lo/performConfigurationChanged;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    const-string v2, "itemTag"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_5
    :goto_2
    iget-object v0, p0, Lo/performConfigurationChanged;->extraCallback:Lo/getRemainingScrollVertical;

    const-string v2, "nextIcon"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 11067
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onTransact:Ljava/lang/String;

    const-string v2, "active"

    .line 58
    invoke-static {p1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 73
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
