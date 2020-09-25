.class final Lo/PopupMenu$OnMenuItemClickListener$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$OnMenuItemClickListener;
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Long;",
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000126\u0010\u0002\u001a2\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007 \u0008*\u0018\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/cred/pay/ui/checkout/ShowLoader;",
        "",
        "Lcom/cred/pay/ui/checkout/Duration;",
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
.field private synthetic onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 29
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_7

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1151
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "bottomSheetBehavior"

    if-eqz v0, :cond_4

    .line 1152
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    const/4 v2, 0x0

    .line 2154
    iget-object v0, v0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 1153
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->bottomSheetView:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    if-eqz v0, :cond_1

    sget v1, Lo/onItemHoverEnter$onMessageChannelReady;->bottom_sheet_bg_without_slider_and_topspace:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1154
    :cond_1
    new-instance v0, Lo/setAppSearchData$onMessageChannelReady;

    .line 3028
    iget-object v1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1154
    check-cast v1, Ljava/lang/Long;

    .line 1155
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_processing:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1156
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->process_taking_more_than_usual:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1154
    :goto_0
    invoke-direct {v0, v1, v2, p1}, Lo/setAppSearchData$onMessageChannelReady;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-static {p1}, Lo/PopupMenu$OnMenuItemClickListener;->extraCallback(Lo/PopupMenu$OnMenuItemClickListener;)Lo/setAppSearchData;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lo/setAppSearchData;->onMessageChannelReady(Lo/setAppSearchData$onMessageChannelReady;)V

    :cond_3
    return-void

    .line 1159
    :cond_4
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    const/4 v0, 0x1

    .line 4154
    iget-object p1, p1, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 1160
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->bottomSheetView:I

    invoke-virtual {p1, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_6

    sget v0, Lo/onItemHoverEnter$onMessageChannelReady;->bottom_sheet_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1161
    :cond_6
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-static {p1}, Lo/PopupMenu$OnMenuItemClickListener;->extraCallback(Lo/PopupMenu$OnMenuItemClickListener;)Lo/setAppSearchData;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 5056
    iget-object p1, p1, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 6017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
