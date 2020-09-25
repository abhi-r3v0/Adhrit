.class public final Lo/saveUserOverwrite$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveUserOverwrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final arg$1:Lo/copyFromUtf8;

.field private final arg$2:Z

.field private final arg$3:Lo/ByteString;


# direct methods
.method private constructor <init>(Lo/copyFromUtf8;ZLo/ByteString;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$1:Lo/copyFromUtf8;

    iput-boolean p2, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$2:Z

    iput-object p3, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$3:Lo/ByteString;

    return-void
.end method

.method public static lambdaFactory$(Lo/copyFromUtf8;ZLo/ByteString;)Lo/getPersistenceKey;
    .locals 1

    .line 3000
    new-instance v0, Lo/saveUserOverwrite$onMessageChannelReady;

    invoke-direct {v0, p0, p1, p2}, Lo/saveUserOverwrite$onMessageChannelReady;-><init>(Lo/copyFromUtf8;ZLo/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$1:Lo/copyFromUtf8;

    iget-boolean v1, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$2:Z

    iget-object v2, p0, Lo/saveUserOverwrite$onMessageChannelReady;->arg$3:Lo/ByteString;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lo/copyFromUtf8;->lambda$put$1(Lo/copyFromUtf8;ZLo/ByteString;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
