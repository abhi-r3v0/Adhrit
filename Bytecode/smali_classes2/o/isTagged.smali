.class public final synthetic Lo/isTagged;
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
.field public static final synthetic onNavigationEvent:[I

.field private static synthetic onPostMessage:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lo/getQueryParams;->values()[Lo/getQueryParams;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isTagged;->onPostMessage:[I

    sget-object v1, Lo/getQueryParams;->ICustomTabsCallback:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/isTagged;->onPostMessage:[I

    sget-object v1, Lo/getQueryParams;->extraCallback:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/isTagged;->onPostMessage:[I

    sget-object v1, Lo/getQueryParams;->onPostMessage:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/isTagged;->onPostMessage:[I

    sget-object v1, Lo/getQueryParams;->onNavigationEvent:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lo/getQueryParams;->values()[Lo/getQueryParams;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isTagged;->onNavigationEvent:[I

    sget-object v1, Lo/getQueryParams;->ICustomTabsCallback:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/isTagged;->onNavigationEvent:[I

    sget-object v1, Lo/getQueryParams;->extraCallback:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/isTagged;->onNavigationEvent:[I

    sget-object v1, Lo/getQueryParams;->onPostMessage:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/isTagged;->onNavigationEvent:[I

    sget-object v1, Lo/getQueryParams;->onNavigationEvent:Lo/getQueryParams;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
