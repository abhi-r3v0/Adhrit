.class public final Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$OnChildAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/BankBalanceAdapter$Companion;",
        "",
        "()V",
        "TRACK_BANK_ACCOUNT",
        "",
        "TRACK_BANK_ACCOUNT_BANNER",
        "TRACK_BANK_ADD",
        "TRACK_FAQ",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final arg$2:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;

.field private final arg$3:Lo/getClsId;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p2, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$2:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;

    iput-object p3, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$3:Lo/getClsId;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;

    invoke-direct {v0, p0, p1, p2}, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v1, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$2:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;

    iget-object v2, p0, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->arg$3:Lo/getClsId;

    invoke-static {v0, v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->lambda$runTransaction$0(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
