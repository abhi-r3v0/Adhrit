.class final Lo/verifyInsideTransaction$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/verifyInsideTransaction;

.field final extraCallback:Ljava/util/concurrent/Executor;

.field final onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/verifyInsideTransaction;Ljava/util/concurrent/Executor;Lo/verifyInsideTransaction$onNavigationEvent;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lo/verifyInsideTransaction$onPostMessage;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p2, p0, Lo/verifyInsideTransaction$onPostMessage;->extraCallback:Ljava/util/concurrent/Executor;

    .line 1019
    iput-object p3, p0, Lo/verifyInsideTransaction$onPostMessage;->onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lo/verifyInsideTransaction$onPostMessage;->onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;

    iget-object v1, p0, Lo/verifyInsideTransaction$onPostMessage;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-interface {v0, v1}, Lo/verifyInsideTransaction$onNavigationEvent;->extraCallback(Lo/verifyInsideTransaction;)V

    return-void
.end method
