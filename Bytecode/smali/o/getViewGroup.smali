.class public final Lo/getViewGroup;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getViewGroup$onPostMessage;,
        Lo/getViewGroup$onNavigationEvent;,
        Lo/getViewGroup$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:I

.field private final onNavigationEvent:Landroid/content/Context;

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/getViewGroup$onNavigationEvent;)V
    .locals 10

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lo/getViewGroup$onNavigationEvent;->extraCallback:Landroid/content/Context;

    iput-object v0, p0, Lo/getViewGroup;->onNavigationEvent:Landroid/content/Context;

    .line 39
    iget-object v0, p1, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    .line 1118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 1119
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    iget v0, p1, Lo/getViewGroup$onNavigationEvent;->onRelationshipValidationResult:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 41
    :cond_1
    iget v0, p1, Lo/getViewGroup$onNavigationEvent;->onRelationshipValidationResult:I

    :goto_1
    iput v0, p0, Lo/getViewGroup;->onPostMessage:I

    .line 42
    iget-object v0, p1, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    iget v1, p1, Lo/getViewGroup$onNavigationEvent;->asBinder:F

    iget v4, p1, Lo/getViewGroup$onNavigationEvent;->asInterface:F

    .line 2102
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v5

    shl-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0xa

    .line 2118
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_2

    .line 2119
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    int-to-float v5, v5

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    mul-float v5, v5, v1

    .line 2104
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 46
    iget-object v1, p1, Lo/getViewGroup$onNavigationEvent;->onMessageChannelReady:Lo/getViewGroup$ICustomTabsCallback;

    invoke-interface {v1}, Lo/getViewGroup$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result v1

    .line 47
    iget-object v4, p1, Lo/getViewGroup$onNavigationEvent;->onMessageChannelReady:Lo/getViewGroup$ICustomTabsCallback;

    invoke-interface {v4}, Lo/getViewGroup$ICustomTabsCallback;->onNavigationEvent()I

    move-result v4

    mul-int v1, v1, v4

    shl-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 50
    iget v4, p1, Lo/getViewGroup$onNavigationEvent;->onPostMessage:F

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 52
    iget v5, p1, Lo/getViewGroup$onNavigationEvent;->ICustomTabsCallback:F

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 53
    iget v5, p0, Lo/getViewGroup;->onPostMessage:I

    sub-int v5, v0, v5

    add-int v6, v1, v4

    if-gt v6, v5, :cond_4

    .line 56
    iput v1, p0, Lo/getViewGroup;->onMessageChannelReady:I

    .line 57
    iput v4, p0, Lo/getViewGroup;->ICustomTabsCallback:I

    goto :goto_3

    :cond_4
    int-to-float v1, v5

    .line 59
    iget v4, p1, Lo/getViewGroup$onNavigationEvent;->onPostMessage:F

    iget v5, p1, Lo/getViewGroup$onNavigationEvent;->ICustomTabsCallback:F

    add-float/2addr v4, v5

    div-float/2addr v1, v4

    .line 60
    iget v4, p1, Lo/getViewGroup$onNavigationEvent;->ICustomTabsCallback:F

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lo/getViewGroup;->onMessageChannelReady:I

    .line 61
    iget v4, p1, Lo/getViewGroup$onNavigationEvent;->onPostMessage:F

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lo/getViewGroup;->ICustomTabsCallback:I

    :goto_3
    const/4 v1, 0x3

    const-string v4, "MemorySizeCalculator"

    .line 64
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lo/getViewGroup;->onMessageChannelReady:I

    .line 3109
    iget-object v7, p0, Lo/getViewGroup;->onNavigationEvent:Landroid/content/Context;

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pool size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lo/getViewGroup;->ICustomTabsCallback:I

    .line 4109
    iget-object v7, p0, Lo/getViewGroup;->onNavigationEvent:Landroid/content/Context;

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", byte array size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lo/getViewGroup;->onPostMessage:I

    .line 5109
    iget-object v7, p0, Lo/getViewGroup;->onNavigationEvent:Landroid/content/Context;

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", memory class limited? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v6, v0, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", max size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6109
    iget-object v5, p0, Lo/getViewGroup;->onNavigationEvent:Landroid/content/Context;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memoryClass: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLowMemoryDevice: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    .line 6118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_6

    .line 6119
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    .line 81
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
