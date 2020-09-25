.class final Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;,
        Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyTranslator:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private leaf:Lo/CrashlyticsUncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private root:Lo/CrashlyticsUncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keys:Ljava/util/List;

    .line 294
    iput-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->values:Ljava/util/Map;

    .line 295
    iput-object p3, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keyTranslator:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    return-void
.end method

.method private buildBalancedTree(II)Lo/getCurrentTimeMillis;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/getCurrentTimeMillis<",
            "TA;TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 304
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 306
    iget-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 307
    new-instance p2, Lo/populateBinaryImagesList;

    invoke-direct {p0, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v1}, Lo/populateBinaryImagesList;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object p2

    .line 309
    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int v0, p1, p2

    .line 311
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildBalancedTree(II)Lo/getCurrentTimeMillis;

    move-result-object p1

    add-int/lit8 v1, v0, 0x1

    .line 312
    invoke-direct {p0, v1, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildBalancedTree(II)Lo/getCurrentTimeMillis;

    move-result-object p2

    .line 313
    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    new-instance v1, Lo/populateBinaryImagesList;

    invoke-direct {p0, v0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p2}, Lo/populateBinaryImagesList;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    return-object v1
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener<",
            "TA;TC;>;"
        }
    .end annotation

    .line 341
    new-instance v0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;

    invoke-direct {v0, p0, p1, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;-><init>(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;)V

    .line 342
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    new-instance p1, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;-><init>(I)V

    invoke-virtual {p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 345
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 346
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;

    .line 347
    iget v1, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    sub-int/2addr p0, v1

    .line 348
    iget-boolean v1, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->isOne:Z

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    iget p2, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    invoke-direct {v0, v1, p2, p0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildPennant(Lo/getCurrentTimeMillis$onMessageChannelReady;II)V

    goto :goto_0

    .line 351
    :cond_0
    sget-object v1, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    iget v2, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    invoke-direct {v0, v1, v2, p0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildPennant(Lo/getCurrentTimeMillis$onMessageChannelReady;II)V

    .line 352
    iget v1, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    sub-int/2addr p0, v1

    .line 353
    sget-object v1, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    iget p2, p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    invoke-direct {v0, v1, p2, p0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildPennant(Lo/getCurrentTimeMillis$onMessageChannelReady;II)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    .line 357
    iget-object p1, v0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->root:Lo/CrashlyticsUncaughtExceptionHandler;

    if-nez p1, :cond_2

    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object p1

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;-><init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$2;)V

    return-object p0
.end method

.method private buildPennant(Lo/getCurrentTimeMillis$onMessageChannelReady;II)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p2, p2, -0x1

    .line 319
    invoke-direct {p0, v0, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildBalancedTree(II)Lo/getCurrentTimeMillis;

    move-result-object p2

    .line 320
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keys:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 322
    sget-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 323
    new-instance p1, Lo/CurrentTimeProvider;

    invoke-direct {p0, p3}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lo/CurrentTimeProvider;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Lo/populateBinaryImagesList;

    invoke-direct {p0, p3}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lo/populateBinaryImagesList;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)V

    .line 327
    :goto_0
    iget-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->root:Lo/CrashlyticsUncaughtExceptionHandler;

    if-nez p2, :cond_1

    .line 328
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->root:Lo/CrashlyticsUncaughtExceptionHandler;

    .line 329
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->leaf:Lo/CrashlyticsUncaughtExceptionHandler;

    return-void

    .line 331
    :cond_1
    iget-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->leaf:Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {p2, p1}, Lo/CrashlyticsUncaughtExceptionHandler;->setLeft(Lo/getCurrentTimeMillis;)V

    .line 332
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->leaf:Lo/CrashlyticsUncaughtExceptionHandler;

    return-void
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->values:Ljava/util/Map;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->keyTranslator:Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    invoke-interface {v1, p1}, Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
