.class final Lo/cancelSentTransactions$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->ICustomTabsCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getInterfaceDescriptor"
.end annotation


# instance fields
.field private synthetic extraCallback:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput p1, p0, Lo/cancelSentTransactions$getInterfaceDescriptor;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 1

    .line 508
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget v0, p0, Lo/cancelSentTransactions$getInterfaceDescriptor;->extraCallback:I

    invoke-interface {p1, v0}, Lo/colorFlip;->ICustomTabsCallback(I)V

    return-void
.end method
