.class public final Lo/resolveIsInfinite$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/resolveIsInfinite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/RewardTnCAdapter$Companion;",
        "",
        "()V",
        "TYPE_ASSET_CARD",
        "",
        "TYPE_BANNER",
        "TYPE_MOST_IMPORTANT_TNC",
        "TYPE_PLAIN_HTML_TNC",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/addItemDecoration$onPostMessage;


# instance fields
.field public final ICustomTabsCallback:Lo/onVerificationFailed;

.field public final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/computeScrollRange$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

.field public final onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "ExtractorSessionStoreView"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/resolveIsInfinite$onPostMessage;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onVerificationFailed;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/resolveIsInfinite$onPostMessage;->ICustomTabsCallback:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/resolveIsInfinite$onPostMessage;->onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static onNavigationEvent(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pack_names"

    .line 7000
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lo/getFactory;

    const-string v0, "Session without pack received."

    invoke-direct {p0, v0}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onPostMessage(Lo/isValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/isValue<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3000
    :try_start_0
    iget-object v0, p0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2000
    invoke-interface {p1}, Lo/isValue;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5000
    iget-object v0, p0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4000
    iget-object v0, p0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2000
    throw p1
.end method

.method public onPostMessage(I)Lo/computeScrollRange$extraCallback;
    .locals 4

    .line 6000
    iget-object v0, p0, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeScrollRange$extraCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lo/getFactory;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
