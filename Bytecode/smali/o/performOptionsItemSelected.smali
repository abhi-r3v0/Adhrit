.class public final Lo/performOptionsItemSelected;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/ListItem15ViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardIcon",
        "Lcom/dreamplug/ui/CredDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardIconBorder",
        "Landroid/view/View;",
        "cardProgress",
        "Lcom/dreamplug/widget/CircularSeeker;",
        "payButton",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "text2",
        "text3",
        "text4",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsCallback$Stub:Lo/findFirstVisibleItemClosestToStart;

.field private final asInterface:Landroid/view/View;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 11010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e023d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performOptionsItemSelected;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performOptionsItemSelected;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performOptionsItemSelected;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performOptionsItemSelected;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/flagRemovedAndOffsetPosition;

    iput-object p1, p0, Lo/performOptionsItemSelected;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardProgress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findFirstVisibleItemClosestToStart;

    iput-object p1, p0, Lo/performOptionsItemSelected;->ICustomTabsCallback$Stub:Lo/findFirstVisibleItemClosestToStart;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardIconBorder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/performOptionsItemSelected;->asInterface:Landroid/view/View;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->payButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/performOptionsItemSelected;->onTransact:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "payButton"

    .line 37
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/performOptionsItemSelected$4;

    invoke-direct {p2, p0}, Lo/performOptionsItemSelected$4;-><init>(Lo/performOptionsItemSelected;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lo/performOptionsItemSelected;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    const-string v1, "cardIcon"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1061
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const/4 v2, 0x0

    .line 2010
    invoke-static {v0, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Lo/flagRemovedAndOffsetPosition;Lcom/dreamplug/fabrik/ui/cm/models/Image;Ljava/lang/Integer;)V

    .line 45
    iget-object v0, p0, Lo/performOptionsItemSelected;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 2027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_0

    .line 3000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 45
    :goto_0
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lo/performOptionsItemSelected;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 3027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3053
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 4000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 46
    :goto_1
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lo/performOptionsItemSelected;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text3"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 4027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4055
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_2

    .line 5000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 47
    :goto_2
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lo/performOptionsItemSelected;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text4"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 5027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5057
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_3

    .line 6000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 48
    :goto_3
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lo/performOptionsItemSelected;->onTransact:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "payButton"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 6027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v1, :cond_4

    .line 6173
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v1, :cond_4

    .line 7014
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_4

    .line 8000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 49
    :cond_4
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 8074
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/cm/models/CardProgress;

    const/16 v0, 0x8

    const-string v1, "$this$gone"

    const-string v2, "$this$visible"

    const-string v3, "cardIconBorder"

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    .line 52
    iget-object v5, p0, Lo/performOptionsItemSelected;->ICustomTabsCallback$Stub:Lo/findFirstVisibleItemClosestToStart;

    .line 8152
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/cm/models/CardProgress;->onNavigationEvent:Ljava/util/List;

    if-eqz v6, :cond_5

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 55
    invoke-static {v6}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    const/4 v8, 0x1

    .line 56
    invoke-static {v6}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v7, v8

    .line 54
    invoke-virtual {v5, v7}, Lo/findFirstVisibleItemClosestToStart;->setCircleProgressColors([I)V

    goto :goto_4

    .line 8154
    :cond_5
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/cm/models/CardProgress;->onPostMessage:Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v6, "#d4d4d4"

    .line 59
    :cond_6
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lo/findFirstVisibleItemClosestToStart;->setCircleProgressColor(I)V

    .line 8158
    :goto_4
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/CardProgress;->onMessageChannelReady:Ljava/lang/Double;

    if-eqz p1, :cond_7

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    goto :goto_5

    :cond_7
    const-wide/16 v6, 0x0

    :goto_5
    invoke-virtual {v5, v6, v7}, Lo/findFirstVisibleItemClosestToStart;->setProgress(D)V

    .line 63
    check-cast v5, Landroid/view/View;

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9009
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lo/performOptionsItemSelected;->asInterface:Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 66
    :cond_8
    move-object p1, p0

    check-cast p1, Lo/performOptionsItemSelected;

    .line 67
    iget-object v5, p1, Lo/performOptionsItemSelected;->asInterface:Landroid/view/View;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p1, Lo/performOptionsItemSelected;->ICustomTabsCallback$Stub:Lo/findFirstVisibleItemClosestToStart;

    const-string v2, "cardProgress"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method
