.class final Lo/refreshVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setSubUiVisibilityListener$onNavigationEvent;

.field private synthetic onNavigationEvent:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/setSubUiVisibilityListener$onNavigationEvent;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lo/refreshVisibility;->ICustomTabsCallback:Lo/setSubUiVisibilityListener$onNavigationEvent;

    iput-object p2, p0, Lo/refreshVisibility;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/refreshVisibility;->ICustomTabsCallback:Lo/setSubUiVisibilityListener$onNavigationEvent;

    iget-object v0, v0, Lo/setSubUiVisibilityListener$onNavigationEvent;->onMessageChannelReady:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lo/setOnScrollChangeListener;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lo/refreshVisibility;->ICustomTabsCallback:Lo/setSubUiVisibilityListener$onNavigationEvent;

    iget-object v1, v1, Lo/setSubUiVisibilityListener$onNavigationEvent;->extraCallback:Lo/setChildInsets;

    iget-object v2, p0, Lo/refreshVisibility;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lo/setSubUiVisibilityListener;->ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/setChildInsets;->onNavigationEvent(Ljava/util/ArrayList;)V

    return-void
.end method
