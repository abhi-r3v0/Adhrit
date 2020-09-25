.class public final synthetic Lo/validatePathString;
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
.field public static final synthetic onMessageChannelReady:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lo/isValidKey$onPostMessage;->values()[Lo/isValidKey$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/validatePathString;->onMessageChannelReady:[I

    sget-object v1, Lo/isValidKey$onPostMessage;->extraCallback:Lo/isValidKey$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/validatePathString;->onMessageChannelReady:[I

    sget-object v1, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/validatePathString;->onMessageChannelReady:[I

    sget-object v1, Lo/isValidKey$onPostMessage;->ICustomTabsCallback:Lo/isValidKey$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/validatePathString;->onMessageChannelReady:[I

    sget-object v1, Lo/isValidKey$onPostMessage;->onMessageChannelReady:Lo/isValidKey$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lo/validatePathString;->onMessageChannelReady:[I

    sget-object v1, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
