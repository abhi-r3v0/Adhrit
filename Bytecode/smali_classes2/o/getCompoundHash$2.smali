.class final Lo/getCompoundHash$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;-><init>(Lo/isRed;Lo/fixUp;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/onDataUpdate;Lo/getIdManager;Ljava/util/List;Lo/sendUnauth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lo/getCompoundHash$2;->ICustomTabsCallback:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lo/getCompoundHash$2;->ICustomTabsCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->updateVisuals(Lo/getCompoundHash;)Lo/getCompoundHash$newSession;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCompoundHash$newSession;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
