.class public final Lo/getViewGroup$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static onTransact:I


# instance fields
.field ICustomTabsCallback:F

.field asBinder:F

.field asInterface:F

.field final extraCallback:Landroid/content/Context;

.field onMessageChannelReady:Lo/getViewGroup$ICustomTabsCallback;

.field onNavigationEvent:Landroid/app/ActivityManager;

.field onPostMessage:F

.field onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lo/getViewGroup$onNavigationEvent;->onTransact:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 153
    iput v0, p0, Lo/getViewGroup$onNavigationEvent;->ICustomTabsCallback:F

    .line 154
    sget v0, Lo/getViewGroup$onNavigationEvent;->onTransact:I

    int-to-float v0, v0

    iput v0, p0, Lo/getViewGroup$onNavigationEvent;->onPostMessage:F

    const v0, 0x3ecccccd    # 0.4f

    .line 155
    iput v0, p0, Lo/getViewGroup$onNavigationEvent;->asBinder:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 156
    iput v0, p0, Lo/getViewGroup$onNavigationEvent;->asInterface:F

    const/high16 v0, 0x400000

    .line 157
    iput v0, p0, Lo/getViewGroup$onNavigationEvent;->onRelationshipValidationResult:I

    .line 160
    iput-object p1, p0, Lo/getViewGroup$onNavigationEvent;->extraCallback:Landroid/content/Context;

    const-string v0, "activity"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    .line 162
    new-instance v0, Lo/getViewGroup$onPostMessage;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/getViewGroup$onPostMessage;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lo/getViewGroup$onNavigationEvent;->onMessageChannelReady:Lo/getViewGroup$ICustomTabsCallback;

    .line 169
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lo/getViewGroup$onNavigationEvent;->onNavigationEvent:Landroid/app/ActivityManager;

    .line 1118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Lo/getViewGroup$onNavigationEvent;->onPostMessage:F

    :cond_1
    return-void
.end method
