.class final Lo/eI;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:J

.field public final extraCallback:Lo/getMaxSize;

.field public onMessageChannelReady:I

.field public onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo/getMaxSize;->extraCallback()Lo/getMaxSize;

    move-result-object v0

    iput-object v0, p0, Lo/eI;->extraCallback:Lo/getMaxSize;

    return-void
.end method

.method constructor <init>(Lo/getMaxSize;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lo/eI;->extraCallback:Lo/getMaxSize;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
