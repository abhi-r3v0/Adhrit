.class final Lo/cancelSentTransactions$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "mayLaunchUrl"
.end annotation


# instance fields
.field final extraCallback:J

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Z

.field final onPostMessage:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ZZJLjava/lang/Integer;)V
    .locals 0

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput-boolean p1, p0, Lo/cancelSentTransactions$mayLaunchUrl;->onMessageChannelReady:Z

    .line 1361
    iput-boolean p2, p0, Lo/cancelSentTransactions$mayLaunchUrl;->onNavigationEvent:Z

    .line 1362
    iput-wide p3, p0, Lo/cancelSentTransactions$mayLaunchUrl;->extraCallback:J

    .line 1363
    iput-object p5, p0, Lo/cancelSentTransactions$mayLaunchUrl;->onPostMessage:Ljava/lang/Integer;

    return-void
.end method
