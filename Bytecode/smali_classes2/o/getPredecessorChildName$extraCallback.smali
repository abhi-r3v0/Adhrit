.class final Lo/getPredecessorChildName$extraCallback;
.super Lo/getPredecessorChildName;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorChildName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPredecessorChildName$extraCallback$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lo/getPredecessorChildName;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/util/concurrent/Executor;
    .locals 1

    .line 92
    new-instance v0, Lo/getPredecessorChildName$extraCallback$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getPredecessorChildName$extraCallback$ICustomTabsCallback;-><init>()V

    return-object v0
.end method

.method final onMessageChannelReady(Ljava/util/concurrent/Executor;)Lo/getQueryDefinition$ICustomTabsCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Lo/getLastChild;

    invoke-direct {v0, p1}, Lo/getLastChild;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
