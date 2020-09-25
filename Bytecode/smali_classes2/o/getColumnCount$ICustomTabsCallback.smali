.class final Lo/getColumnCount$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getColumnCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field static final onNavigationEvent:Lo/onFinish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onFinish<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lo/fJ;->ICustomTabsCallback$Stub:Lo/fJ;

    sget-object v1, Lo/fJ;->onMessageChannelReady:Lo/fJ;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ""

    .line 3
    invoke-static {v0, v3, v1, v2}, Lo/onFinish;->onNavigationEvent(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)Lo/onFinish;

    move-result-object v0

    sput-object v0, Lo/getColumnCount$ICustomTabsCallback;->onNavigationEvent:Lo/onFinish;

    return-void
.end method
