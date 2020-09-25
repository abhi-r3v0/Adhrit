.class final Lo/findLastVisibleItemPositions$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findLastVisibleItemPositions;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onPostMessage:Lo/findLastVisibleItemPositions;


# direct methods
.method constructor <init>(Lo/findLastVisibleItemPositions;)V
    .locals 0

    iput-object p1, p0, Lo/findLastVisibleItemPositions$ICustomTabsCallback;->onPostMessage:Lo/findLastVisibleItemPositions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lo/findLastVisibleItemPositions$ICustomTabsCallback;->onPostMessage:Lo/findLastVisibleItemPositions;

    .line 1157
    iget-object p1, p1, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1826
    :cond_0
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_1

    .line 1094
    iget-object p1, p0, Lo/findLastVisibleItemPositions$ICustomTabsCallback;->onPostMessage:Lo/findLastVisibleItemPositions;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->onTransact()V

    .line 23
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
