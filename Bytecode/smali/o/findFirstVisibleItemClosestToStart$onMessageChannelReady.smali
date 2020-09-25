.class public final Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findFirstVisibleItemClosestToStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0014\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u000cR\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/widget/CircularSeeker$Companion;",
        "",
        "()V",
        "ADJUST_ANGLE_STROKE_CAP",
        "",
        "DEFAULT_ANIMATION_DURATION",
        "",
        "DEFAULT_CIRCLE_COLOR",
        "",
        "DEFAULT_CIRCLE_FILL_COLOR",
        "DEFAULT_CIRCLE_PROGRESS_COLOR",
        "getDEFAULT_CIRCLE_PROGRESS_COLOR",
        "()I",
        "DEFAULT_CIRCLE_STROKE_WIDTH",
        "DEFAULT_CIRCLE_STYLE",
        "DEFAULT_CIRCLE_X_RADIUS",
        "DEFAULT_CIRCLE_Y_RADIUS",
        "DEFAULT_CS_HIDE_PROGRESS_WHEN_EMPTY",
        "",
        "DEFAULT_DISABLE_POINTER",
        "DEFAULT_END_ANGLE",
        "DEFAULT_INNER_CIRCLE_STYLE",
        "DEFAULT_LOCK_ENABLED",
        "DEFAULT_MAINTAIN_EQUAL_CIRCLE",
        "DEFAULT_MAX",
        "DEFAULT_MOVE_INSIDE_CIRCLE",
        "DEFAULT_MOVE_OUTSIDE_CIRCLE",
        "DEFAULT_NEGATIVE_ENABLED",
        "DEFAULT_POINTER_ANGLE",
        "DEFAULT_POINTER_COLOR",
        "getDEFAULT_POINTER_COLOR",
        "DEFAULT_POINTER_STROKE_WIDTH",
        "DEFAULT_PROGRESS",
        "DEFAULT_START_ANGLE",
        "DEFAULT_USE_CUSTOM_RADII",
        "MIN_TOUCH_TARGET_DP",
        "POSITIONS",
        "",
        "getPOSITIONS",
        "()[F",
        "SMALL_DEGREE_BIAS",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;->arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;-><init>(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;->arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$new$1(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-void
.end method
