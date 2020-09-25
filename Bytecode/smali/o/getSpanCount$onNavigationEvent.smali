.class public final Lo/getSpanCount$onNavigationEvent;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSpanCount;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashExitIntentTwoAdapter$ItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "isSelected",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "kotlin.jvm.PlatformType",
        "parentLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "title",
        "Landroid/widget/TextView;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "payload",
        "payloads",
        "",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onPostMessage:Lo/onChildrenLoaded;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 27
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getSpanCount$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 28
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->checkBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lo/getSpanCount$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->parent_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getSpanCount$onNavigationEvent;->onPostMessage:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lo/getSpanCount$onNavigationEvent;->onPostMessage:Lo/onChildrenLoaded;

    const-string v1, "parentLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getSpanCount$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/getSpanCount$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/getSpanCount$onNavigationEvent;Lo/StaggeredGridLayoutManager;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 37
    iget-object v0, p0, Lo/getSpanCount$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 1020
    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0803ce

    goto :goto_0

    :cond_0
    const v1, 0x7f0803cf

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lo/getSpanCount$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 38
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V
    .locals 2
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

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "checked"

    .line 45
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/getSpanCount$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 2020
    iget-boolean v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0803ce

    goto :goto_1

    :cond_1
    const v1, 0x7f0803cf

    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
