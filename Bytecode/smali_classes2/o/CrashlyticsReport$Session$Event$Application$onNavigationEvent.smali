.class Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final initialCloseCount:J

.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application;J)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p2, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->initialCloseCount:J

    return-void
.end method


# virtual methods
.method run(Ljava/lang/Runnable;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application;->access$000(Lo/CrashlyticsReport$Session$Event$Application;)Lo/CrashlyticsReport$Type;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 66
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application;->access$100(Lo/CrashlyticsReport$Session$Event$Application;)J

    move-result-wide v0

    iget-wide v2, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->initialCloseCount:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stream callback skipped by CloseGuardedRunner."

    .line 69
    invoke-static {p1, v1, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
