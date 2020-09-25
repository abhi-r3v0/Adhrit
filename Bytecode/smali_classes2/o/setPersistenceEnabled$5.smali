.class final Lo/setPersistenceEnabled$5;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Z

.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/zombify$onPostMessage;

.field private synthetic onPostMessage:Lo/setPersistenceEnabled;


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ZIILo/zombify$onPostMessage;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lo/setPersistenceEnabled$5;->onPostMessage:Lo/setPersistenceEnabled;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/setPersistenceEnabled$5;->ICustomTabsCallback:Z

    iput p5, p0, Lo/setPersistenceEnabled$5;->onMessageChannelReady:I

    iput p6, p0, Lo/setPersistenceEnabled$5;->extraCallback:I

    const/4 p1, 0x0

    iput-object p1, p0, Lo/setPersistenceEnabled$5;->onNavigationEvent:Lo/zombify$onPostMessage;

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 400
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$5;->onPostMessage:Lo/setPersistenceEnabled;

    iget-boolean v1, p0, Lo/setPersistenceEnabled$5;->ICustomTabsCallback:Z

    iget v2, p0, Lo/setPersistenceEnabled$5;->onMessageChannelReady:I

    iget v3, p0, Lo/setPersistenceEnabled$5;->extraCallback:I

    iget-object v4, p0, Lo/setPersistenceEnabled$5;->onNavigationEvent:Lo/zombify$onPostMessage;

    invoke-static {v0, v1, v2, v3, v4}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;ZIILo/zombify$onPostMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
