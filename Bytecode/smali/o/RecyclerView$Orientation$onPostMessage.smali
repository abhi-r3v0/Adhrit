.class public final Lo/RecyclerView$Orientation$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$Orientation;-><init>()V
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
        "com/dreamplug/fabrik/ui/track/bankbalance/manage/ManageBottomSheetFragment$clickListener$1",
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
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$Orientation;


# direct methods
.method constructor <init>(Lo/RecyclerView$Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lo/RecyclerView$Orientation$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$Orientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 8

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lo/RecyclerView$Orientation$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$Orientation;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 62
    iget-object p1, p0, Lo/RecyclerView$Orientation$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$Orientation;

    invoke-static {p1}, Lo/RecyclerView$Orientation;->onMessageChannelReady(Lo/RecyclerView$Orientation;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p2, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    iget-object p3, p0, Lo/RecyclerView$Orientation$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$Orientation;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "account_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    const-string p3, ""

    :cond_1
    const-string v0, "cta"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankAccountUniqueId"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2084
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    .line 1626
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "pairs"

    const-string v4, "position"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p2, "set_mpin"

    .line 1635
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-array p2, v5, [Lo/addWrite;

    .line 1638
    invoke-virtual {p1, p3}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v6

    .line 1637
    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "track_bb_manage_account_reset mpin"

    .line 1636
    invoke-static {p2, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1643
    iget-object p2, p1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    check-cast p2, Ljava/lang/Iterable;

    .line 1641
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cred/pay/repository/models/VpaAccount;

    .line 7048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7062
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1642
    invoke-static {v1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v0

    .line 1641
    :cond_4
    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v2, :cond_5

    .line 1644
    iget-object p1, p1, Lo/RecyclerView$OnFlingListener;->warmup:Lo/setActive;

    new-instance p2, Lo/throwIfInMutationOperation;

    new-instance p3, Lo/addWrite;

    const-string v0, "SET_MPIN"

    invoke-direct {p3, v0, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, p3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void

    :sswitch_1
    const-string p1, "deeplink"

    .line 1647
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1648
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    .line 7078
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 1648
    invoke-virtual {p1, p2}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :sswitch_2
    const-string p2, "pin"

    .line 1627
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-array p2, v5, [Lo/addWrite;

    .line 1630
    invoke-virtual {p1, p3}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v6

    .line 1629
    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "track_bb_manage_account_pin_to_top"

    .line 1628
    invoke-static {p2, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 4156
    iget-object p2, p1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3547
    invoke-virtual {p1}, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;

    move-result-object p2

    .line 5023
    iput-object p3, p2, Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;->onNavigationEvent:Ljava/lang/String;

    .line 6000
    iget-object p3, p1, Lo/RecyclerView$OnFlingListener;->IPostMessageService$Stub:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/putRecycledView;

    .line 3548
    invoke-interface {p3, p2}, Lo/putRecycledView;->extraCallback(Lcom/dreamplug/fabrik/ui/track/network/request/BankAccountSyncRequest;)Lo/clearScrap;

    move-result-object p2

    .line 3549
    new-instance p3, Lo/RecyclerView$OnFlingListener$ICustomTabsCallback;

    invoke-direct {p3, p1}, Lo/RecyclerView$OnFlingListener$ICustomTabsCallback;-><init>(Lo/RecyclerView$OnFlingListener;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    :sswitch_3
    const-string p2, "delete"

    .line 1650
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x2

    new-array v0, p2, [Lo/addWrite;

    .line 8043
    new-instance v1, Lo/addWrite;

    const-string v7, "id"

    invoke-direct {v1, v7, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    .line 1654
    invoke-virtual {p1, p3}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v5

    .line 1652
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "track_bb_delete_vpa_clicked"

    .line 1651
    invoke-static {p2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1659
    iget-object p2, p1, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    .line 1657
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cred/pay/repository/models/VpaAccount;

    .line 10048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 10062
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1658
    invoke-static {v1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v2, v0

    .line 1657
    :cond_7
    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v2, :cond_9

    .line 1660
    iput-object v2, p1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    .line 1661
    iget-object p2, p1, Lo/RecyclerView$OnFlingListener;->warmup:Lo/setActive;

    new-instance p3, Lo/throwIfInMutationOperation;

    new-instance v0, Lo/addWrite;

    iget-object p1, p1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-nez p1, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    const-string v1, "DELETE"

    invoke-direct {v0, v1, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        0x1b195 -> :sswitch_2
        0x258156e6 -> :sswitch_1
        0x545ca7c5 -> :sswitch_0
    .end sparse-switch
.end method
