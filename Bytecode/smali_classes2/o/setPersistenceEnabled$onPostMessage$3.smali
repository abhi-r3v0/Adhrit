.class final Lo/setPersistenceEnabled$onPostMessage$3;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

.field private synthetic onNavigationEvent:Lo/isZombied$onPostMessage;


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;Lo/isZombied$onPostMessage;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lo/setPersistenceEnabled$onPostMessage$3;->onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

    iput-object p4, p0, Lo/setPersistenceEnabled$onPostMessage$3;->onNavigationEvent:Lo/isZombied$onPostMessage;

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 752
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage$3;->onMessageChannelReady:Lo/setPersistenceEnabled$onPostMessage;

    iget-object v0, v0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    iget-object v1, p0, Lo/setPersistenceEnabled$onPostMessage$3;->onNavigationEvent:Lo/isZombied$onPostMessage;

    invoke-interface {v0, v1}, Lo/getReference;->extraCallback(Lo/isZombied$onPostMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
