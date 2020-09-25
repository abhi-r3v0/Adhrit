.class public final Lo/component17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static ICustomTabsCallback:Ljava/lang/Boolean;

.field private static extraCallback:Ljava/lang/Boolean;

.field public static onPostMessage:Ljava/lang/Boolean;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final arg$2:Lo/insert;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/component17;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iput-object p2, p0, Lo/component17;->arg$2:Lo/insert;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lo/component17;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/component17;

    invoke-direct {v0, p0, p1}, Lo/component17;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-object v0
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Z
    .locals 4

    .line 26
    sget-object v0, Lo/component17;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo/component17;->ICustomTabsCallback:Ljava/lang/Boolean;

    .line 30
    :cond_2
    sget-object p0, Lo/component17;->ICustomTabsCallback:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static onPostMessage(Landroid/content/pm/PackageManager;)Z
    .locals 4

    .line 16
    sget-object v0, Lo/component17;->extraCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "android.hardware.type.watch"

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo/component17;->extraCallback:Ljava/lang/Boolean;

    .line 20
    :cond_2
    sget-object p0, Lo/component17;->extraCallback:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/component17;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iget-object v1, p0, Lo/component17;->arg$2:Lo/insert;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$resetChannel$4(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-void
.end method
