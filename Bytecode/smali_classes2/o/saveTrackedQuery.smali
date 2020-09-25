.class public final Lo/saveTrackedQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveTrackedQuery$onMessageChannelReady;,
        Lo/saveTrackedQuery$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/toByteArray;

.field private final arg$2:J


# direct methods
.method private constructor <init>(Lo/toByteArray;J)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveTrackedQuery;->arg$1:Lo/toByteArray;

    iput-wide p2, p0, Lo/saveTrackedQuery;->arg$2:J

    return-void
.end method

.method public static lambdaFactory$(Lo/toByteArray;J)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/saveTrackedQuery;

    invoke-direct {v0, p0, p1, p2}, Lo/saveTrackedQuery;-><init>(Lo/toByteArray;J)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/saveTrackedQuery;->arg$1:Lo/toByteArray;

    iget-wide v1, p0, Lo/saveTrackedQuery;->arg$2:J

    invoke-static {v0, v1, v2, p1}, Lo/toByteArray;->lambda$fetch$0(Lo/toByteArray;JLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
