.class final Lo/cancelSentTransactions$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->extraCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lo/cancelSentTransactions$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 1

    .line 596
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-object v0, p0, Lo/cancelSentTransactions$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/colorFlip;->extraCallback(Ljava/lang/String;)V

    return-void
.end method
