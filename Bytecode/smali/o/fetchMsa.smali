.class final Lo/fetchMsa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/w$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/w$onMessageChannelReady;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fetchMsa;->onPostMessage:Lo/w$onMessageChannelReady;

    iput p2, p0, Lo/fetchMsa;->onNavigationEvent:I

    iput-wide p3, p0, Lo/fetchMsa;->onMessageChannelReady:J

    iput-wide p5, p0, Lo/fetchMsa;->ICustomTabsCallback:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lo/fetchMsa;->onPostMessage:Lo/w$onMessageChannelReady;

    iget v1, p0, Lo/fetchMsa;->onNavigationEvent:I

    iget-wide v2, p0, Lo/fetchMsa;->onMessageChannelReady:J

    iget-wide v4, p0, Lo/fetchMsa;->ICustomTabsCallback:J

    .line 1000
    invoke-virtual/range {v0 .. v5}, Lo/w$onMessageChannelReady;->onMessageChannelReady(IJJ)V

    return-void
.end method
