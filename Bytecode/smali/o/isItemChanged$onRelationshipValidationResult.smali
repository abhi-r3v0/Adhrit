.class public final Lo/isItemChanged$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;-><init>()V
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
        "com/dreamplug/fabrik/ui/track/TrackFragment$onClick$1",
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
.field private synthetic extraCallback:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 12

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "count_of_cards"

    const-string v1, "pairs"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0x3d7907f0

    if-eq p3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "banner_tap"

    .line 498
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-array p3, v3, [Lo/addWrite;

    .line 499
    iget-object v4, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {v4}, Lo/isItemChanged;->onNavigationEvent(Lo/isItemChanged;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v0, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p3, v2

    .line 499
    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, p3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p3, "track_bb_home_page_banner_click"

    .line 499
    invoke-static {p3, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 502
    :cond_1
    :goto_0
    instance-of p3, p2, Lo/onFling$ICustomTabsCallback;

    if-eqz p3, :cond_10

    .line 503
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v4, -0x4075629b    # -1.0829283f

    const-string v5, "position"

    const/4 v6, 0x2

    const-string v7, "id"

    const/4 v8, 0x0

    if-eq v0, v4, :cond_b

    const v4, 0x46a72a5

    if-eq v0, v4, :cond_5

    const v4, 0x545ca7c5

    if-eq v0, v4, :cond_2

    return-void

    :cond_2
    const-string/jumbo v0, "set_mpin"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 531
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    move-object v0, p2

    check-cast v0, Lo/onFling$ICustomTabsCallback;

    .line 16272
    iget-object v4, v0, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 17049
    iget-object v4, v4, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 17272
    iget-object v9, v0, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 18048
    iget-object v9, v9, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 18072
    iget-object v9, v9, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 531
    invoke-static {p1, v4, v9}, Lo/isItemChanged;->ICustomTabsCallback(Lo/isItemChanged;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v6, [Lo/addWrite;

    if-nez p3, :cond_3

    move-object p2, v8

    .line 534
    :cond_3
    check-cast p2, Lo/onFling$ICustomTabsCallback;

    if-eqz p2, :cond_4

    .line 18272
    iget-object p2, p2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz p2, :cond_4

    .line 19048
    iget-object p2, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz p2, :cond_4

    .line 19062
    iget-object v8, p2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 20043
    :cond_4
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v7, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, p1, v2

    .line 535
    iget-object p2, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p2}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p2

    .line 20272
    iget-object p3, v0, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 21048
    iget-object p3, p3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 21062
    iget-object p3, p3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 535
    invoke-virtual {p2, p3}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 22043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v5, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v3

    .line 533
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "track_bb_set_mpin"

    .line 532
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :cond_5
    const-string v0, "check_balance"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    if-nez p3, :cond_6

    move-object p3, v8

    goto :goto_1

    :cond_6
    move-object p3, p2

    .line 519
    :goto_1
    check-cast p3, Lo/onFling$ICustomTabsCallback;

    if-eqz p3, :cond_7

    .line 8272
    iget-object p3, p3, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz p3, :cond_7

    .line 9048
    iget-object p3, p3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz p3, :cond_7

    .line 9062
    iget-object v8, p3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 10043
    :cond_7
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v7, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, v0, v2

    .line 520
    iget-object p3, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p3}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p3

    check-cast p2, Lo/onFling$ICustomTabsCallback;

    .line 10272
    iget-object v2, p2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 11048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 11062
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 520
    invoke-virtual {p3, v2}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 12043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v5, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 521
    iget-object p3, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    .line 12069
    iget-object p3, p3, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz p3, :cond_8

    .line 13038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Lo/evictionCount;->onNavigationEvent()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_8
    const-wide/16 v2, 0x0

    :goto_2
    const-wide/16 v4, 0x3e8

    .line 521
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 13043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "time_spent"

    invoke-direct {v2, v3, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v6

    .line 518
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "track_bb_home_page_check_cta"

    .line 517
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 523
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    .line 14053
    iget-boolean p1, p1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_9

    .line 524
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->asInterface(Lo/isItemChanged;)V

    return-void

    .line 526
    :cond_9
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    .line 14077
    iget-object p1, p1, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz p1, :cond_a

    .line 14272
    iget-object p3, p2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 15048
    iget-object p3, p3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 526
    invoke-virtual {p1, p3}, Lo/calculateScrollDistance;->onNavigationEvent(Lcom/cred/pay/repository/models/Account;)V

    .line 527
    :cond_a
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    .line 15272
    iget-object p2, p2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 16048
    iget-object p2, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 16062
    iget-object p2, p2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 527
    invoke-virtual {p1, p2}, Lo/RecyclerView$OnFlingListener;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v0, "manage"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 505
    move-object p1, p2

    check-cast p1, Lo/onFling$ICustomTabsCallback;

    .line 1273
    iget-object v0, p1, Lo/onFling$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;

    .line 2023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    .line 2031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    if-eqz v0, :cond_d

    .line 2045
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/track/network/response/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    if-eqz v0, :cond_d

    .line 506
    sget-object v4, Lo/RecyclerView$Orientation;->onPostMessage:Lo/RecyclerView$Orientation$onNavigationEvent;

    .line 2272
    iget-object v4, p1, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 3048
    iget-object v4, v4, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3062
    iget-object v4, v4, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    const-string v9, "cta"

    .line 506
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "uniqueAccountId"

    invoke-static {v4, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3072
    new-instance v9, Lo/RecyclerView$Orientation;

    invoke-direct {v9}, Lo/RecyclerView$Orientation;-><init>()V

    .line 3073
    move-object v10, v9

    check-cast v10, Landroidx/fragment/app/Fragment;

    check-cast v0, Landroid/os/Parcelable;

    const-string v11, "extra"

    .line 4016
    invoke-static {v10, v0, v11}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v10, "account_id"

    .line 3075
    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v9, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 508
    iget-object v0, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v4, "manage account"

    invoke-virtual {v9, v0, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_d
    new-array v0, v6, [Lo/addWrite;

    if-nez p3, :cond_e

    move-object p2, v8

    .line 512
    :cond_e
    check-cast p2, Lo/onFling$ICustomTabsCallback;

    if-eqz p2, :cond_f

    .line 4272
    iget-object p2, p2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz p2, :cond_f

    .line 5048
    iget-object p2, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz p2, :cond_f

    .line 5062
    iget-object v8, p2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 6043
    :cond_f
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v7, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v2

    .line 513
    iget-object p2, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p2}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p2

    .line 6272
    iget-object p1, p1, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 7048
    iget-object p1, p1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7062
    iget-object p1, p1, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 513
    invoke-virtual {p2, p1}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 8043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v3

    .line 511
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "track_bb_manage_account_click"

    .line 510
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 539
    :cond_10
    instance-of p1, p2, Lo/RecyclerView$OnItemTouchListener$onMessageChannelReady;

    if-eqz p1, :cond_12

    new-array p1, v3, [Lo/addWrite;

    .line 542
    iget-object p2, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p2}, Lo/isItemChanged;->onNavigationEvent(Lo/isItemChanged;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 23043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v0, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v2

    .line 541
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "track_bb_home_page_add_account_click"

    .line 540
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 545
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    .line 24053
    iget-boolean p1, p1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_11

    .line 546
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->asInterface(Lo/isItemChanged;)V

    return-void

    .line 548
    :cond_11
    iget-object p1, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->newSession(Lo/isItemChanged;)V

    return-void

    .line 550
    :cond_12
    instance-of p1, p2, Lo/RecyclerView$RecycledViewPool$onNavigationEvent;

    if-eqz p1, :cond_15

    new-array p1, v3, [Lo/addWrite;

    .line 553
    iget-object p2, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p2}, Lo/isItemChanged;->onNavigationEvent(Lo/isItemChanged;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 25043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v0, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v2

    .line 552
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "profile_support_faq_load"

    .line 551
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 556
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object p2, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    invoke-static {p2}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p2

    .line 26064
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    if-eqz p2, :cond_13

    .line 27014
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->onNavigationEvent:Ljava/lang/String;

    if-nez p2, :cond_14

    .line 557
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cred://app/launch?target=web&extra="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/isItemChanged$onRelationshipValidationResult;->extraCallback:Lo/isItemChanged;

    const v0, 0x7f1304ef

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "support"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 556
    :cond_14
    invoke-virtual {p1, p2}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
