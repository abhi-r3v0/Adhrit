.class public final Lo/MultiSelectListPreference$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/b$e$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOffersAdapter$Companion;",
        "",
        "()V",
        "COLLECTION_HEADER_LIST_ITEM",
        "",
        "COLLECTION_LIST_ITEM",
        "MINI_REWARD_ITEM_TYPE",
        "OFFER_DETAILS_HEADER_ITEM",
        "OFFER_DETAILS_ITEM",
        "OFFER_DISCLAIMER",
        "PLACEHOLDER_MINI_REWARD_LIST_ITEM",
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
.field private final onPostMessage:Lo/ag;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ag;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MultiSelectListPreference$onMessageChannelReady;->onPostMessage:Lo/ag;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 5

    .line 2000
    iget-object v0, p0, Lo/MultiSelectListPreference$onMessageChannelReady;->onPostMessage:Lo/ag;

    .line 2056
    iget-object v1, v0, Lo/ag;->onPostMessage:Lo/ah;

    invoke-interface {v1}, Lo/ah;->onNavigationEvent()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/OaidClient$Info;

    .line 2057
    iget-object v3, v0, Lo/ag;->ICustomTabsCallback:Lo/ai;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
