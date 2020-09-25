.class final synthetic Lo/getAccount_type;
.super Ljava/lang/Object;


# static fields
.field static final synthetic extraCallback:[I

.field static final synthetic onMessageChannelReady:[I

.field static final synthetic onNavigationEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lo/CommonPitchItemJsonAdapter;->values()[Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getAccount_type;->onMessageChannelReady:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/CommonPitchItemJsonAdapter;->extraCallback:Lo/CommonPitchItemJsonAdapter;

    invoke-virtual {v2}, Lo/CommonPitchItemJsonAdapter;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/getAccount_type;->onMessageChannelReady:[I

    sget-object v3, Lo/CommonPitchItemJsonAdapter;->onNavigationEvent:Lo/CommonPitchItemJsonAdapter;

    invoke-virtual {v3}, Lo/CommonPitchItemJsonAdapter;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lo/DraftDataJsonAdapter;->values()[Lo/DraftDataJsonAdapter;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lo/getAccount_type;->onNavigationEvent:[I

    :try_start_2
    sget-object v3, Lo/DraftDataJsonAdapter;->onNavigationEvent:Lo/DraftDataJsonAdapter;

    invoke-virtual {v3}, Lo/DraftDataJsonAdapter;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lo/getAccount_type;->onNavigationEvent:[I

    sget-object v3, Lo/DraftDataJsonAdapter;->extraCallback:Lo/DraftDataJsonAdapter;

    invoke-virtual {v3}, Lo/DraftDataJsonAdapter;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lo/getAccount_type;->onNavigationEvent:[I

    sget-object v4, Lo/DraftDataJsonAdapter;->ICustomTabsCallback:Lo/DraftDataJsonAdapter;

    invoke-virtual {v4}, Lo/DraftDataJsonAdapter;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lo/EmiCard;->values()[Lo/EmiCard;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lo/getAccount_type;->extraCallback:[I

    :try_start_5
    sget-object v4, Lo/EmiCard;->onNavigationEvent:Lo/EmiCard;

    invoke-virtual {v4}, Lo/EmiCard;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lo/getAccount_type;->extraCallback:[I

    sget-object v3, Lo/EmiCard;->ICustomTabsCallback:Lo/EmiCard;

    invoke-virtual {v3}, Lo/EmiCard;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/getAccount_type;->extraCallback:[I

    sget-object v1, Lo/EmiCard;->extraCallback:Lo/EmiCard;

    invoke-virtual {v1}, Lo/EmiCard;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
