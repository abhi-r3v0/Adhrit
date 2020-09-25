.class public final Lo/setTranslateX;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/setScaleX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lo/getTranslateX;->extraCallback()Lo/getTranslateX;

    move-result-object v0

    sput-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 187
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 10493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    .line 11489
    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 5042
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p3, v0, p2

    aput-object p4, v0, v1

    const/4 p2, 0x0

    .line 5489
    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6084
    sget-object p2, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {p2, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6085
    sget-object p2, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 6493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 6085
    invoke-interface {p2, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 109
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 7493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    const/4 p2, 0x0

    .line 8489
    invoke-static {p2, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 369
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 12493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 13489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 14042
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 14489
    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 15387
    sget-object p3, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {p3, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 15388
    sget-object p3, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 15493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 15388
    invoke-interface {p3, p0, p2, p1}, Lo/setScaleX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 357
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x0

    .line 12489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(I)Z
    .locals 1

    .line 42
    sget-object p0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result p0

    return p0
.end method

.method public static extraCallback(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 17493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs extraCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 417
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 18493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 19489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 441
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {v0, p0, p1}, Lo/setScaleX;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 236
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {v0, p0, p1, p2}, Lo/setScaleX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 115
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x0

    .line 9489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 1493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 435
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 20493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-interface {v0, p0, p1, p2}, Lo/setScaleX;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 453
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x0

    .line 21489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 387
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 16493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-interface {v0, p0, p1, p2}, Lo/setScaleX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 127
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 9493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 10489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs onNavigationEvent(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 423
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 19493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 20489
    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 424
    invoke-interface {v0, p0, p2, p1}, Lo/setScaleX;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 393
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 429
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {v0, p0, p1, p2}, Lo/setScaleX;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 351
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 11493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 90
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 2493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    .line 3489
    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 96
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 3493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    .line 4489
    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 483
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    .line 21493
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 484
    invoke-interface {v0, p0, p1, p2}, Lo/setScaleX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 151
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs onPostMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 405
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lo/setScaleX;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lo/setTranslateX;->onMessageChannelReady:Lo/setScaleX;

    const/4 v1, 0x0

    .line 18489
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-interface {v0, p0, p1}, Lo/setScaleX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
