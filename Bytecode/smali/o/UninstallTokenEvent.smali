.class final Lo/UninstallTokenEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/ProxyEvent;

.field private final onNavigationEvent:Lo/GoogleReferrer$1;


# direct methods
.method public constructor <init>(Lo/ProxyEvent;Lo/GoogleReferrer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UninstallTokenEvent;->extraCallback:Lo/ProxyEvent;

    iput-object p2, p0, Lo/UninstallTokenEvent;->onNavigationEvent:Lo/GoogleReferrer$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/UninstallTokenEvent;->extraCallback:Lo/ProxyEvent;

    iget-object v1, p0, Lo/UninstallTokenEvent;->onNavigationEvent:Lo/GoogleReferrer$1;

    .line 1000
    invoke-virtual {v0, v1}, Lo/ProxyEvent;->onMessageChannelReady(Lo/GoogleReferrer$1;)V

    return-void
.end method
