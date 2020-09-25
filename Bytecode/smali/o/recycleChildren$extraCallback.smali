.class public final Lo/recycleChildren$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleChildren;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1",
        "com/dreamplug/fabrik/ui/lifestyle/assetviewer/AssetViewerDialogFragment$$special$$inlined$postDelayed$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/recycleChildren;

.field private synthetic onNavigationEvent:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/recycleChildren;)V
    .locals 0

    iput-object p1, p0, Lo/recycleChildren$extraCallback;->onNavigationEvent:Ljava/util/List;

    iput-object p2, p0, Lo/recycleChildren$extraCallback;->ICustomTabsCallback:Lo/recycleChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 337
    iget-object v0, p0, Lo/recycleChildren$extraCallback;->ICustomTabsCallback:Lo/recycleChildren;

    .line 1022
    iget-object v0, v0, Lo/recycleChildren;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    .line 337
    iget-object v1, p0, Lo/recycleChildren$extraCallback;->onNavigationEvent:Ljava/util/List;

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 1038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
