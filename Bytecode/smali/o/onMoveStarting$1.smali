.class public final Lo/onMoveStarting$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onMoveStarting;-><init>(Lo/onSessionEvent;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        ">;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020\u00050\u00020\u0001J$\u0010\u0006\u001a\u00020\u00072\u001a\u0010\u0008\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/upi/UpiPaymentData$1",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onChanged",
        "",
        "list",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setOnItemClickListener;

.field private synthetic extraCallback:Lo/onMoveStarting;


# direct methods
.method constructor <init>(Lo/onMoveStarting;Lo/setOnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setOnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lo/onMoveStarting$1;->extraCallback:Lo/onMoveStarting;

    iput-object p2, p0, Lo/onMoveStarting$1;->ICustomTabsCallback:Lo/setOnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 87
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    if-eqz p1, :cond_0

    .line 1090
    iget-object v0, p0, Lo/onMoveStarting$1;->extraCallback:Lo/onMoveStarting;

    .line 2020
    iput-object p1, v0, Lo/onMoveStarting;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1091
    iget-object p1, p0, Lo/onMoveStarting$1;->ICustomTabsCallback:Lo/setOnItemClickListener;

    .line 2042
    invoke-virtual {p1}, Lo/setOnItemClickListener;->extraCallback()V

    .line 2043
    iget-object p1, p1, Lo/setOnItemClickListener;->onMessageChannelReady:Lo/setOnItemClickListener$ICustomTabsCallback;

    check-cast p1, Lo/setActive;

    .line 1091
    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1092
    iget-object p1, p0, Lo/onMoveStarting$1;->extraCallback:Lo/onMoveStarting;

    invoke-virtual {p1}, Lo/onMoveStarting;->onPostMessage()V

    :cond_0
    return-void
.end method
