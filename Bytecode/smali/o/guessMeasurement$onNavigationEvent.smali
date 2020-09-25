.class public final Lo/guessMeasurement$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchAddStarting$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/guessMeasurement;-><init>()V
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
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/StashAutoDebitUpiPitchDialog$appUpiCommunication$1",
        "Lcom/dreamplug/upi/UpiFragment$IAppUpiCommunication;",
        "accountLinked",
        "",
        "payload",
        "",
        "",
        "dismiss",
        "isProcessing",
        "value",
        "",
        "onValidAccountsLoaded",
        "vpaAccounts",
        "",
        "Lcom/cred/pay/repository/models/VpaAccount;",
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
.field private synthetic ICustomTabsCallback:Lo/guessMeasurement;


# direct methods
.method constructor <init>(Lo/guessMeasurement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/VpaAccount;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "vpaAccounts"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v3, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-static {v3}, Lo/guessMeasurement;->onNavigationEvent(Lo/guessMeasurement;)Lo/onDetach$onPostMessage;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1106
    iget-object v3, v3, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 144
    check-cast v3, Ljava/lang/Iterable;

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "$this$collectionSizeOrDefault"

    invoke-static {v3, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    goto :goto_0

    :cond_0
    const/16 v6, 0xa

    .line 194
    :goto_0
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 195
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 196
    check-cast v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 3017
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    .line 144
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_1
    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 145
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v5, :cond_3

    .line 3048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3063
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 146
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 147
    iget-object v6, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-static {v6}, Lo/guessMeasurement;->onNavigationEvent(Lo/guessMeasurement;)Lo/onDetach$onPostMessage;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 3106
    iget-object v6, v6, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 147
    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 4017
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    .line 4048
    iget-object v9, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 4063
    iget-object v9, v9, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 148
    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_5
    move-object v7, v4

    .line 147
    :goto_4
    check-cast v7, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    goto :goto_5

    :cond_6
    move-object v7, v4

    .line 5048
    :goto_5
    iget-object v6, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 151
    new-instance v15, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    .line 6048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6072
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 7063
    iget-object v14, v6, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 7066
    iget-object v10, v6, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 8064
    iget-object v9, v6, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    .line 8067
    iget-object v13, v6, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9062
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 10015
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    move-object v11, v7

    goto :goto_6

    :cond_7
    move-object v11, v4

    :goto_6
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x600

    move-object v8, v15

    move-object/from16 v16, v13

    move v13, v7

    move-object v7, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v17, v3

    .line 151
    invoke-direct/range {v8 .. v19}, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 163
    :cond_8
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_a

    .line 164
    iget-object v1, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    .line 165
    iget-object v1, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Lo/getSpanGroupIndex;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lo/getSpanGroupIndex;->onPostMessage(Ljava/util/ArrayList;I)V

    return-void

    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_a
    iget-object v1, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    .line 168
    iget-object v1, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    .line 11000
    iget-object v1, v1, Lo/guessMeasurement;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lo/getMoveDuration;

    const/4 v6, 0x0

    .line 168
    iget-object v1, v0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-static {v1}, Lo/guessMeasurement;->onNavigationEvent(Lo/guessMeasurement;)Lo/onDetach$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 11106
    iget-object v4, v1, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    :cond_b
    move-object v7, v4

    const/16 v1, 0x66

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    const-string v8, "LENDING"

    const-string/jumbo v10, "stash"

    invoke-static/range {v5 .. v11}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Lo/onDetach$asInterface;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dreamplug/androidapp/UpiAliasActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 136
    :cond_0
    iget-object v0, p0, Lo/guessMeasurement$onNavigationEvent;->ICustomTabsCallback:Lo/guessMeasurement;

    invoke-static {v0}, Lo/guessMeasurement;->onMessageChannelReady(Lo/guessMeasurement;)Lo/getCurrentContentInsetRight;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getCurrentContentInsetRight;->extraCallback(Ljava/util/Map;)V

    return-void
.end method
