.class final Lo/StatementResponse$CardDetails$CardExpiry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/getCardExpiry$onMessageChannelReady;

.field private final onMessageChannelReady:I

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/StatementResponse$CardDetails$CardExpiry;->ICustomTabsCallback:Lo/getCardExpiry$onMessageChannelReady;

    iput p2, p0, Lo/StatementResponse$CardDetails$CardExpiry;->onMessageChannelReady:I

    iput-wide p3, p0, Lo/StatementResponse$CardDetails$CardExpiry;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/StatementResponse$CardDetails$CardExpiry;->ICustomTabsCallback:Lo/getCardExpiry$onMessageChannelReady;

    iget v1, p0, Lo/StatementResponse$CardDetails$CardExpiry;->onMessageChannelReady:I

    iget-wide v2, p0, Lo/StatementResponse$CardDetails$CardExpiry;->onPostMessage:J

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady(IJ)V

    return-void
.end method
