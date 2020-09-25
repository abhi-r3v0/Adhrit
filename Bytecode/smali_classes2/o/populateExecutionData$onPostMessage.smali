.class public Lo/populateExecutionData$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/populateExecutionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private data:Lo/LogFileManager$DirectoryProvider;

.field private success:Z


# direct methods
.method private constructor <init>(ZLo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lo/populateExecutionData$onPostMessage;->success:Z

    .line 53
    iput-object p2, p0, Lo/populateExecutionData$onPostMessage;->data:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method synthetic constructor <init>(ZLo/LogFileManager$DirectoryProvider;Lo/populateExecutionData$3;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lo/populateExecutionData$onPostMessage;-><init>(ZLo/LogFileManager$DirectoryProvider;)V

    return-void
.end method


# virtual methods
.method public getNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/populateExecutionData$onPostMessage;->data:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lo/populateExecutionData$onPostMessage;->success:Z

    return v0
.end method
