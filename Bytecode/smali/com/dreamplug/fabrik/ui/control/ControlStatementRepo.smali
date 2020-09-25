.class public final Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;,
        Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;,
        Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TxnSpendFooterItem;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0005-./01B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0013H\u0002J\u000e\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\tJ\u000e\u0010)\u001a\u00020#2\u0006\u0010(\u001a\u00020\tJ\u0016\u0010*\u001a\u00020#2\u0006\u0010(\u001a\u00020\t2\u0006\u0010+\u001a\u00020\nJ\u0016\u0010,\u001a\u00020#2\u0006\u0010(\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0013R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R7\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R7\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00130\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0013`\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0014\u0010\rR\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo;",
        "",
        "()V",
        "_spendTxnListItemData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "cardFullStatementToCardIdMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/dreamplug/androidapp/cards/StatementResponse;",
        "Lkotlin/collections/HashMap;",
        "getCardFullStatementToCardIdMap",
        "()Ljava/util/HashMap;",
        "cardFullStatementToCardIdMap$delegate",
        "Lkotlin/Lazy;",
        "cardInfo",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "cardSpendPatternToCardIdMap",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "getCardSpendPatternToCardIdMap",
        "cardSpendPatternToCardIdMap$delegate",
        "controlService",
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "getControlService",
        "()Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "controlService$delegate",
        "spendTxnListItemData",
        "Landroidx/lifecycle/LiveData;",
        "getSpendTxnListItemData",
        "()Landroidx/lifecycle/LiveData;",
        "spendTxnTemplatesItemList",
        "",
        "spendUnCategorisedItemList",
        "createAllStatementTransactions",
        "",
        "data",
        "createTemplates",
        "response",
        "fetchAllTransactions",
        "id",
        "fetchSpendPattern",
        "setCardFullTransaction",
        "card",
        "setCardMapData",
        "FooterItem",
        "HeaderItem",
        "MerchantWiseItem",
        "TransactionItem",
        "TxnSpendFooterItem",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sget-object v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$onMessageChannelReady;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    .line 42
    sget-object v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$onPostMessage;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    .line 47
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 232
    sget-object v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    return-void
.end method
