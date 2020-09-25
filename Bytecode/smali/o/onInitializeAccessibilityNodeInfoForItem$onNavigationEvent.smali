.class final Lo/onInitializeAccessibilityNodeInfoForItem$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onInitializeAccessibilityNodeInfoForItem;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field private synthetic extraCallback:Lo/onInitializeAccessibilityNodeInfoForItem;


# direct methods
.method constructor <init>(Lo/onInitializeAccessibilityNodeInfoForItem;)V
    .locals 0

    iput-object p1, p0, Lo/onInitializeAccessibilityNodeInfoForItem$onNavigationEvent;->extraCallback:Lo/onInitializeAccessibilityNodeInfoForItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1076
    iget-object v0, p0, Lo/onInitializeAccessibilityNodeInfoForItem$onNavigationEvent;->extraCallback:Lo/onInitializeAccessibilityNodeInfoForItem;

    .line 2029
    iget-object v0, v0, Lo/onInitializeAccessibilityNodeInfoForItem;->ICustomTabsCallback:Lo/getItemOffsets;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1076
    invoke-virtual {v0, p1, v1, v2}, Lo/getItemOffsets;->onNavigationEvent(ZZZ)V

    .line 23
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
