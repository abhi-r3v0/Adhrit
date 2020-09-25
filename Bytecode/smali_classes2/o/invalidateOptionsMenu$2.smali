.class final synthetic Lo/invalidateOptionsMenu$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/invalidateOptionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic ICustomTabsCallback:[I

.field static final synthetic extraCallback:[I

.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 197
    invoke-static {}, Lo/addCustomAction;->values()[Lo/addCustomAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    sget-object v3, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    sget-object v4, Lo/addCustomAction;->extraCallback:Lo/addCustomAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    sget-object v5, Lo/addCustomAction;->onMessageChannelReady:Lo/addCustomAction;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    sget-object v6, Lo/addCustomAction;->ICustomTabsCallback:Lo/addCustomAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 155
    :catch_4
    invoke-static {}, Lo/getPlaybackSpeed;->values()[Lo/getPlaybackSpeed;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lo/invalidateOptionsMenu$2;->onPostMessage:[I

    :try_start_5
    sget-object v6, Lo/getPlaybackSpeed;->onNavigationEvent:Lo/getPlaybackSpeed;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lo/invalidateOptionsMenu$2;->onPostMessage:[I

    sget-object v6, Lo/getPlaybackSpeed;->onPostMessage:Lo/getPlaybackSpeed;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 89
    :catch_6
    invoke-static {}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->values()[Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    :try_start_7
    sget-object v6, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    sget-object v5, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lo/invalidateOptionsMenu$2;->extraCallback:[I

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
