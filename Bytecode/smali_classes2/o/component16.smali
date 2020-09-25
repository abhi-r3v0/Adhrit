.class public final Lo/component16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final arg$2:Lo/insert;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android."

    const-string v1, "com.android."

    const-string v2, "dalvik."

    const-string v3, "java."

    const-string v4, "javax."

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/component16;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iput-object p2, p0, Lo/component16;->arg$2:Lo/insert;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lo/component16;->extraCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "null reference"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return v1

    .line 2002
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    .line 8
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/component16;

    invoke-direct {v0, p0, p1}, Lo/component16;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4000
    iget-object v0, p0, Lo/component16;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iget-object v1, p0, Lo/component16;->arg$2:Lo/insert;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$onConnectivityStateChange$3(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-void
.end method
