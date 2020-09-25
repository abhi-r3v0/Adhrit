.class final Lo/onHandshake$onMessageChannelReady$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onHandshake$onMessageChannelReady;

.field private synthetic extraCallback:Lo/onHandshake$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onHandshake$onMessageChannelReady;Lo/onHandshake$onNavigationEvent;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lo/onHandshake$onMessageChannelReady$2;->ICustomTabsCallback:Lo/onHandshake$onMessageChannelReady;

    iput-object p2, p0, Lo/onHandshake$onMessageChannelReady$2;->extraCallback:Lo/onHandshake$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 282
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady$2;->ICustomTabsCallback:Lo/onHandshake$onMessageChannelReady;

    iget-object v0, v0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady$2;->extraCallback:Lo/onHandshake$onNavigationEvent;

    invoke-static {v0, v1}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;Lo/onHandshake$onNavigationEvent;)Lo/onHandshake$onNavigationEvent;

    .line 283
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady$2;->ICustomTabsCallback:Lo/onHandshake$onMessageChannelReady;

    iget-object v0, v0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v0}, Lo/onHandshake;->asBinder(Lo/onHandshake;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 284
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady$2;->ICustomTabsCallback:Lo/onHandshake$onMessageChannelReady;

    iget-object v0, v0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v0}, Lo/onHandshake;->ICustomTabsCallback$Stub(Lo/onHandshake;)Lo/Onboarding$3;

    move-result-object v0

    const/4 v1, 0x0

    .line 1177
    iput-boolean v1, v0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    .line 284
    invoke-virtual {v0}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    :cond_0
    return-void
.end method
