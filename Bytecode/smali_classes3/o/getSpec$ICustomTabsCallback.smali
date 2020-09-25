.class public final Lo/getSpec$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getSpec$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/getSpec$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getSpec$ICustomTabsCallback;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getSpec$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-static {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$reset$7(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
