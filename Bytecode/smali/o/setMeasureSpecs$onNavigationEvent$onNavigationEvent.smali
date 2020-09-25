.class public final Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;
.super Lo/setMeasureSpecs$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMeasureSpecs$onNavigationEvent;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel$State$ShowList;",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel$State;",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "lockScreen",
        "(Ljava/util/List;Lcom/dreamplug/utils/list/ListItem;)V",
        "getList",
        "()Ljava/util/List;",
        "getLockScreen",
        "()Lcom/dreamplug/utils/list/ListItem;",
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
.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/StaggeredGridLayoutManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/StaggeredGridLayoutManager;",
            ">;",
            "Lo/StaggeredGridLayoutManager;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lo/setMeasureSpecs$onNavigationEvent;-><init>(B)V

    iput-object p1, p0, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->extraCallback:Ljava/util/List;

    iput-object p2, p0, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    return-void
.end method
