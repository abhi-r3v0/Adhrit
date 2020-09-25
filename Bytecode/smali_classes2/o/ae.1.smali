.class public final Lo/ae;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field public final asInterface:Lo/b;

.field public final extraCallback:Lo/getUrl;

.field public final onMessageChannelReady:Landroid/content/Context;

.field public final onNavigationEvent:Lo/ai;

.field public final onPostMessage:Lo/ah;

.field public final onRelationshipValidationResult:Lo/b$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/getUrl;Lo/ah;Lo/ai;Ljava/util/concurrent/Executor;Lo/b$e;Lo/b;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/ae;->onMessageChannelReady:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lo/ae;->extraCallback:Lo/getUrl;

    .line 62
    iput-object p3, p0, Lo/ae;->onPostMessage:Lo/ah;

    .line 63
    iput-object p4, p0, Lo/ae;->onNavigationEvent:Lo/ai;

    .line 64
    iput-object p5, p0, Lo/ae;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p6, p0, Lo/ae;->onRelationshipValidationResult:Lo/b$e;

    .line 66
    iput-object p7, p0, Lo/ae;->asInterface:Lo/b;

    return-void
.end method
