.class public final Lo/doTransaction$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doTransaction;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/doTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

.field private final arg$2:Lo/CrashlyticsReportPersistence$$Lambda$6;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/doTransaction$4;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    iput-object p2, p0, Lo/doTransaction$4;->arg$2:Lo/CrashlyticsReportPersistence$$Lambda$6;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/doTransaction$4;

    invoke-direct {v0, p0, p1}, Lo/doTransaction$4;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/doTransaction$4;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    iget-object v1, p0, Lo/doTransaction$4;->arg$2:Lo/CrashlyticsReportPersistence$$Lambda$6;

    invoke-static {v0, v1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$setConfigSettingsAsync$6(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
