.class final Lo/getCompoundHash$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->asBinder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsCallback;->onNavigationEvent:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback;->onNavigationEvent:Lo/getCompoundHash;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getCompoundHash;->onNavigationEvent(Lo/getCompoundHash;Z)V

    .line 1005
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onTransact(Lo/getCompoundHash;)V

    :cond_1
    :goto_0
    return-void
.end method
