.class final Lo/onInflate$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MissingNativeComponent$1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onInflate;->onPostMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/MissingNativeComponent$1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "task",
        "Lcom/google/android/play/core/tasks/Task;",
        "Ljava/lang/Void;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:J

.field private synthetic onMessageChannelReady:Z

.field private synthetic onPostMessage:Lo/onInflate;


# direct methods
.method constructor <init>(Lo/onInflate;ZJ)V
    .locals 0

    iput-object p1, p0, Lo/onInflate$onNavigationEvent;->onPostMessage:Lo/onInflate;

    iput-boolean p2, p0, Lo/onInflate$onNavigationEvent;->onMessageChannelReady:Z

    iput-wide p3, p0, Lo/onInflate$onNavigationEvent;->extraCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getMinidumpFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinidumpFile<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/onInflate$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lo/onInflate$onNavigationEvent;->onPostMessage:Lo/onInflate;

    .line 1060
    iget-object v0, v0, Lo/onInflate;->ICustomTabsCallback:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "com.dreamplug.androidapp"

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_success"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/onInflate$onNavigationEvent;->extraCallback:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "duration"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 49
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "store_inapp_rating_response"

    .line 49
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const-string v0, "rating_status"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
