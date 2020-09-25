.class public final Lo/getReturnTransition$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchAddStarting$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getReturnTransition;-><init>()V
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
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitUpiPitchDialog$appUpiCommunication$1",
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
.field private synthetic extraCallback:Lo/getReturnTransition;


# direct methods
.method constructor <init>(Lo/getReturnTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 18
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

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v3, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-static {v3}, Lo/getReturnTransition;->ICustomTabsCallback(Lo/getReturnTransition;)Lo/onDetach$onPostMessage;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1106
    iget-object v3, v3, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 153
    check-cast v3, Ljava/lang/Iterable;

    .line 198
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

    .line 198
    :goto_0
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 200
    check-cast v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 3017
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    .line 153
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_1
    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 154
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 202
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v5, :cond_3

    .line 3048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3063
    iget-object v7, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 155
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 156
    new-instance v6, Lo/onDetach$asInterface;

    .line 4048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 4072
    iget-object v9, v7, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 5048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 5063
    iget-object v12, v7, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 6048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6066
    iget-object v13, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 7048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7064
    iget-object v11, v7, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    .line 8048
    iget-object v7, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 8067
    iget-object v10, v7, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 9062
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x20

    move-object v8, v6

    move-object/from16 v16, v3

    .line 156
    invoke-direct/range {v8 .. v17}, Lo/onDetach$asInterface;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 166
    :cond_4
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    const/4 v3, 0x5

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 167
    invoke-virtual {v2, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$asInterface;

    invoke-static {v1}, Lo/onDetach$asInterface;->extraCallback(Lo/onDetach$asInterface;)Lo/onDetach$asInterface;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    .line 10000
    iget-object v1, v1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 168
    invoke-static {v1, v4, v6, v5, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 169
    iget-object v1, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    .line 11000
    iget-object v1, v1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 169
    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-static {v3}, Lo/getReturnTransition;->ICustomTabsCallback(Lo/getReturnTransition;)Lo/onDetach$onPostMessage;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 11106
    iget-object v4, v3, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    :cond_5
    const-string v3, "extraData"

    .line 169
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11359
    new-instance v3, Lo/onGetChildDrawingOrder$ICustomTabsCallback;

    new-instance v5, Lo/onDetach$extraCallback;

    invoke-direct {v5, v2, v4}, Lo/onDetach$extraCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v3, v5}, Lo/onGetChildDrawingOrder$ICustomTabsCallback;-><init>(Lo/onDetach$extraCallback;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v1, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 171
    :cond_6
    iget-object v1, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    .line 12000
    iget-object v1, v1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 171
    invoke-static {v1, v4, v6, v5, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 172
    iget-object v1, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    .line 13000
    iget-object v1, v1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lo/getMoveDuration;

    const/4 v6, 0x0

    .line 172
    iget-object v1, v0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-static {v1}, Lo/getReturnTransition;->ICustomTabsCallback(Lo/getReturnTransition;)Lo/onDetach$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13106
    iget-object v4, v1, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    :cond_7
    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xd

    const-string/jumbo v10, "upi_filtered"

    .line 172
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

    .line 144
    iget-object v0, p0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dreamplug/androidapp/UpiAliasActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lo/getReturnTransition$extraCallback;->extraCallback:Lo/getReturnTransition;

    invoke-static {v0}, Lo/getReturnTransition;->onMessageChannelReady(Lo/getReturnTransition;)Lo/getCurrentContentInsetRight;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getCurrentContentInsetRight;->extraCallback(Ljava/util/Map;)V

    return-void
.end method
