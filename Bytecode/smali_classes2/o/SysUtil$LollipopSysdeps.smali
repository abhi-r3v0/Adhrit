.class final Lo/SysUtil$LollipopSysdeps;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/SoLoader$Api14Utils;

    invoke-direct {v0}, Lo/SoLoader$Api14Utils;-><init>()V

    sput-object v0, Lo/SysUtil$LollipopSysdeps;->onMessageChannelReady:Ljava/util/Iterator;

    new-instance v0, Lo/is64Bit;

    invoke-direct {v0}, Lo/is64Bit;-><init>()V

    sput-object v0, Lo/SysUtil$LollipopSysdeps;->ICustomTabsCallback:Ljava/lang/Iterable;

    return-void
.end method

.method static onMessageChannelReady()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/SysUtil$LollipopSysdeps;->ICustomTabsCallback:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic onPostMessage()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lo/SysUtil$LollipopSysdeps;->onMessageChannelReady:Ljava/util/Iterator;

    return-object v0
.end method
