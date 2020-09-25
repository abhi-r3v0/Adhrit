.class final Lo/cancelSentTransactions$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->asBinder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 526
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {p1}, Lo/colorFlip;->asBinder()V

    return-void
.end method
