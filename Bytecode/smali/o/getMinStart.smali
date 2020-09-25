.class public final synthetic Lo/getMinStart;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic ICustomTabsCallback:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lo/getMaxStart;->values()[Lo/getMaxStart;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getMinStart;->ICustomTabsCallback:[I

    sget-object v1, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/getMinStart;->ICustomTabsCallback:[I

    sget-object v1, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/getMinStart;->ICustomTabsCallback:[I

    sget-object v1, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/getMinStart;->ICustomTabsCallback:[I

    sget-object v1, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
