.class public final Lo/getInformation;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/setAmountRefunded;

.field public static final extraCallback:Lo/setAmountRefunded;

.field public static final onMessageChannelReady:Lo/setAmountRefunded;

.field public static final onNavigationEvent:[Lo/setAmountRefunded;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo/setAmountRefunded;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getInformation;->ICustomTabsCallback:Lo/setAmountRefunded;

    .line 2
    new-instance v0, Lo/setAmountRefunded;

    const-string v1, "sms_retrieve"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getInformation;->extraCallback:Lo/setAmountRefunded;

    .line 3
    new-instance v0, Lo/setAmountRefunded;

    const-string v1, "user_consent"

    const-wide/16 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lo/setAmountRefunded;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/getInformation;->onMessageChannelReady:Lo/setAmountRefunded;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/setAmountRefunded;

    .line 4
    sget-object v2, Lo/getInformation;->ICustomTabsCallback:Lo/setAmountRefunded;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/getInformation;->extraCallback:Lo/setAmountRefunded;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/getInformation;->onNavigationEvent:[Lo/setAmountRefunded;

    return-void
.end method
