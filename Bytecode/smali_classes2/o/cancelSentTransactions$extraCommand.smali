.class final Lo/cancelSentTransactions$extraCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCommand"
.end annotation


# instance fields
.field final extraCallback:Lo/cancelSentTransactions$requestPostMessageChannel;

.field final synthetic onMessageChannelReady:Lo/cancelSentTransactions;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lo/cancelSentTransactions$extraCommand;->extraCallback:Lo/cancelSentTransactions$requestPostMessageChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 390
    iget-object v0, p0, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->onTransact(Lo/cancelSentTransactions;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lo/cancelSentTransactions$extraCommand$1;

    invoke-direct {v1, p0}, Lo/cancelSentTransactions$extraCommand$1;-><init>(Lo/cancelSentTransactions$extraCommand;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
