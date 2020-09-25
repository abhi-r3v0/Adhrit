.class public final Lo/getChannelAlias;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/setAmountRefunded;

.field private static final extraCallback:Lo/setAmountRefunded;

.field public static final onNavigationEvent:[Lo/setAmountRefunded;

.field public static final onPostMessage:Lo/setAmountRefunded;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo/setAmountRefunded;

    const-string v1, "firebase_auth"

    const-wide/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getChannelAlias;->extraCallback:Lo/setAmountRefunded;

    .line 2
    new-instance v0, Lo/setAmountRefunded;

    const-wide/16 v1, 0x1

    const-string v3, "firebase_auth_aidl_migration"

    invoke-direct {v0, v3, v1, v2}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getChannelAlias;->onPostMessage:Lo/setAmountRefunded;

    .line 3
    new-instance v0, Lo/setAmountRefunded;

    const-string v3, "firebase_auth_multi_factor_auth"

    invoke-direct {v0, v3, v1, v2}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getChannelAlias;->ICustomTabsCallback:Lo/setAmountRefunded;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/setAmountRefunded;

    .line 4
    sget-object v2, Lo/getChannelAlias;->extraCallback:Lo/setAmountRefunded;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/getChannelAlias;->onPostMessage:Lo/setAmountRefunded;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/getChannelAlias;->onNavigationEvent:[Lo/setAmountRefunded;

    return-void
.end method
