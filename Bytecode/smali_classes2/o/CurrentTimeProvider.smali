.class public final Lo/CurrentTimeProvider;
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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object v0

    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lo/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-void
.end method

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

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lo/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

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

    .line 46
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 47
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    .line 48
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    .line 49
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p4

    .line 50
    :cond_3
    new-instance v0, Lo/CurrentTimeProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/CurrentTimeProvider;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object v0
.end method

.method protected final getColor()Lo/getCurrentTimeMillis$onMessageChannelReady;
    .locals 1

    .line 31
    sget-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object v0
.end method

.method public final isRed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 2

    .line 41
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

    return v0
.end method
