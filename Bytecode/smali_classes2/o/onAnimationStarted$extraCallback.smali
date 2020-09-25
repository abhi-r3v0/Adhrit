.class public final Lo/onAnimationStarted$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAnimationStarted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$Companion;",
        "",
        "()V",
        "RC_TEMPLATE_1",
        "",
        "RC_TEMPLATE_2",
        "RC_TEMPLATE_3",
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
.field private final synthetic zza:Lo/removeBackgroundStateChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1001
    iput-object p2, p0, Lo/onAnimationStarted$extraCallback;->zza:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lo/onAnimationStarted$extraCallback;->zza:Lo/removeBackgroundStateChangeListener;

    .line 1011
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 1003
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    return-void
.end method
