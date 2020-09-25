.class final Lo/cancelSentTransactions$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->ICustomTabsCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsService"
.end annotation


# instance fields
.field private synthetic extraCallback:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 569
    iput-boolean p1, p0, Lo/cancelSentTransactions$ICustomTabsService;->extraCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 1

    .line 572
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-boolean v0, p0, Lo/cancelSentTransactions$ICustomTabsService;->extraCallback:Z

    invoke-interface {p1, v0}, Lo/colorFlip;->ICustomTabsCallback(Z)V

    return-void
.end method
