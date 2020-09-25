.class final Lo/prefixSuccessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/zzbfb;

.field private final synthetic onMessageChannelReady:J


# direct methods
.method constructor <init>(Lo/zzbfb;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/prefixSuccessor;->ICustomTabsCallback:Lo/zzbfb;

    iput-wide p2, p0, Lo/prefixSuccessor;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/prefixSuccessor;->ICustomTabsCallback:Lo/zzbfb;

    iget-wide v1, p0, Lo/prefixSuccessor;->onMessageChannelReady:J

    invoke-static {v0, v1, v2}, Lo/zzbfb;->onPostMessage(Lo/zzbfb;J)V

    return-void
.end method
