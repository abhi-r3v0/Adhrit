.class public final Lo/isBound$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/PitDrawable$Companion;",
        "",
        "()V",
        "BOTTOM",
        "",
        "LEFT",
        "LEFT_RIGHT",
        "NO_CLIP",
        "RIGHT",
        "TOP",
        "TOP_BOTTOM",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Landroid/app/Activity;

.field private final arg$2:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isBound$ICustomTabsCallback;->arg$1:Landroid/app/Activity;

    iput-object p2, p0, Lo/isBound$ICustomTabsCallback;->arg$2:Ljava/lang/Runnable;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/isBound$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/isBound$ICustomTabsCallback;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/isBound$ICustomTabsCallback;->arg$1:Landroid/app/Activity;

    iget-object v1, p0, Lo/isBound$ICustomTabsCallback;->arg$2:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->lambda$onActivityStopCallOnce$0(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
