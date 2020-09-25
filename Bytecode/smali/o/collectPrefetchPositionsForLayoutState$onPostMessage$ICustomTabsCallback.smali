.class final Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onMessageChannelReady:Lo/collectPrefetchPositionsForLayoutState$onPostMessage;


# direct methods
.method constructor <init>(Lo/collectPrefetchPositionsForLayoutState$onPostMessage;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;->onMessageChannelReady:Lo/collectPrefetchPositionsForLayoutState$onPostMessage;

    iput-object p2, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 29
    iget-object p1, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;->onMessageChannelReady:Lo/collectPrefetchPositionsForLayoutState$onPostMessage;

    invoke-static {p1}, Lo/collectPrefetchPositionsForLayoutState$onPostMessage;->onMessageChannelReady(Lo/collectPrefetchPositionsForLayoutState$onPostMessage;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/collectPrefetchPositionsForLayoutState$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    invoke-static {v0, p2}, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->extraCallback(Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;Z)Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    move-result-object p2

    check-cast p2, Lo/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    const-string v1, "checked"

    .line 1066
    invoke-interface {p1, v1, p2, v0}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_0
    return-void
.end method
