.class public abstract Lo/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCurrentTimeMillis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCurrentTimeMillis<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private left:Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final right:Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 33
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    if-nez p4, :cond_1

    .line 34
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    return-void
.end method

.method private colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-static {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->oppositeColor(Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis$onMessageChannelReady;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object v10

    .line 247
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-static {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->oppositeColor(Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis$onMessageChannelReady;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object v11

    .line 249
    invoke-static {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->oppositeColor(Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis$onMessageChannelReady;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method private fixUp()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateLeft()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 224
    :goto_0
    iget-object v1, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    check-cast v1, Lo/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, v1, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateRight()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 227
    :cond_1
    iget-object v1, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private moveRedLeft()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v1

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v1

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {v1}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateRight()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 204
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateLeft()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 205
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private moveRedRight()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v1

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v1

    invoke-interface {v1}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateRight()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 214
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->colorFlip()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static oppositeColor(Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis$onMessageChannelReady;
    .locals 0

    .line 22
    invoke-interface {p0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object p0

    :cond_0
    sget-object p0, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object p0
.end method

.method private removeMin()Lo/getCurrentTimeMillis;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->moveRedLeft()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 195
    :goto_0
    iget-object v1, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    check-cast v1, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {v1}, Lo/CrashlyticsUncaughtExceptionHandler;->removeMin()Lo/getCurrentTimeMillis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 196
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->fixUp()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method private rotateLeft()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 234
    sget-object v3, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    iget-object v5, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 235
    invoke-virtual/range {v0 .. v5}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v10

    .line 236
    iget-object v6, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getColor()Lo/getCurrentTimeMillis$onMessageChannelReady;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    return-object v0
.end method

.method private rotateRight()Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    .line 240
    sget-object v3, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    iget-object v4, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 241
    invoke-virtual/range {v0 .. v5}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v11

    .line 242
    iget-object v6, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->getColor()Lo/getCurrentTimeMillis$onMessageChannelReady;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v6 .. v11}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lo/getCurrentTimeMillis$onMessageChannelReady;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    .line 66
    iget-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    :cond_1
    if-nez p4, :cond_2

    .line 67
    iget-object p4, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    :cond_2
    if-nez p5, :cond_3

    .line 68
    iget-object p5, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    .line 69
    :cond_3
    sget-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    if-ne p3, v0, :cond_4

    .line 70
    new-instance p3, Lo/CurrentTimeProvider;

    invoke-direct {p3, p1, p2, p4, p5}, Lo/CurrentTimeProvider;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object p3

    .line 72
    :cond_4
    new-instance p3, Lo/populateBinaryImagesList;

    invoke-direct {p3, p1, p2, p4, p5}, Lo/populateBinaryImagesList;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object p3
.end method

.method protected abstract copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;
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
.end method

.method public bridge synthetic copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;
    .locals 0

    .line 19
    invoke-virtual/range {p0 .. p5}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getColor()Lo/getCurrentTimeMillis$onMessageChannelReady;
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLeft()Lo/getCurrentTimeMillis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    return-object v0
.end method

.method public getMax()Lo/getCurrentTimeMillis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 150
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getMax()Lo/getCurrentTimeMillis;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Lo/getCurrentTimeMillis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 141
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getMin()Lo/getCurrentTimeMillis;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Lo/getCurrentTimeMillis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    .line 157
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lo/getCurrentTimeMillis$ICustomTabsCallback;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1, p2, p3}, Lo/getCurrentTimeMillis;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 83
    invoke-virtual {p0, v1, v1, p1, v1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0, p1, p2, v1, v1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1, p2, p3}, Lo/getCurrentTimeMillis;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 90
    invoke-virtual {p0, v1, v1, v1, p1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    .line 92
    :goto_0
    invoke-direct {p1}, Lo/CrashlyticsUncaughtExceptionHandler;->fixUp()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    iget-object v0, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->moveRedLeft()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 103
    :goto_0
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v2, p1, p2}, Lo/getCurrentTimeMillis;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1, v1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    goto :goto_2

    .line 105
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lo/CrashlyticsUncaughtExceptionHandler;->rotateRight()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 109
    :goto_1
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    check-cast v2, Lo/CrashlyticsUncaughtExceptionHandler;

    iget-object v2, v2, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->isRed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    invoke-direct {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->moveRedRight()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 113
    :cond_3
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    .line 114
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object p1

    return-object p1

    .line 117
    :cond_4
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->getMin()Lo/getCurrentTimeMillis;

    move-result-object v2

    .line 120
    invoke-interface {v2}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 121
    invoke-interface {v2}, Lo/getCurrentTimeMillis;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    check-cast v4, Lo/CrashlyticsUncaughtExceptionHandler;

    .line 123
    invoke-direct {v4}, Lo/CrashlyticsUncaughtExceptionHandler;->removeMin()Lo/getCurrentTimeMillis;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v3, v2, v1, v4}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object v0

    .line 126
    :cond_5
    iget-object v2, v0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v2, p1, p2}, Lo/getCurrentTimeMillis;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object p1

    invoke-virtual {v0, v1, v1, v1, p1}, Lo/CrashlyticsUncaughtExceptionHandler;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    .line 128
    :goto_2
    invoke-direct {p1}, Lo/CrashlyticsUncaughtExceptionHandler;->fixUp()Lo/CrashlyticsUncaughtExceptionHandler;

    move-result-object p1

    return-object p1
.end method

.method setLeft(Lo/getCurrentTimeMillis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    return-void
.end method

.method public shortCircuitingInOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->shortCircuitingInOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lo/getCurrentTimeMillis$onPostMessage;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->shortCircuitingInOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shortCircuitingReverseOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->right:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->shortCircuitingReverseOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->key:Ljava/lang/Object;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lo/getCurrentTimeMillis$onPostMessage;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler;->left:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->shortCircuitingReverseOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
