.class public Lo/getExecution$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final documentsRemoved:I

.field private final hasRun:Z

.field private final sequenceNumbersCollected:I

.field private final targetsRemoved:I


# direct methods
.method constructor <init>(ZIII)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean p1, p0, Lo/getExecution$ICustomTabsCallback;->hasRun:Z

    .line 88
    iput p2, p0, Lo/getExecution$ICustomTabsCallback;->sequenceNumbersCollected:I

    .line 89
    iput p3, p0, Lo/getExecution$ICustomTabsCallback;->targetsRemoved:I

    .line 90
    iput p4, p0, Lo/getExecution$ICustomTabsCallback;->documentsRemoved:I

    return-void
.end method

.method static DidNotRun()Lo/getExecution$ICustomTabsCallback;
    .locals 2

    .line 82
    new-instance v0, Lo/getExecution$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lo/getExecution$ICustomTabsCallback;-><init>(ZIII)V

    return-object v0
.end method


# virtual methods
.method public getDocumentsRemoved()I
    .locals 1

    .line 106
    iget v0, p0, Lo/getExecution$ICustomTabsCallback;->documentsRemoved:I

    return v0
.end method

.method public getSequenceNumbersCollected()I
    .locals 1

    .line 98
    iget v0, p0, Lo/getExecution$ICustomTabsCallback;->sequenceNumbersCollected:I

    return v0
.end method

.method public getTargetsRemoved()I
    .locals 1

    .line 102
    iget v0, p0, Lo/getExecution$ICustomTabsCallback;->targetsRemoved:I

    return v0
.end method

.method public hasRun()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lo/getExecution$ICustomTabsCallback;->hasRun:Z

    return v0
.end method
