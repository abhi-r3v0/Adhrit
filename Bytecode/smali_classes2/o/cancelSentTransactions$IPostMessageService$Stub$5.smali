.class final Lo/cancelSentTransactions$IPostMessageService$Stub$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions$IPostMessageService$Stub;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/cancelSentTransactions$IPostMessageService$Stub;

.field private synthetic onPostMessage:Lo/cancelSentTransactions$validateRelationship;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions$IPostMessageService$Stub;Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub$5;->ICustomTabsCallback:Lo/cancelSentTransactions$IPostMessageService$Stub;

    iput-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub$5;->onPostMessage:Lo/cancelSentTransactions$validateRelationship;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 810
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub$5;->ICustomTabsCallback:Lo/cancelSentTransactions$IPostMessageService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub$5;->onPostMessage:Lo/cancelSentTransactions$validateRelationship;

    invoke-static {v0, v1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    return-void
.end method
