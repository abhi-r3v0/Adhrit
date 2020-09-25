.class final Lo/LoanStatusResponse$EmiSchedule;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Lo/LoanStatusResponse$EmiSchedule;->extraCallback(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/LoanStatusResponse$EmiSchedule;->ICustomTabsCallback:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Lo/LoanStatusResponse$EmiSchedule;->extraCallback(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/LoanStatusResponse$EmiSchedule;->onMessageChannelReady:Z

    return-void
.end method

.method static extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lo/LoanStatusResponse$EmiSchedule;->ICustomTabsCallback:Ljava/lang/Class;

    return-object v0
.end method

.method private static extraCallback(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static onMessageChannelReady()Z
    .locals 1

    sget-object v0, Lo/LoanStatusResponse$EmiSchedule;->ICustomTabsCallback:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-boolean v0, Lo/LoanStatusResponse$EmiSchedule;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
