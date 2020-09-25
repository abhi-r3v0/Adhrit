.class public final Lo/disk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/a$a;


# static fields
.field public static final extraCallback:Ljava/util/logging/Logger;


# instance fields
.field public final ICustomTabsCallback:Lo/ai;

.field private final asBinder:Ljava/util/concurrent/Executor;

.field public final onMessageChannelReady:Lo/b$e;

.field public final onNavigationEvent:Lo/ah;

.field public final onPostMessage:Lo/getUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lo/OaidClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/disk;->extraCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/getUrl;Lo/ai;Lo/ah;Lo/b$e;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/disk;->asBinder:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p2, p0, Lo/disk;->onPostMessage:Lo/getUrl;

    .line 52
    iput-object p3, p0, Lo/disk;->ICustomTabsCallback:Lo/ai;

    .line 53
    iput-object p4, p0, Lo/disk;->onNavigationEvent:Lo/ah;

    .line 54
    iput-object p5, p0, Lo/disk;->onMessageChannelReady:Lo/b$e;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/OaidClient$Info;Lo/Foreground$4$4;Lo/AppsFlyerTrackingRequestListener;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/disk;->asBinder:Ljava/util/concurrent/Executor;

    .line 1000
    new-instance v1, Lo/completeWakefulIntent$onMessageChannelReady;

    invoke-direct {v1, p0, p1, p3, p2}, Lo/completeWakefulIntent$onMessageChannelReady;-><init>(Lo/disk;Lo/OaidClient$Info;Lo/AppsFlyerTrackingRequestListener;Lo/Foreground$4$4;)V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
