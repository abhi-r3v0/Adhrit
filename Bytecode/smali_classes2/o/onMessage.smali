.class abstract Lo/onMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onPostMessage:Lo/verifyInsideTransaction;


# direct methods
.method public constructor <init>(Lo/verifyInsideTransaction;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/onMessage;->onPostMessage:Lo/verifyInsideTransaction;

    return-void
.end method


# virtual methods
.method public abstract onPostMessage()V
.end method

.method public final run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lo/onMessage;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lo/onMessage;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v1, p0, Lo/onMessage;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {v1, v0}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lo/onMessage;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {v2, v0}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    throw v1
.end method
