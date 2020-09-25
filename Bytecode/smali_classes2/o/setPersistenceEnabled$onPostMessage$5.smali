.class final Lo/setPersistenceEnabled$onPostMessage$5;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent(ZLo/isZombied$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPersistenceEnabled$onPostMessage;


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lo/setPersistenceEnabled$onPostMessage$5;->ICustomTabsCallback:Lo/setPersistenceEnabled$onPostMessage;

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 735
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage$5;->ICustomTabsCallback:Lo/setPersistenceEnabled$onPostMessage;

    iget-object v0, v0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub(Lo/setPersistenceEnabled;)Lo/setPersistenceEnabled$onMessageChannelReady;

    return-void
.end method
