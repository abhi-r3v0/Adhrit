.class final Lo/cancelSentTransactions$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->onPostMessage(Lo/pruneTreeRecursive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/pruneTreeRecursive;


# direct methods
.method constructor <init>(Lo/pruneTreeRecursive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 545
    iput-object p1, p0, Lo/cancelSentTransactions$onMessageChannelReady;->extraCallback:Lo/pruneTreeRecursive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 1

    .line 548
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-object v0, p0, Lo/cancelSentTransactions$onMessageChannelReady;->extraCallback:Lo/pruneTreeRecursive;

    invoke-interface {p1, v0}, Lo/colorFlip;->onPostMessage(Lo/pruneTreeRecursive;)V

    return-void
.end method
