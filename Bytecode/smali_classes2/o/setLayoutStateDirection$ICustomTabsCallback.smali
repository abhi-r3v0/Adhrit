.class public final Lo/setLayoutStateDirection$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLayoutStateDirection;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/widget/ErrorView$Companion;",
        "",
        "()V",
        "ANIMATION_DURATION",
        "",
        "ERROR_DISMISS_DELAY",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setLayoutStateDirection$ICustomTabsCallback;->arg$1:Lo/getEndedAt;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/setLayoutStateDirection$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setLayoutStateDirection$ICustomTabsCallback;-><init>(Lo/getEndedAt;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/setLayoutStateDirection$ICustomTabsCallback;->arg$1:Lo/getEndedAt;

    invoke-static {v0}, Lo/getEndedAt;->lambda$disableNetwork$3(Lo/getEndedAt;)V

    return-void
.end method
