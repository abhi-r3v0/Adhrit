.class final Lo/cancelSentTransactions$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->onPostMessage(Lo/rotateRight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "warmup"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/cancelSentTransactions;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lo/cancelSentTransactions$warmup;->onPostMessage:Lo/cancelSentTransactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 3

    .line 308
    iget-object v0, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    new-instance v1, Lo/cancelSentTransactions$IPostMessageService$Stub;

    iget-object v2, p0, Lo/cancelSentTransactions$warmup;->onPostMessage:Lo/cancelSentTransactions;

    invoke-direct {v1, v2, p1}, Lo/cancelSentTransactions$IPostMessageService$Stub;-><init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    invoke-interface {v0, v1}, Lo/colorFlip;->onPostMessage(Lo/rotateRight;)V

    return-void
.end method
