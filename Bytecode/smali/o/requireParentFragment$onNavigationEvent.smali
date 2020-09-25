.class final Lo/requireParentFragment$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requireParentFragment;->extraCallback(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lo/requireParentFragment$onNavigationEvent;->onPostMessage:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 35
    sget-object v0, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    invoke-static {}, Lo/requireParentFragment;->onPostMessage()V

    .line 37
    iget-object v0, p0, Lo/requireParentFragment$onNavigationEvent;->onPostMessage:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    invoke-static {}, Lo/requireParentFragment;->extraCallback()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    iget-object v1, p0, Lo/requireParentFragment$onNavigationEvent;->onPostMessage:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetch(J)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    invoke-static {}, Lo/requireParentFragment;->extraCallback()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetch()Lcom/google/android/gms/tasks/Task;

    .line 42
    :goto_0
    sget-object v0, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    invoke-static {}, Lo/requireParentFragment;->extraCallback()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->activate()Lcom/google/android/gms/tasks/Task;

    return-void
.end method
