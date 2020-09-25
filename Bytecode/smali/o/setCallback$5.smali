.class final synthetic Lo/setCallback$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic onNavigationEvent:[I

.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 261
    invoke-static {}, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->values()[Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/setCallback$5;->onPostMessage:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/setCallback$5;->onPostMessage:[I

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/setCallback$5;->onPostMessage:[I

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lo/setCallback$5;->onPostMessage:[I

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lo/setCallback$5;->onPostMessage:[I

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 243
    :catch_4
    invoke-static {}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->values()[Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lo/setCallback$5;->onNavigationEvent:[I

    :try_start_5
    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_ANY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
