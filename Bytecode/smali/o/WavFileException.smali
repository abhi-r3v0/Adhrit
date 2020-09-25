.class public final Lo/WavFileException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private extraCallback:[J

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 31
    invoke-direct {p0, v0}, Lo/WavFileException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array p1, p1, [J

    iput-object p1, p0, Lo/WavFileException;->extraCallback:[J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()[J
    .locals 2

    .line 81
    iget-object v0, p0, Lo/WavFileException;->extraCallback:[J

    iget v1, p0, Lo/WavFileException;->onPostMessage:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(J)V
    .locals 3

    .line 47
    iget v0, p0, Lo/WavFileException;->onPostMessage:I

    iget-object v1, p0, Lo/WavFileException;->extraCallback:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    .line 48
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lo/WavFileException;->extraCallback:[J

    .line 50
    :cond_0
    iget-object v0, p0, Lo/WavFileException;->extraCallback:[J

    iget v1, p0, Lo/WavFileException;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/WavFileException;->onPostMessage:I

    aput-wide p1, v0, v1

    return-void
.end method
