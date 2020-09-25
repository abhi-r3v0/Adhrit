.class public final Lo/saveUserOverwrite$extraCallback;
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
    name = "extraCallback"
.end annotation


# instance fields
.field private final arg$1:Lo/asReadOnlyByteBuffer;


# direct methods
.method private constructor <init>(Lo/asReadOnlyByteBuffer;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveUserOverwrite$extraCallback;->arg$1:Lo/asReadOnlyByteBuffer;

    return-void
.end method

.method public static lambdaFactory$(Lo/asReadOnlyByteBuffer;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/saveUserOverwrite$extraCallback;

    invoke-direct {v0, p0}, Lo/saveUserOverwrite$extraCallback;-><init>(Lo/asReadOnlyByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/saveUserOverwrite$extraCallback;->arg$1:Lo/asReadOnlyByteBuffer;

    invoke-virtual {v0}, Lo/asReadOnlyByteBuffer;->saveLegacyConfigsIfNecessary()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
