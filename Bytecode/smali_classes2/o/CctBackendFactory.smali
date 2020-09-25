.class public final Lo/CctBackendFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/SchedulingConfigModule;",
        ">;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/CctBackendFactory;


# instance fields
.field private final onMessageChannelReady:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/SchedulingConfigModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/CctBackendFactory;

    invoke-direct {v0}, Lo/CctBackendFactory;-><init>()V

    sput-object v0, Lo/CctBackendFactory;->ICustomTabsCallback:Lo/CctBackendFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lo/ExecutionModule;

    invoke-direct {v0}, Lo/ExecutionModule;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CctBackendFactory;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/SchedulingConfigModule;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/CctBackendFactory;->onMessageChannelReady:Lo/onPostExecute;

    return-void
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 2
    sget-object v0, Lo/CctBackendFactory;->ICustomTabsCallback:Lo/CctBackendFactory;

    invoke-virtual {v0}, Lo/CctBackendFactory;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SchedulingConfigModule;

    invoke-interface {v0}, Lo/SchedulingConfigModule;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 1
    sget-object v0, Lo/CctBackendFactory;->ICustomTabsCallback:Lo/CctBackendFactory;

    invoke-virtual {v0}, Lo/CctBackendFactory;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SchedulingConfigModule;

    invoke-interface {v0}, Lo/SchedulingConfigModule;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/CctBackendFactory;->onMessageChannelReady:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SchedulingConfigModule;

    return-object v0
.end method
