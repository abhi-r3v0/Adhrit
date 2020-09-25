.class public final Lo/removeAllTabs$onPostMessage$onNavigationEvent;
.super Lo/removeAllTabs$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeAllTabs$onPostMessage;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState$InstrumentList;",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState;",
        "list",
        "",
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentItem;",
        "(Ljava/util/List;)V",
        "getList",
        "()Ljava/util/List;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getTintMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getTintMode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lo/removeAllTabs$onPostMessage;-><init>(B)V

    iput-object p1, p0, Lo/removeAllTabs$onPostMessage$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    return-void
.end method
