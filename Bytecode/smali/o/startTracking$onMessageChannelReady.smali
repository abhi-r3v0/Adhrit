.class public final Lo/startTracking$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/startTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# static fields
.field static ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/startTracking$onMessageChannelReady;->arg$1:Lo/CrashlyticsReport$Session$Event$Application;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/startTracking$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/startTracking$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Event$Application;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/startTracking$onMessageChannelReady;->arg$1:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application;->lambda$performBackoff$0(Lo/CrashlyticsReport$Session$Event$Application;)V

    return-void
.end method
