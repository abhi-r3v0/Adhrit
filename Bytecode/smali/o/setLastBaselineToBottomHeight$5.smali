.class final synthetic Lo/setLastBaselineToBottomHeight$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic extraCallback:[I

.field static final synthetic onMessageChannelReady:[I

.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 588
    invoke-static {}, Lo/getSupportImageTintMode;->values()[Lo/getSupportImageTintMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/setLastBaselineToBottomHeight$5;->onPostMessage:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/getSupportImageTintMode;->extraCallback:Lo/getSupportImageTintMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/setLastBaselineToBottomHeight$5;->onPostMessage:[I

    sget-object v3, Lo/getSupportImageTintMode;->onPostMessage:Lo/getSupportImageTintMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :catch_1
    invoke-static {}, Lo/setLastBaselineToBottomHeight$onTransact;->values()[Lo/setLastBaselineToBottomHeight$onTransact;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    :try_start_2
    sget-object v3, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    sget-object v3, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    sget-object v4, Lo/setLastBaselineToBottomHeight$onTransact;->extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    sget-object v4, Lo/setLastBaselineToBottomHeight$onTransact;->onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    sget-object v4, Lo/setLastBaselineToBottomHeight$onTransact;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 272
    :catch_6
    invoke-static {}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->values()[Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lo/setLastBaselineToBottomHeight$5;->extraCallback:[I

    :try_start_7
    sget-object v4, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lo/setLastBaselineToBottomHeight$5;->extraCallback:[I

    sget-object v3, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/setLastBaselineToBottomHeight$5;->extraCallback:[I

    sget-object v1, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->extraCallback:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
