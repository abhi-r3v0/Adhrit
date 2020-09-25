.class public final Lo/JusPayWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:I = 0x0

.field private static onNavigationEvent:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 130
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 137
    sget-boolean v0, Lo/JusPayWrapper;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1, p2}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 140
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 98
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 121
    sget-boolean v0, Lo/JusPayWrapper;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 122
    invoke-static {p1, p2}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    sget v0, Lo/JusPayWrapper;->ICustomTabsCallback:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 124
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
