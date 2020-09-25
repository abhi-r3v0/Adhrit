.class public final Lo/saveUserOverwrite$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveUserOverwrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final arg$1:Lo/copyFromUtf8;

.field private final arg$2:Lo/ByteString;


# direct methods
.method private constructor <init>(Lo/copyFromUtf8;Lo/ByteString;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveUserOverwrite$onPostMessage;->arg$1:Lo/copyFromUtf8;

    iput-object p2, p0, Lo/saveUserOverwrite$onPostMessage;->arg$2:Lo/ByteString;

    return-void
.end method

.method public static lambdaFactory$(Lo/copyFromUtf8;Lo/ByteString;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/saveUserOverwrite$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/saveUserOverwrite$onPostMessage;-><init>(Lo/copyFromUtf8;Lo/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/saveUserOverwrite$onPostMessage;->arg$1:Lo/copyFromUtf8;

    iget-object v1, p0, Lo/saveUserOverwrite$onPostMessage;->arg$2:Lo/ByteString;

    invoke-static {v0, v1}, Lo/copyFromUtf8;->lambda$put$0(Lo/copyFromUtf8;Lo/ByteString;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
