.class public final Lo/putInternal;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/putInternal$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onTransact:Lo/putInternal$onMessageChannelReady;


# instance fields
.field public ICustomTabsCallback:J

.field final ICustomTabsCallback$Stub:Lo/listen;

.field public asBinder:J

.field volatile asInterface:J

.field extraCallback:J

.field public onMessageChannelReady:J

.field public final onNavigationEvent:Lo/sendUnauth;

.field onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lo/putInternal$onMessageChannelReady;

    sget-object v1, Lo/sendUnauth;->onPostMessage:Lo/sendUnauth;

    invoke-direct {v0, v1}, Lo/putInternal$onMessageChannelReady;-><init>(Lo/sendUnauth;)V

    sput-object v0, Lo/putInternal;->onTransact:Lo/putInternal$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {}, Lo/shouldReconnect;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Lo/shouldReconnect;

    invoke-direct {v0}, Lo/shouldReconnect;-><init>()V

    goto :goto_0

    .line 1031
    :cond_0
    new-instance v0, Lo/addMerge$onNavigationEvent;

    invoke-direct {v0}, Lo/addMerge$onNavigationEvent;-><init>()V

    .line 44
    :goto_0
    iput-object v0, p0, Lo/putInternal;->ICustomTabsCallback$Stub:Lo/listen;

    .line 48
    sget-object v0, Lo/sendUnauth;->onPostMessage:Lo/sendUnauth;

    iput-object v0, p0, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    return-void
.end method

.method private constructor <init>(Lo/sendUnauth;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    invoke-static {}, Lo/shouldReconnect;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    new-instance v0, Lo/shouldReconnect;

    invoke-direct {v0}, Lo/shouldReconnect;-><init>()V

    goto :goto_0

    .line 2031
    :cond_0
    new-instance v0, Lo/addMerge$onNavigationEvent;

    invoke-direct {v0}, Lo/addMerge$onNavigationEvent;-><init>()V

    .line 44
    :goto_0
    iput-object v0, p0, Lo/putInternal;->ICustomTabsCallback$Stub:Lo/listen;

    .line 52
    iput-object p1, p0, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    return-void
.end method

.method public synthetic constructor <init>(Lo/sendUnauth;B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/putInternal;-><init>(Lo/sendUnauth;)V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/putInternal$onMessageChannelReady;
    .locals 1

    .line 173
    sget-object v0, Lo/putInternal;->onTransact:Lo/putInternal$onMessageChannelReady;

    return-object v0
.end method
