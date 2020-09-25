.class public final Lo/onActivityPaused$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChildInsets;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPaused;-><init>(Landroid/app/Application;)V
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/ContactsInviteViewModel$contactPullCallback$1",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "onPermissionMissing",
        "",
        "permission",
        "",
        "onReady",
        "entities",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/contacthelper/db/ContactEntity;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic onMessageChannelReady:Lo/onActivityPaused;


# direct methods
.method constructor <init>(Lo/onActivityPaused;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lo/onActivityPaused$onNavigationEvent;->onMessageChannelReady:Lo/onActivityPaused;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lo/onActivityPaused$onNavigationEvent;->onMessageChannelReady:Lo/onActivityPaused;

    invoke-static {v0}, Lo/onActivityPaused;->extraCallback(Lo/onActivityPaused;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/setFillViewport;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lo/onActivityPaused$onNavigationEvent;->onMessageChannelReady:Lo/onActivityPaused;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Lo/setQueue;)Lo/isFromUser;

    move-result-object v0

    invoke-static {}, Lo/setTrackedQueryKeys;->extraCallback()Lo/zombifyForRemove;

    move-result-object v1

    check-cast v1, Lo/isZombied;

    new-instance v2, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/onActivityPaused$onNavigationEvent;Ljava/util/ArrayList;Lo/setSessionPersistenceKey;)V

    check-cast v2, Lo/nextTransactionOrder;

    const/4 p1, 0x2

    .line 1001
    invoke-static {v0, v1, v3, v2, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method
