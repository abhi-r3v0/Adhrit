.class public final Lo/LocalTestingException$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LocalTestingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LocalTestingException$onPostMessage;->arg$1:Ljava/lang/Runnable;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/LocalTestingException$onPostMessage;

    invoke-direct {v0, p0}, Lo/LocalTestingException$onPostMessage;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/LocalTestingException$onPostMessage;->arg$1:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/CrashlyticsReport$Type;->lambda$enqueue$2(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
