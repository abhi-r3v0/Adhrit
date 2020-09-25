.class public final Lo/getSpanGroupIndex$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onPostMessage:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 784
    iput-object p1, p0, Lo/getSpanGroupIndex$asBinder;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 6

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xfa15e05

    if-eq v0, v1, :cond_2

    const v1, 0x2a0a0790

    if-eq v0, v1, :cond_1

    const v1, 0x36f914dd

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "see_calculation"

    .line 794
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 795
    iget-object p1, p0, Lo/getSpanGroupIndex$asBinder;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->getInterfaceDescriptor(Lo/getSpanGroupIndex;)Lo/scrollHorizontallyBy;

    move-result-object p1

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    check-cast p2, Lo/postDispatchSwipe;

    .line 2031
    iget-object p3, p2, Lo/postDispatchSwipe;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    if-eqz p3, :cond_3

    const/4 p3, 0x3

    new-array v1, p3, [Lo/addWrite;

    const/4 v2, 0x0

    .line 3029
    iget-object v3, p2, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "emi_tenure"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 4029
    iget-object v3, p2, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "emi_amount"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 5030
    iget-object v3, p2, Lo/postDispatchSwipe;->asBinder:Ljava/lang/Boolean;

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_recommended"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 1240
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {v2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p3, "stash_tenure_screen_click_see_calculation"

    .line 1240
    invoke-static {p3, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1246
    sget-object p3, Lo/checkHorizontalSwipe;->onPostMessage:Lo/checkHorizontalSwipe$onNavigationEvent;

    new-instance p3, Lo/onDetach$INotificationSideChannel;

    .line 6031
    iget-object p2, p2, Lo/postDispatchSwipe;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    .line 1246
    invoke-direct {p3, p2}, Lo/onDetach$INotificationSideChannel;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;)V

    const-string p2, "extra"

    invoke-static {p3, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6139
    new-instance v1, Lo/checkHorizontalSwipe;

    invoke-direct {v1}, Lo/checkHorizontalSwipe;-><init>()V

    .line 6140
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p3, Landroid/os/Parcelable;

    .line 7016
    invoke-static {v2, p3, p2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1247
    iget-object p1, p1, Lo/scrollHorizontallyBy;->ICustomTabsService:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p3, "tenure_select"

    .line 787
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 789
    iget-object p1, p0, Lo/getSpanGroupIndex$asBinder;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->getInterfaceDescriptor(Lo/getSpanGroupIndex;)Lo/scrollHorizontallyBy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/scrollHorizontallyBy;->onMessageChannelReady(Lo/StaggeredGridLayoutManager;)V

    return-void

    :cond_2
    const-string/jumbo p2, "tenure_custom"

    .line 791
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 792
    iget-object p1, p0, Lo/getSpanGroupIndex$asBinder;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->getInterfaceDescriptor(Lo/getSpanGroupIndex;)Lo/scrollHorizontallyBy;

    move-result-object p1

    invoke-virtual {p1}, Lo/scrollHorizontallyBy;->ICustomTabsCallback()V

    :cond_3
    :goto_0
    return-void
.end method
