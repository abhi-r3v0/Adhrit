.class final synthetic Lo/enableUsingApkIndependentContext;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic extraCallback:[I

.field static final synthetic onNavigationEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    invoke-static {}, Lo/DynamiteApi;->values()[Lo/DynamiteApi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/DynamiteApi;->onPostMessage:Lo/DynamiteApi;

    invoke-virtual {v2}, Lo/DynamiteApi;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v3, Lo/DynamiteApi;->extraCallback:Lo/DynamiteApi;

    invoke-virtual {v3}, Lo/DynamiteApi;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v4, Lo/DynamiteApi;->ICustomTabsCallback:Lo/DynamiteApi;

    invoke-virtual {v4}, Lo/DynamiteApi;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v5, Lo/DynamiteApi;->onMessageChannelReady:Lo/DynamiteApi;

    invoke-virtual {v5}, Lo/DynamiteApi;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v6, Lo/DynamiteApi;->onNavigationEvent:Lo/DynamiteApi;

    invoke-virtual {v6}, Lo/DynamiteApi;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v7, Lo/DynamiteApi;->asInterface:Lo/DynamiteApi;

    invoke-virtual {v7}, Lo/DynamiteApi;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v8, Lo/DynamiteApi;->onRelationshipValidationResult:Lo/DynamiteApi;

    invoke-virtual {v8}, Lo/DynamiteApi;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v9, Lo/DynamiteApi;->onTransact:Lo/DynamiteApi;

    invoke-virtual {v9}, Lo/DynamiteApi;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->ICustomTabsCallback$Stub:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->ICustomTabsService:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->asBinder:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->ICustomTabsCallback$Stub$Proxy:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->getInterfaceDescriptor:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->newSession:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->mayLaunchUrl:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->updateVisuals:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->extraCommand:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v9, Lo/enableUsingApkIndependentContext;->extraCallback:[I

    sget-object v10, Lo/DynamiteApi;->warmup:Lo/DynamiteApi;

    invoke-virtual {v10}, Lo/DynamiteApi;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 2
    :catch_11
    invoke-static {}, Lo/DynamiteModule$LoadingException;->values()[Lo/DynamiteModule$LoadingException;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    :try_start_12
    sget-object v10, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v10}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v9, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v9}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->onMessageChannelReady:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->onNavigationEvent:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->extraCallback:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback$Stub:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->asBinder:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->asInterface:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lo/enableUsingApkIndependentContext;->onNavigationEvent:[I

    sget-object v1, Lo/DynamiteModule$LoadingException;->onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;

    invoke-virtual {v1}, Lo/DynamiteModule$LoadingException;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method
