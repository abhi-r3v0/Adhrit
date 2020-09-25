.class final Lo/getEnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setEnable;

.field private final synthetic onPostMessage:Lo/getApps;


# direct methods
.method constructor <init>(Lo/setEnable;Lo/getApps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getEnable;->onMessageChannelReady:Lo/setEnable;

    iput-object p2, p0, Lo/getEnable;->onPostMessage:Lo/getApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/getEnable;->onMessageChannelReady:Lo/setEnable;

    iget-object v1, p0, Lo/getEnable;->onPostMessage:Lo/getApps;

    invoke-static {v0, v1}, Lo/setEnable;->extraCallback(Lo/setEnable;Lo/getApps;)V

    return-void
.end method
