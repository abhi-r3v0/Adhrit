.class public final Lo/writeCachedSettings$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final com_mixpanel_android_slide_down:I = 0x7f020000


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/writeCachedSettings$extraCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/writeCachedSettings$extraCallback;

    invoke-direct {v0, p0}, Lo/writeCachedSettings$extraCallback;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/writeCachedSettings$extraCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getInfo()Lo/getFilesDirPath;

    move-result-object v0

    return-object v0
.end method
