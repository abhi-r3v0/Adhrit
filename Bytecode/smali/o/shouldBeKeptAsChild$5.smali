.class final Lo/shouldBeKeptAsChild$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldBeKeptAsChild;-><init>(Lo/dispatchAddStarting;Ljava/lang/String;Lo/onSessionEvent;Lo/snapFromFling;Lo/shouldBeKeptAsChild$ICustomTabsCallback;Ljava/lang/String;ZLo/add;Z)V
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
.field private synthetic ICustomTabsCallback:Lo/shouldBeKeptAsChild;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;)V
    .locals 0

    iput-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 41
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 2044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 3032
    iget-boolean p1, p1, Lo/snapFromFling;->onMessageChannelReady:Z

    if-nez p1, :cond_3

    .line 1545
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->asInterface(Lo/shouldBeKeptAsChild;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 1546
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onNavigationEvent(Lo/shouldBeKeptAsChild;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 1547
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->ICustomTabsCallback$Stub(Lo/shouldBeKeptAsChild;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 1548
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 3044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 4031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 4320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1548
    :goto_0
    check-cast p1, Lo/snapFromFling$asBinder;

    if-eqz p1, :cond_1

    .line 5046
    iget-object v1, p1, Lo/snapFromFling$asBinder;->onMessageChannelReady:Lo/onAddStarting;

    .line 1548
    :cond_1
    sget-object p1, Lo/dispatchRemoveFinished;->ICustomTabsCallback:Lo/dispatchRemoveFinished;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1549
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 6044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 7031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 1549
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/dispatchRemoveStarting;->onNavigationEvent:Lo/dispatchRemoveStarting;

    check-cast v1, Lo/onAddStarting;

    iget-object v2, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 7044
    iget-object v2, v2, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 8040
    iget-object v2, v2, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 1549
    invoke-direct {v0, v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 1551
    :cond_2
    iget-object p1, p0, Lo/shouldBeKeptAsChild$5;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->warmup(Lo/shouldBeKeptAsChild;)V

    .line 41
    :cond_3
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
