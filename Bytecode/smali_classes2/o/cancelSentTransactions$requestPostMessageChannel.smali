.class final Lo/cancelSentTransactions$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "requestPostMessageChannel"
.end annotation


# instance fields
.field extraCallback:Z

.field onMessageChannelReady:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    iput-object p1, p0, Lo/cancelSentTransactions$requestPostMessageChannel;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
