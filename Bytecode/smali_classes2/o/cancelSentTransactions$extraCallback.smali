.class final Lo/cancelSentTransactions$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->onPostMessage(Lo/saveNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/saveNode;


# direct methods
.method constructor <init>(Lo/saveNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lo/cancelSentTransactions$extraCallback;->ICustomTabsCallback:Lo/saveNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 1

    .line 644
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-object v0, p0, Lo/cancelSentTransactions$extraCallback;->ICustomTabsCallback:Lo/saveNode;

    invoke-interface {p1, v0}, Lo/colorFlip;->onPostMessage(Lo/saveNode;)V

    return-void
.end method
