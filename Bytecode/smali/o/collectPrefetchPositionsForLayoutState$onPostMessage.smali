.class public final Lo/collectPrefetchPositionsForLayoutState$onPostMessage;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/collectPrefetchPositionsForLayoutState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashExitIntentThirdAdapter$ItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "checkBox",
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        "kotlin.jvm.PlatformType",
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
.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onPostMessage:Landroidx/appcompat/widget/AppCompatCheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 25
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->checkBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->onPostMessage:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/collectPrefetchPositionsForLayoutState$onPostMessage;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->onPostMessage:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v1, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;-><init>(Lo/collectPrefetchPositionsForLayoutState$onPostMessage;Lo/StaggeredGridLayoutManager;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    iget-object v0, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->onPostMessage:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-string v1, "checkBox"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 1015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 31
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
