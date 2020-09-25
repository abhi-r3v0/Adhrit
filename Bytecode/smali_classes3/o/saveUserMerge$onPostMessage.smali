.class public final Lo/saveUserMerge$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveUserMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final arg$1:Lo/FileStoreImpl;


# direct methods
.method private constructor <init>(Lo/FileStoreImpl;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveUserMerge$onPostMessage;->arg$1:Lo/FileStoreImpl;

    return-void
.end method

.method public static lambdaFactory$(Lo/FileStoreImpl;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/saveUserMerge$onPostMessage;

    invoke-direct {v0, p0}, Lo/saveUserMerge$onPostMessage;-><init>(Lo/FileStoreImpl;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/saveUserMerge$onPostMessage;->arg$1:Lo/FileStoreImpl;

    invoke-virtual {v0}, Lo/FileStoreImpl;->getDefault()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    return-object v0
.end method
