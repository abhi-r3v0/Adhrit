.class final Lo/bQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bQ$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/bS;

.field private static final onPostMessage:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const-class v0, Lo/bQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/bQ;->onPostMessage:Ljava/util/logging/Logger;

    .line 6
    new-instance v0, Lo/bQ$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/bQ$onNavigationEvent;-><init>(Lo/bR;)V

    .line 7
    sput-object v0, Lo/bQ;->onMessageChannelReady:Lo/bS;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/String;)Lo/bL;
    .locals 1

    .line 3
    invoke-static {p0}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lo/bQ;->onMessageChannelReady:Lo/bS;

    invoke-interface {v0, p0}, Lo/bS;->ICustomTabsCallback(Ljava/lang/String;)Lo/bL;

    move-result-object p0

    return-object p0
.end method
