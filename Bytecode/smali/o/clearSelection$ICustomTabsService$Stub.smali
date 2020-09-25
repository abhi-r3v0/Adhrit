.class final Lo/clearSelection$ICustomTabsService$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearSelection;->ICustomTabsCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Lo/createDragToOpenListener;",
        ">;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003j\u0004\u0018\u0001`\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "eligibilityStatus",
        "Landroid/util/ArrayMap;",
        "",
        "Lcom/cred/pay/ui/visa/RequestId;",
        "Lcom/cred/pay/repository/visa/ViesEligibilityResponse;",
        "Lcom/cred/pay/ui/visa/EligibilityStatus;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/clearSelection;


# direct methods
.method constructor <init>(Lo/clearSelection;)V
    .locals 0

    iput-object p1, p0, Lo/clearSelection$ICustomTabsService$Stub;->onNavigationEvent:Lo/clearSelection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 61
    check-cast p1, Landroid/util/ArrayMap;

    .line 1392
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService$Stub;->onNavigationEvent:Lo/clearSelection;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/createDragToOpenListener;

    if-eqz p1, :cond_0

    .line 2137
    iget-boolean v1, p1, Lo/createDragToOpenListener;->extraCallback:Z

    .line 1392
    :cond_0
    invoke-static {v0, v1}, Lo/clearSelection;->onPostMessage(Lo/clearSelection;Z)V

    .line 61
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
