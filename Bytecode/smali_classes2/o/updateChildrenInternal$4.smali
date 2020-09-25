.class final Lo/updateChildrenInternal$4;
.super Lo/getDatabase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateChildrenInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback:Z


# instance fields
.field private synthetic onMessageChannelReady:Lo/updateChildrenInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    const-class v0, Lo/updateChildrenInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/updateChildrenInternal$4;->ICustomTabsCallback:Z

    return-void
.end method

.method constructor <init>(Lo/updateChildrenInternal;Lo/exceptionStacktrace;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lo/updateChildrenInternal$4;->onMessageChannelReady:Lo/updateChildrenInternal;

    invoke-direct {p0, p2}, Lo/getDatabase;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback()V
    .locals 1

    .line 304
    sget-boolean v0, Lo/updateChildrenInternal$4;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/updateChildrenInternal$4;->onMessageChannelReady:Lo/updateChildrenInternal;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/updateChildrenInternal$4;->onMessageChannelReady:Lo/updateChildrenInternal;

    invoke-static {v0}, Lo/updateChildrenInternal;->onTransact(Lo/updateChildrenInternal;)Z

    return-void
.end method
