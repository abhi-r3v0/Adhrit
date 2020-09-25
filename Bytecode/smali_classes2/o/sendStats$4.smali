.class final synthetic Lo/sendStats$4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic extraCallback:[I

.field private static synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 390
    invoke-static {}, Lo/sendStats$onMessageChannelReady;->values()[Lo/sendStats$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/sendStats$4;->extraCallback:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/sendStats$onMessageChannelReady;->onMessageChannelReady:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/sendStats$4;->extraCallback:[I

    sget-object v3, Lo/sendStats$onMessageChannelReady;->onNavigationEvent:Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :catch_1
    invoke-static {}, Lo/warnOnListenerWarnings;->values()[Lo/warnOnListenerWarnings;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lo/sendStats$4;->onPostMessage:[I

    :try_start_2
    sget-object v3, Lo/warnOnListenerWarnings;->extraCallback:Lo/warnOnListenerWarnings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lo/sendStats$4;->onPostMessage:[I

    sget-object v2, Lo/warnOnListenerWarnings;->ICustomTabsCallback:Lo/warnOnListenerWarnings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
