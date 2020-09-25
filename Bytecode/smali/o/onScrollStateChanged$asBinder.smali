.class final Lo/onScrollStateChanged$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onScrollStateChanged;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/findNestedRecyclerView$ICustomTabsCallback;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineViewModel$TicketMachineData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onScrollStateChanged;


# direct methods
.method constructor <init>(Lo/onScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 34
    check-cast p1, Ljava/util/List;

    .line 1039
    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v0, v1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-nez p1, :cond_0

    .line 1041
    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->ICustomTabsCallback$Stub(Lo/onScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1041
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->extraCallback(Lo/onScrollStateChanged;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 1044
    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->onMessageChannelReady(Lo/onScrollStateChanged;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 3970
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1045
    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->onMessageChannelReady(Lo/onScrollStateChanged;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 1046
    :cond_1
    iget-object v0, p0, Lo/onScrollStateChanged$asBinder;->onNavigationEvent:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->ICustomTabsCallback$Stub(Lo/onScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_2
    return-void
.end method
