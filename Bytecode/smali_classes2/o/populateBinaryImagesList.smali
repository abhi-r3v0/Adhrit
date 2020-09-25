.class public final Lo/populateBinaryImagesList;
.super Lo/CrashlyticsUncaughtExceptionHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CrashlyticsUncaughtExceptionHandler<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lo/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lo/populateBinaryImagesList;->size:I

    return-void
.end method


# virtual methods
.method protected final copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 64
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    .line 65
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    .line 66
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p4

    .line 67
    :cond_3
    new-instance v0, Lo/populateBinaryImagesList;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/populateBinaryImagesList;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object v0
.end method

.method protected final getColor()Lo/getCurrentTimeMillis$onMessageChannelReady;
    .locals 1

    .line 36
    sget-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object v0
.end method

.method public final isRed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final setLeft(Lo/getCurrentTimeMillis;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 54
    iget v0, p0, Lo/populateBinaryImagesList;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-super {p0, p1}, Lo/CrashlyticsUncaughtExceptionHandler;->setLeft(Lo/getCurrentTimeMillis;)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set left after using size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 2

    .line 46
    iget v0, p0, Lo/populateBinaryImagesList;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v1

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/populateBinaryImagesList;->size:I

    .line 49
    :cond_0
    iget v0, p0, Lo/populateBinaryImagesList;->size:I

    return v0
.end method
