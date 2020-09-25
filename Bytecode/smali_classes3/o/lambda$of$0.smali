.class public final Lo/lambda$of$0;
.super Lo/getInitialPrefetchItemCount$extraCallback;


# instance fields
.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:I

.field public final onPostMessage:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getInitialPrefetchItemCount$extraCallback;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lo/lambda$of$0;->onNavigationEvent:I

    iput-wide p4, p0, Lo/lambda$of$0;->onPostMessage:J

    iput-object p6, p0, Lo/lambda$of$0;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method
