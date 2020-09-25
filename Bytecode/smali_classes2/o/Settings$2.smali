.class final synthetic Lo/Settings$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic ICustomTabsCallback:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2518
    invoke-static {}, Lo/AppRequestData$onMessageChannelReady;->values()[Lo/AppRequestData$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/Settings$2;->ICustomTabsCallback:[I

    :try_start_0
    sget-object v1, Lo/AppRequestData$onMessageChannelReady;->onPostMessage:Lo/AppRequestData$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/Settings$2;->ICustomTabsCallback:[I

    sget-object v1, Lo/AppRequestData$onMessageChannelReady;->onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
