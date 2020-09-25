.class final Lo/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:I

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(ZZIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/k$b;->ICustomTabsCallback:Z

    iput-boolean p2, p0, Lo/k$b;->onNavigationEvent:Z

    iput p3, p0, Lo/k$b;->extraCallback:I

    iput-boolean p4, p0, Lo/k$b;->onPostMessage:Z

    iput-boolean p5, p0, Lo/k$b;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 6

    iget-boolean v0, p0, Lo/k$b;->ICustomTabsCallback:Z

    iget-boolean v1, p0, Lo/k$b;->onNavigationEvent:Z

    iget v2, p0, Lo/k$b;->extraCallback:I

    iget-boolean v3, p0, Lo/k$b;->onPostMessage:Z

    iget-boolean v4, p0, Lo/k$b;->onMessageChannelReady:Z

    move-object v5, p1

    .line 1000
    invoke-static/range {v0 .. v5}, Lo/j;->onNavigationEvent(ZZIZZLo/allow$onNavigationEvent;)V

    return-void
.end method
