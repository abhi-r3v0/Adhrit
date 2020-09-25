.class final Lo/x$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/w$onMessageChannelReady;

.field private final onNavigationEvent:J

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Lo/w$onMessageChannelReady;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/x$3;->onMessageChannelReady:Lo/w$onMessageChannelReady;

    iput-object p2, p0, Lo/x$3;->extraCallback:Ljava/lang/String;

    iput-wide p3, p0, Lo/x$3;->onPostMessage:J

    iput-wide p5, p0, Lo/x$3;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lo/x$3;->onMessageChannelReady:Lo/w$onMessageChannelReady;

    iget-object v1, p0, Lo/x$3;->extraCallback:Ljava/lang/String;

    iget-wide v2, p0, Lo/x$3;->onPostMessage:J

    iget-wide v4, p0, Lo/x$3;->onNavigationEvent:J

    .line 1000
    invoke-virtual/range {v0 .. v5}, Lo/w$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;JJ)V

    return-void
.end method
