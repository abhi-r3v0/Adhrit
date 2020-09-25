.class final Lo/getPrevName$1;
.super Lo/getOldIndexedNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrevName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic extraCallback:Z


# instance fields
.field private synthetic onPostMessage:Lo/getPrevName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    const-class v0, Lo/getPrevName;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getPrevName$1;->extraCallback:Z

    return-void
.end method

.method constructor <init>(Lo/getPrevName;Lo/exceptionStacktrace;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lo/getPrevName$1;->onPostMessage:Lo/getPrevName;

    invoke-direct {p0, p2}, Lo/getOldIndexedNode;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method protected final onPostMessage()V
    .locals 2

    .line 318
    sget-boolean v0, Lo/getPrevName$1;->extraCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getPrevName$1;->onPostMessage:Lo/getPrevName;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getPrevName$1;->onPostMessage:Lo/getPrevName;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/getPrevName;->asInterface:Z

    return-void
.end method
