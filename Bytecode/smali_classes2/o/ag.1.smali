.class public final Lo/ag;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/ai;

.field public final extraCallback:Lo/b$e;

.field public final onNavigationEvent:Ljava/util/concurrent/Executor;

.field public final onPostMessage:Lo/ah;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lo/ah;Lo/ai;Lo/b$e;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ag;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p2, p0, Lo/ag;->onPostMessage:Lo/ah;

    .line 47
    iput-object p3, p0, Lo/ag;->ICustomTabsCallback:Lo/ai;

    .line 48
    iput-object p4, p0, Lo/ag;->extraCallback:Lo/b$e;

    return-void
.end method
