.class final Lo/trackingStopped;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/c$onPostMessage;

.field private final onMessageChannelReady:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/trackingStopped;->onMessageChannelReady:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lo/trackingStopped;->extraCallback:Lo/c$onPostMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/trackingStopped;->onMessageChannelReady:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lo/trackingStopped;->extraCallback:Lo/c$onPostMessage;

    .line 1000
    invoke-static {v0, v1}, Lo/j;->onNavigationEvent(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    return-void
.end method
