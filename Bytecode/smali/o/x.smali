.class final Lo/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/w$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/p$a;


# direct methods
.method public constructor <init>(Lo/w$onMessageChannelReady;Lo/p$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/x;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iput-object p2, p0, Lo/x;->onMessageChannelReady:Lo/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/x;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v1, p0, Lo/x;->onMessageChannelReady:Lo/p$a;

    .line 1000
    invoke-virtual {v0, v1}, Lo/w$onMessageChannelReady;->onMessageChannelReady(Lo/p$a;)V

    return-void
.end method
