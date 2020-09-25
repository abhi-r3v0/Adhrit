.class final Lo/sendSensitive$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendSensitive$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 544
    sget-object v0, Lo/logsDebug;->ICustomTabsCallback:Lo/logsDebug;

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method
